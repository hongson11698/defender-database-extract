-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000f74_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONOPEN then
  local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME))
  local l_0_2 = (string.len)(l_0_1) - 4
  if (string.sub)(l_0_1, -4) == ".exe" and l_0_2 >= 5 and l_0_2 <= 7 then
    local l_0_3 = (string.sub)(l_0_1, 1, l_0_2)
    local l_0_4 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
    local l_0_5 = (string.reverse)((string.sub)(l_0_4, -l_0_2))
    if l_0_3 == l_0_5 and (mp.get_contextdata)(mp.CONTEXT_DATA_FILE_ATTRIBUTES) == 7 then
      (mp.set_mpattribute)("Lua:VobfusFileDrop")
    end
  end
end
do
  return mp.CLEAN
end

