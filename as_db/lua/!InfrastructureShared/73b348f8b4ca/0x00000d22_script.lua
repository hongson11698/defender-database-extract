-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\73b348f8b4ca\0x00000d22_luac 

-- params : ...
-- function num : 0
do
  if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 ~= nil then
    local l_0_0 = ((this_sigattrlog[3]).utf8p2):match("filepath:(.+)")
    if not l_0_0 then
      return mp.CLEAN
    end
    ;
    (bm.add_related_file)(l_0_0)
    AddResearchData("BM", true)
    return mp.INFECTED
  end
  return mp.CLEAN
end

