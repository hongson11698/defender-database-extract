-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaXslJscriptCdataA\0x00000e13_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 >= 65536 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_1 = (mp.readfile)(0, l_0_0)
local l_0_2 = (string.match)(l_0_1, "<!%[CDATA%[(.-)%]%]>%s-</ms.-:script>")
if l_0_2 then
  (mp.vfo_add_buffer)(l_0_2, "[CdataScript]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
end
return mp.CLEAN

