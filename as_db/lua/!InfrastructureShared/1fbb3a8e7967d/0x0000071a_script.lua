-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\1fbb3a8e7967d\0x0000071a_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.match)((this_sigattrlog[7]).utf8p2, "regionsize:(%d+)")
if not l_0_0 then
  return mp.CLEAN
end
if tonumber(l_0_0) < 1024 then
  return mp.CLEAN
end
local l_0_1 = (bm.get_current_process_startup_info)()
local l_0_2 = (this_sigattrlog[9]).utf8p1 .. ";" .. (this_sigattrlog[9]).utf8p2
AppendToRollingQueue("InjectionRelationship", l_0_1.ppid, l_0_2, 3600, 1000, 0)
local l_0_3 = (this_sigattrlog[7]).utf8p2
;
(bm.trigger_sig)("BMGenCodeInjector.E", l_0_2 .. ";" .. l_0_3 .. ";" .. tostring((bm.get_sig_count)()))
return mp.CLEAN

