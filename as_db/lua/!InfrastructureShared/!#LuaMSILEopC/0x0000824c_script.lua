-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaMSILEopC\0x0000824c_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)()
if l_0_0 ~= nil then
  l_0_0 = (string.lower)(l_0_0)
  local l_0_1 = (string.sub)(l_0_0, -4)
  if l_0_0:match("%->.+/") or l_0_0:match("%->.+\\") or l_0_0:match("%->.+%.cab%->") then
    return mp.CLEAN
  end
  if l_0_1 == ".exe" or l_0_1 == ".scr" or l_0_1 == ".com" then
    local l_0_2 = {}
    -- DECOMPILER ERROR at PC55: No list found for R2 , SetList fails

    -- DECOMPILER ERROR at PC56: Overwrote pending register: R3 in 'AssignReg'

    local l_0_3 = "ALF:Trojan:MSIL/"
    -- DECOMPILER ERROR at PC57: Overwrote pending register: R4 in 'AssignReg'

    -- DECOMPILER ERROR at PC58: Overwrote pending register: R5 in 'AssignReg'

    for l_0_7,l_0_8 in ("SLF:Trojan:MSIL/")("ALF:JASYP:Trojan:MSIL/") do
      -- DECOMPILER ERROR at PC61: Overwrote pending register: R9 in 'AssignReg'

      -- DECOMPILER ERROR at PC63: Overwrote pending register: R10 in 'AssignReg'

      local l_0_9 = (("ALF:HSTR:Trojan:MSIL").enum_mpattributesubstring)("Lowfi:HSTR:Win32/AgileDotNetObfuscator")
      -- DECOMPILER ERROR at PC68: Overwrote pending register: R11 in 'AssignReg'

      if l_0_9 ~= nil and type("ALF:TrojanDownloader:MSIL") == "table" and l_0_3 >= 2 then
        return mp.INFECTED
      end
    end
    local l_0_10 = {}
    -- DECOMPILER ERROR at PC89: Overwrote pending register: R12 in 'AssignReg'

    -- DECOMPILER ERROR at PC90: Overwrote pending register: R13 in 'AssignReg'

    -- DECOMPILER ERROR at PC91: Overwrote pending register: R14 in 'AssignReg'

    -- DECOMPILER ERROR at PC92: Overwrote pending register: R15 in 'AssignReg'

    -- DECOMPILER ERROR at PC93: No list found for R4 , SetList fails

    -- DECOMPILER ERROR at PC94: Overwrote pending register: R5 in 'AssignReg'

    local l_0_11 = "HSTR:Trojan:MSIL"
    -- DECOMPILER ERROR at PC95: Overwrote pending register: R6 in 'AssignReg'

    -- DECOMPILER ERROR at PC96: Overwrote pending register: R7 in 'AssignReg'

    for l_0_15,l_0_16 in ("Packed:Confuser")("HSTR:MSIL/") do
      -- DECOMPILER ERROR at PC99: Overwrote pending register: R11 in 'AssignReg'

      -- DECOMPILER ERROR at PC101: Overwrote pending register: R12 in 'AssignReg'

      local l_0_17 = (("Lowfi:HSTR:Win32").enum_mpattributesubstring)("ALF:HackTool:MSIL")
      -- DECOMPILER ERROR at PC106: Overwrote pending register: R13 in 'AssignReg'

      if l_0_17 ~= nil and type("SIGATTR:VirTool:MSIL") == "table" then
        if l_0_3 == 0 and l_0_11 >= 3 then
          return mp.INFECTED
        else
          if l_0_3 == 1 and l_0_11 >= 2 then
            return mp.INFECTED
          end
        end
      end
    end
  end
end
do
  do
    -- DECOMPILER ERROR at PC130: Overwrote pending register: R1 in 'AssignReg'

    do return l_0_1 end
    -- WARNING: undefined locals caused missing assignments!
  end
end

