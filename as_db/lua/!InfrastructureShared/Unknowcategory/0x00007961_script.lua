-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007961_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("//RPF:IS_Pdf") then
  local l_0_0 = (mp.getfilesize)()
  if l_0_0 < 20000 then
    return mp.CLEAN
  end
  if l_0_0 > 50000 then
    return mp.CLEAN
  end
  ;
  (mp.readprotection)(false)
  local l_0_1 = (mp.readfile)(0, l_0_0)
  if l_0_1:match("/URI %(http%://usaa%.com%-sec%-inet%-auth%-logon%-ent%-logon%-logon%-") then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

