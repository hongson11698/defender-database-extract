-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000079f9_luac 

-- params : ...
-- function num : 0
local l_0_0 = ""
if (this_sigattrlog[7]).matched then
  l_0_0 = (this_sigattrlog[7]).utf8p2
else
  if (this_sigattrlog[8]).matched then
    l_0_0 = (this_sigattrlog[8]).utf8p2
  else
    if (this_sigattrlog[9]).matched then
      l_0_0 = (this_sigattrlog[9]).utf8p2
    else
      if (this_sigattrlog[10]).matched then
        l_0_0 = (this_sigattrlog[10]).utf8p2
      end
    end
  end
end
if l_0_0 ~= nil and l_0_0 ~= "" and (sysio.IsFileExists)(l_0_0) then
  (bm.add_related_file)(l_0_0)
  return mp.INFECTED
end
return mp.CLEAN

