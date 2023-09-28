-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000059ed_luac 

-- params : ...
-- function num : 0
local l_0_0 = (this_sigattrlog[3]).utf8p1
if l_0_0 ~= nil and (sysio.IsFileExists)(l_0_0) then
  (bm.add_related_file)(l_0_0)
end
return mp.INFECTED

