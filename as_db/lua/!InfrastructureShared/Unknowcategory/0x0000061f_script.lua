-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000061f_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_imagepath)()
if l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = nil
do
  if (string.find)(l_0_0, "/cp", -3, true) or (string.find)(l_0_0, "/mv", -3, true) or (string.find)(l_0_0, "/wget", -5, true) or (string.find)(l_0_0, "/curl", -5, true) then
    local l_0_2 = (mp.GetParentProcInfo)()
    if l_0_2 ~= nil and l_0_2.ppid ~= nil then
      l_0_1 = l_0_2.ppid
    end
  end
  local l_0_3 = nil
  if l_0_1 then
    _ = (bm.get_process_relationships)(l_0_1)
  else
    -- DECOMPILER ERROR at PC67: Overwrote pending register: R2 in 'AssignReg'

    _ = (bm.get_process_relationships)()
  end
  for l_0_7,l_0_8 in ipairs(l_0_3) do
    (bm.trigger_sig)("BmTraverseTreeBlock", "Detected", l_0_8.ppid)
  end
  return mp.INFECTED
end

