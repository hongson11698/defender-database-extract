-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000747a_luac 

-- params : ...
-- function num : 0
local l_0_0 = (this_sigattrlog[5]).wp1
for l_0_4 = mp.SIGATTR_LOG_SZ, 1, -1 do
  if ((sigattr_tail[l_0_4]).attribute == 16384 or (sigattr_tail[l_0_4]).attribute == 16385) and (sigattr_tail[l_0_4]).wp1 == l_0_0 then
    (bm.add_related_file)(l_0_0)
    return mp.INFECTED
  end
end
return mp.CLEAN

