-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000e75_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
local l_0_1, l_0_2 = l_0_0:match("(.+\\)([^\\]+)$")
if l_0_2 == nil then
  return mp.CLEAN
end
do
  if l_0_2:len() == 36 then
    local l_0_3, l_0_4 = l_0_1:match("(.+\\)(.+)\\$")
    if l_0_4:len() == 32 and l_0_2:match("%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x.exe") and l_0_4:match("%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x") then
      (mp.set_mpattribute)("LUA:Wajam:Path")
    end
  end
  return mp.CLEAN
end

