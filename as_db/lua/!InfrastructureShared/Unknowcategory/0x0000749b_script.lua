-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000749b_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
do
  if l_0_0 ~= nil then
    local l_0_1 = (string.lower)(l_0_0.image_path)
    if l_0_1:match("([^\\]+)$") == "wmiprvse.exe" or l_0_1:match("([^\\]+)$") == "mshta.exe" or l_0_1:match("([^\\]+)$") == "rundll32.exe" or l_0_1:match("([^\\]+)$") == "wscript.exe" then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

