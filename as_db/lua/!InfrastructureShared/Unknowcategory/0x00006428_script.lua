-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006428_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
do
  if l_0_0 ~= nil then
    local l_0_1 = (string.lower)((string.sub)(l_0_0.image_path, -12))
    if l_0_1 == "wmiprvse.exe" or l_0_1 == "services.exe" then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

