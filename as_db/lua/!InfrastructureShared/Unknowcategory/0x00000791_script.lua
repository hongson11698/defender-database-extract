-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000791_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
do
  if l_0_0 ~= nil then
    local l_0_1 = (string.lower)(l_0_0.image_path)
    if (string.find)(l_0_1, ":\\Windows\\system32\\cscript.exe", 2, true) or (string.find)(l_0_1, ":\\program files\\rapid7\\insight agent\\components\\insight_agent\\.*\\ir_agent.exe", 2, false) then
      return mp.CLEAN
    end
  end
  return mp.INFECTED
end

