-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\1afb32a91e81c\0x00000589_luac 

-- params : ...
-- function num : 0
do
  if (this_sigattrlog[8]).matched and (this_sigattrlog[8]).utf8p2 ~= nil then
    local l_0_0 = ((this_sigattrlog[8]).utf8p2):match("remoteshare_(.+)")
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

