-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000090f_luac 

-- params : ...
-- function num : 0
do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil then
    local l_0_0 = (string.lower)((this_sigattrlog[1]).utf8p1)
    if (string.find)(l_0_0, ".htaccess", 1, true) then
      return mp.CLEAN
    end
    if (sysio.IsFileExists)(l_0_0) then
      (bm.add_related_file)(l_0_0)
    end
  end
  return mp.INFECTED
end

