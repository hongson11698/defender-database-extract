-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\175d79b667c23\0x00000717_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 ~= nil then
  local l_0_1 = (string.lower)(l_0_0.image_path)
  local l_0_2 = l_0_1:match("([^\\]+)$")
  local l_0_3 = {}
  l_0_3["iexplore.exe"] = true
  l_0_3["edge.exe"] = true
  l_0_3["msedge.exe"] = true
  if l_0_3[l_0_2] then
    return mp.LOWFI
  end
end
do
  return mp.CLEAN
end

