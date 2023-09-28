-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#QakbotURLFeatureExtraction\0x00000fb5_luac 

-- params : ...
-- function num : 0
local l_0_0 = {}
local l_0_1 = 0
local l_0_2 = tostring(headerpage) .. tostring(footerpage)
if l_0_2 ~= nil then
  for l_0_6 in (string.gmatch)(l_0_2, "(https?://[-a-zA-Z0-9@:%._/+~#=]*)") do
    if l_0_6 ~= nil and not l_0_0[l_0_6] then
      l_0_1 = l_0_1 + 1
      ;
      (mp.set_mpattribute)("MpInternal_researchdata=powershelluri=" .. l_0_6)
      l_0_0[l_0_6] = true
    end
  end
end
do
  if l_0_1 > 8 then
    (mp.set_mpattribute)("Found:" .. l_0_1 .. "urls")
    ;
    (mp.set_mpattribute)("GE8URLsFound")
  else
    if l_0_1 > 2 then
      (mp.set_mpattribute)("Found:" .. l_0_1 .. "urls")
      ;
      (mp.set_mpattribute)("GE3URLsFound")
    end
  end
  return mp.CLEAN
end

