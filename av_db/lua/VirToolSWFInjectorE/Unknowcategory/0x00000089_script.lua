-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\VirToolSWFInjectorE\Unknowcategory\0x00000089_luac 

-- params : ...
-- function num : 0
if (mp.bitand)((mp.readu_u32)(headerpage, 1), 16777215) ~= 5461830 then
  return mp.CLEAN
end
local l_0_0 = {}
l_0_0["SCRIPT:FlashExp_90eb7133c9"] = 3
l_0_0["SCRIPT:FlashExp_241c61c3e8"] = 3
l_0_0["SCRIPT:FlashExp_21212121212121212121"] = 2
l_0_0["SCRIPT:FlashExp_90909090909090909090"] = 2
l_0_0["SCRIPT:FlashExp_loadbytes"] = 1
l_0_0["SCRIPT:FlashExp_enter_frame"] = 1
l_0_0["SCRIPT:FlashExp_gotoandplay"] = 1
l_0_0["SCRIPT:FlashExp_readunsignedbyte"] = 1
l_0_0["SCRIPT:FlashExp_writebyte"] = 1
local l_0_1 = 0
for l_0_5,l_0_6 in pairs(l_0_0) do
  if (mp.get_mpattribute)(l_0_5) then
    l_0_1 = l_0_1 + l_0_6
  end
end
if l_0_1 >= 10 then
  return mp.INFECTED
end
return mp.CLEAN

