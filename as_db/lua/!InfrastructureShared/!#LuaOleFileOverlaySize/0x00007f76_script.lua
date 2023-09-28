-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaOleFileOverlaySize\0x00007f76_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 4194304 then
  return mp.CLEAN
end
local l_0_1 = (mp.get_mpattributevalue)("RPF:OleFileHasOverlay")
if l_0_1 == nil or l_0_1 < 256 then
  return mp.CLEAN
end
local l_0_2 = l_0_0 - l_0_1
if l_0_2 >= 268435456 then
  (mp.set_mpattribute)("Lua:OLEOverlayGT256mb")
else
  if l_0_2 >= 104857600 then
    (mp.set_mpattribute)("Lua:OLEOverlayGT100mb")
  else
    if l_0_2 >= 16777216 then
      (mp.set_mpattribute)("Lua:OLEOverlayGT16mb")
    end
  end
end
local l_0_3 = l_0_2 / l_0_1
if l_0_3 >= 1000 then
  (mp.set_mpattribute)("Lua:OLEOverlayGT1000xFileSize")
else
  if l_0_3 >= 100 then
    (mp.set_mpattribute)("Lua:OLEOverlayGT100xFileSize")
  else
    if l_0_3 >= 10 then
      (mp.set_mpattribute)("Lua:OLEOverlayGT10xFileSize")
    end
  end
end
return mp.CLEAN

