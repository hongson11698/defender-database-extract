-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\d678b9b51\0x00007b11_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("RPF:PWS:Win32/Simda.gen!B") or ((peattributes.executes_from_dynamic_memory and peattributes.suspicious_image_version and pehdr.SizeOfImage >= 1048576 and pehdr.SizeOfImage <= 5242880) or pehdr.SizeOfImage < 655360 or pehdr.SizeOfImage <= 851968) then
  (mp.changedetectionname)(805306411)
  return mp.INFECTED
end
return mp.SUSPICIOUS

