-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007cc4_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("InEmail") then
  local l_0_0 = (mp.get_parent_filehandle)()
  ;
  (mp.readprotection)(false)
  local l_0_1 = (mp.GetNormalizedScript)((mp.readfile_by_handle)(l_0_0, 0, 8192))
  ;
  (mp.readprotection)(true)
  local l_0_2, l_0_3 = (string.gsub)(l_0_1, "%<meta", "", 4)
  local l_0_4, l_0_5 = (string.gsub)(l_0_1, "%<pclass=", "", 4)
  if l_0_3 < 3 and l_0_5 < 3 then
    (mp.set_mpattribute)("SCRIPT:JS/ObfusScript_C.guardpassed")
  end
end
do
  return mp.INFECTED
end

