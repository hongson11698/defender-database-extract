import struct
import sys
import io
import os
import subprocess
import csv
class LuaConst(object):
    "Stand for Lua constants"
    def __init__(self, value):
        self.value = value

    def __repr__(self):
        return "<%s %s>" % (self.__class__, self.value)

class LuaConstNil(LuaConst):
    pass

class LuaConstByte(LuaConst):
    pass

class LuaConstNumber(LuaConst):
    pass

class LuaConstString(LuaConst):
    pass

class LuaFunc(object):
    "Converter"
    index_stream = 0
    def read_byte(self):
        self.index_stream += 1
        return struct.unpack("B", self.stream.read(1))[0]

    def read_int(self):
        self.index_stream += 4
        return struct.unpack("<I", self.stream.read(4))[0]
    
    def __init__(self, stream):
        """
        @stream: I/O like object
        """
        self.stream = stream
        src_name = stream.read(4)
        #assert src_name == b"\x00" * 4
        line_def = stream.read(4)
        #print(line_def)
        #assert line_def == b"\x00" * 4
        lastline_def = stream.read(4)
        #assert lastline_def == b"\x00" * 4
        self.index_stream += 4*3
        self.nb_upvalues = self.read_byte()
        self.nb_params = self.read_byte()
        self.is_vararg = self.read_byte()
        self.max_stacksize = self.read_byte()

        self.nb_instr = self.read_int()

        self.instrs = stream.read(4 * self.nb_instr)
        self.index_stream += 4 * self.nb_instr

        self.nb_const = self.read_int()

        self.consts = []
        i = 0
        for i in range(self.nb_const):
            cst_type = self.read_byte()
            if cst_type == 4:
                # String
                length = self.read_int()
                self.consts.append(LuaConstString(stream.read(length)))
                self.index_stream += length
            elif cst_type == 3:
                # Int
                self.index_stream += 8

                self.consts.append(LuaConstNumber(struct.unpack("<q", stream.read(8))[0]))
            elif cst_type == 1:
                # Byte
                self.consts.append(LuaConstByte(self.read_byte()))
            elif cst_type == 0:
                # NIL
                self.consts.append(LuaConstNil(0))
            else:
                raise RuntimeError("Unimplemented")

        nb_func = self.read_int()

        self.funcs = []
        for i in range(nb_func):
            self.funcs.append(LuaFunc(stream))

        src_line_positions = self.read_int()
        #assert src_line_positions == 0
        nb_locals = self.read_int()
        #assert nb_locals == 0
        nb_upvalues = self.read_int()
        #assert nb_upvalues == 0

    def export(self, root=False):
        """
        Returns the bytes of the newly created Lua precompiled script
        If @root is set, prepend a Lua header
        """
        out = []
        if root:
            out.append(b'\x1bLuaQ\x00\x01\x04\x08\x04\x08\x00')
        out.append(b"\x00" * 0x10)
        out.append(struct.pack("BBBB", self.nb_upvalues, self.nb_params, self.is_vararg, self.max_stacksize))
        out.append(struct.pack("<I", self.nb_instr))
        out.append(self.instrs)
        out.append(struct.pack("<I", self.nb_const))
        for cst in self.consts:
            if isinstance(cst, LuaConstNil):
                out.append(struct.pack("B", 0))
            elif isinstance(cst, LuaConstByte):
                out.append(struct.pack("BB", 1, cst.value))
            elif isinstance(cst, LuaConstNumber):
                out.append(struct.pack("<B", 3))
                
                # HACK-ISH
                # Convert int to double for decompiler
                out.append(struct.pack("<d", cst.value))
            else:
                assert isinstance(cst, LuaConstString)
                out.append(struct.pack("<BQ", 4, len(cst.value)))
                out.append(cst.value)

        out.append(struct.pack("<I", len(self.funcs)))
        for func in self.funcs:
            out.append(func.export(root=False))
        
        # No debug info
        out.append(struct.pack("<III", 0, 0, 0))

        return b"".join(out)

def convert_lua(out, data):
    # Header + some info hardcoded (int size, endianess, etc.)
    # MpEngine actually checks that these values are always the same
    header = b'\x1bLuaQ\x00\x01\x04\x08\x04\x08\x01'
    # header = \x1bLuaQ\x00\x01\x04\x08\x04\x08\x00
    index = 0
    while index < len(data):
        if (data[index] == 0x1b):
            if (bytearray(data[index:index+12]) == header):
                break
        
        index += 1
    try:
        #print("parse idx %d: %s" % (index, str(data[index+12:100])))
        f = io.BytesIO(data[index+12:])
        func = LuaFunc(f)
        f.close()
        export = func.export(root=True)
        open(out, "wb").write(export)
    except:
        return False
    return True

def decompile(infile, outscript):
    result = subprocess.run(['luadec.exe', infile], capture_output=True)
    with open(outscript, "wb") as f:
        f.write(result.stdout)
    return


def cleanFilename(sourcestring,  removestring ="\"|%:/,.\\[]<>*?") :
    return ''.join([c for c in sourcestring if c not in removestring])

index = 0
decompile_files = 0
error_files = 0
infile = sys.argv[1]
print("Parsing \"%s\" ..." % infile)
indir = os.path.dirname(infile)
csv.field_size_limit(100000000)
with open(infile, 'r') as file:
    csvreader = csv.reader(file)
    for row in csvreader:
        if index == 0:
            index += 1
            continue
        threat = cleanFilename(row[0])
        attr = row[1]
        catagory = cleanFilename(row[2])
        size = row[3]
        data = bytes.fromhex(row[4])

        out_dir = os.path.join(indir, "lua", threat, catagory)
        os.makedirs(out_dir, exist_ok=True)
        out_file = os.path.join(out_dir, "0x%08x_luac" % index)
        
        if (convert_lua(out_file, data)):
            out_script = os.path.join(out_dir, "0x%08x_script.lua" % index)
            decompile(out_file, out_script)
            decompile_files += 1
        else:        
            error_files += 1
            if (len(os.listdir(out_dir)) == 0):
                os.rmdir(out_dir)

        index += 1

print("Total: %d lua script" % (index-1))
print("Decompiled: %d" % (decompile_files))
print("error convert: %d" % (error_files))

# lua_sig_parser_decompile.py 
# from https://github.com/commial/experiments/blob/master/windows-defender/lua/parse.py