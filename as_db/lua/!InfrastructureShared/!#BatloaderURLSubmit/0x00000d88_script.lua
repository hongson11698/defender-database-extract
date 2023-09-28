-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#BatloaderURLSubmit\0x00000d88_luac 

-- params : ...
-- function num : 0
local l_0_0 = {}
local l_0_1 = tostring(headerpage) .. tostring(footerpage)
if l_0_1 ~= nil then
  for l_0_5 in (string.gmatch)(l_0_1, "(https?://[A-Za-z0-9./]+)/%?servername=msi") do
    if l_0_5 ~= nil and not l_0_0[l_0_5] then
      (mp.set_mpattribute)("MpInternal_researchdata=batloaderuri=" .. l_0_5)
      l_0_0[l_0_5] = true
    end
  end
end
do
  return mp.CLEAN
end

