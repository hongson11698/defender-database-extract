-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000641f_luac 

-- params : ...
-- function num : 0
do
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
    local l_0_0 = (this_sigattrlog[2]).utf8p2
    if (sysio.IsFileExists)(l_0_0) then
      (bm.add_related_file)(l_0_0)
    end
  end
  return mp.INFECTED
end

