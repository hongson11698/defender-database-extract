-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaWebsiteFileHasIOAVURL\0x00000f83_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
if l_0_0:len() > 8 and (string.sub)(l_0_0, -8) == ".website" then
  if (mp.get_mpattribute)("RPF:TopLevelFile") then
    (mp.set_mpattribute)("Lua:WebsiteFileHasIOAVURL")
  else
    ;
    (mp.set_mpattribute)("Lua:WebsiteChildFileHasIOAVURL")
  end
else
  if l_0_0:len() > 10 and (string.sub)(l_0_0, -10) == ".appref-ms" then
    if (mp.get_mpattribute)("RPF:TopLevelFile") then
      (mp.set_mpattribute)("Lua:ApprefFileHasIOAVURL")
    else
      ;
      (mp.set_mpattribute)("Lua:ApprefChildFileHasIOAVURL")
    end
  end
end
return mp.CLEAN

