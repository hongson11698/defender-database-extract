-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007ca1_luac 

-- params : ...
-- function num : 0
do
  if (mp.get_mpattribute)("PACKED_WITH:[CMDEmbedded]") then
    local l_0_0 = tostring(headerpage)
    l_0_0 = (string.lower)(l_0_0:gsub("`", "", 100))
    if (string.find)(l_0_0, "new-object", 1, true) or (string.find)(l_0_0, "webclient", 1, true) or (string.find)(l_0_0, "newscriptblock", 1, true) or (string.find)(l_0_0, "executioncontext", 1, true) then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

