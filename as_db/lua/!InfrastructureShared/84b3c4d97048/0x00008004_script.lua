-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\84b3c4d97048\0x00008004_luac 

-- params : ...
-- function num : 0
local l_0_0 = this_sigattrlog[3]
if not l_0_0.matched or not l_0_0.ppid or not l_0_0.utf8p2 then
  return mp.CLEAN
end
local l_0_1 = (string.format)("DetectedRegions:%s", l_0_0.ppid)
local l_0_2 = GetRollingQueue(l_0_1)
if not l_0_2 or type(l_0_2) ~= "table" then
  return mp.CLEAN
end
local l_0_3 = 0
for l_0_7,l_0_8 in ipairs(l_0_2) do
  local l_0_9 = 32768
  for l_0_13 = 1, #l_0_8.value, l_0_9 do
    l_0_3 = l_0_3 + 1
    local l_0_14 = (string.format)("f09d0e89_%d", l_0_3)
    local l_0_15 = (string.sub)(l_0_8.value, l_0_13, l_0_13 + l_0_9 - 1)
    ;
    (bm.add_related_string)(l_0_14, l_0_15, bm.RelatedStringBMReport)
  end
  if l_0_3 == 0 then
    return mp.CLEAN
  end
  l_0_3 = l_0_3 + 1
  local l_0_16 = (string.format)("f09d0e89_%d", l_0_3)
  ;
  (bm.add_related_string)(l_0_16, ";", bm.RelatedStringBMReport)
end
if l_0_3 == 0 then
  return mp.CLEAN
end
;
(bm.add_related_string)("d9f18702", l_0_0.utf8p2, bm.RelatedStringBMReport)
return mp.INFECTED

