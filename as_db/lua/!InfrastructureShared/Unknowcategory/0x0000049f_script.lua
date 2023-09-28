-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000049f_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[5]).matched and (this_sigattrlog[5]).utf8p2 ~= nil then
  local l_0_0 = (string.lower)((this_sigattrlog[5]).utf8p2)
  local l_0_1 = l_0_0:match("/c ([^\\].*)")
  if l_0_1 ~= nil and (sysio.IsFileExists)(l_0_1) then
    (bm.add_related_file)(l_0_1)
  end
end
do
  return mp.INFECTED
end

