-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaIOAVVHDFile\0x00007f16_luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("RPF:TopLevelFile") and (mp.get_mpattribute)("BM_VHD_FILE") and not (mp.get_mpattribute)("//Lua:GIOAVFirstVHDFileInContainer") then
  (mp.set_mpattribute)("Lua:IOAVFirstVHDFileInContainer")
  ;
  (mp.set_mpattribute)("//Lua:GIOAVFirstVHDFileInContainer")
end
if (mp.get_mpattribute)("Lua:VhdxFile") and not (mp.get_mpattribute)("//Lua:GIOAVFirstVHDXFileInContainer") then
  (mp.set_mpattribute)("Lua:IOAVFirstVHDXFileInContainer")
  ;
  (mp.set_mpattribute)("//Lua:GIOAVFirstVHDXFileInContainer")
end
if (mp.get_mpattribute)("BM_VHD_FILE") then
  (mp.set_mpattribute)("Lua:IOAVTopLevelVHDFile")
  ;
  (mp.set_mpattribute)("//Lua:GIOAVTopLevelVHDFile")
end
return mp.CLEAN

