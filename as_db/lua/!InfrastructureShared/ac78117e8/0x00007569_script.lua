-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\ac78117e8\0x00007569_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("HSTR:Win32/Kernel32_via_PEB") and peattributes.executes_from_dynamic_memory and pehdr.SizeOfImage >= 196608 and pehdr.SizeOfImage <= 5242880 then
  (mp.changedetectionname)(805306470)
  return mp.INFECTED
end
return mp.SUSPICIOUS

