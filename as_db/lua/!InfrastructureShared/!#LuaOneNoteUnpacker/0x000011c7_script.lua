-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaOneNoteUnpacker\0x000011c7_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
local l_0_1 = ""
local l_0_2 = {}
if l_0_0 > 5120000 then
  return mp.CLEAN
end
local l_0_3 = {}
l_0_3.pe = "\231\022ã½e&\017E¤ÄM\vz¬\144\001\020MZ\144\000"
l_0_3.lnk = "\231\022ã½e&\017E¤ÄM\vz¬\144\001\020L\000\000\000\144\000"
l_0_3.script = "\231\022ã½e&\017E¤ÄM\vz¬\144\002\255\144\023\n\b\b\006\006\006\006\n\004\016\016On Erroron errorScriptscriptSCRIPT<html>powershell#@~^<HTA:APPLICATION<hta:application\144\000"
l_0_3.bat = "\231\022ã½e&\017E¤ÄM\vz¬\144\001\020\144\023\002\005\005@echo@ECHO\144\000"
l_0_3.chm = "\231\022ã½e&\017E¤ÄM\vz¬\144\001\020ITSF\144\000"
for l_0_7,l_0_8 in next do
  local l_0_9, l_0_10 = pcall(mp.BMSearchFile, 0, l_0_0, l_0_8)
  if l_0_9 and l_0_10 ~= -1 then
    (mp.set_mpattribute)("//Lua:OneNoteFileData")
    ;
    (mp.readprotection)(false)
    local l_0_11 = 36
    if l_0_10 + l_0_11 < l_0_0 then
      local l_0_12 = (mp.readfile)(l_0_10, l_0_11)
      local l_0_13 = (mp.readu_u64)(l_0_12, 17)
      if l_0_10 + l_0_11 + l_0_13 < l_0_0 then
        local l_0_14 = (mp.readfile)(l_0_10 + l_0_11, l_0_13)
        ;
        (mp.readprotection)(true)
        local l_0_15 = (crypto.Sha1Buffer)(l_0_14, 0, #l_0_14)
        if not in_array(l_0_2, l_0_15) then
          l_0_2[#l_0_2 + 1] = l_0_15
          if l_0_7 == "pe" then
            l_0_1 = "PE"
            ;
            (mp.set_mpattribute)("//Lua:OneNoteFileDataPE")
          else
            if l_0_7 == "bat" or l_0_7 == "bat1" then
              l_0_1 = "BAT"
              ;
              (mp.set_mpattribute)("//Lua:OneNoteFileDataBAT")
            else
              if l_0_7 == "script" then
                l_0_1 = "SCRIPT"
                ;
                (mp.set_mpattribute)("//Lua:OneNoteFileDataSCRIPT")
              else
                if l_0_7 == "chm" then
                  l_0_1 = "CHM"
                  ;
                  (mp.set_mpattribute)("//Lua:OneNoteFileDataCHM")
                else
                  if l_0_7 == "lnk" then
                    l_0_1 = "LNK"
                    ;
                    (mp.set_mpattribute)("//Lua:OneNoteFileDataLNK")
                  end
                end
              end
            end
          end
          ;
          (mp.vfo_add_buffer)(l_0_14, "[ONENOTE_FILEDATA_" .. l_0_1 .. "]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
        end
      end
    end
  end
end
return mp.CLEAN

