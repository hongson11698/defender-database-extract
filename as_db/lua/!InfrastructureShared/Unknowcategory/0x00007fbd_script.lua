-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007fbd_luac 

-- params : ...
-- function num : 0
local l_0_0 = nil
local l_0_1 = nil
if (string.sub)((string.lower)((bm.get_imagepath)()), -13) == "\\sqlservr.exe" or (string.sub)((string.lower)((bm.get_imagepath)()), -13) == "\\sqlagent.exe" then
  l_0_1 = true
end
if not l_0_1 then
  local l_0_2, l_0_3 = , (bm.get_process_relationships)()
  for l_0_7,l_0_8 in ipairs(l_0_3) do
    local l_0_4 = nil
    -- DECOMPILER ERROR at PC30: Confused about usage of register: R8 in 'UnsetPending'

    if R8_PC30.image_path ~= nil and (mp.bitand)(R8_PC30.reason_ex, 1) == 1 and ((string.lower)((string.sub)(R8_PC30.image_path, -13)) == "\\sqlservr.exe" or (string.lower)((string.sub)(R8_PC30.image_path, -13)) == "\\sqlagent.exe") then
      l_0_1 = true
      break
    end
  end
end
do
  if l_0_1 ~= nil then
    l_0_3 = nil
    local l_0_9 = nil
    l_0_9 = this_sigattrlog
    l_0_9 = l_0_9[3]
    l_0_9 = l_0_9.matched
    if l_0_9 then
      l_0_9 = this_sigattrlog
      l_0_9 = l_0_9[3]
      l_0_3 = l_0_9.utf8p2
    end
    if l_0_3 ~= nil then
      l_0_9 = l_0_9(l_0_3, "Detection:([^\\]+)$")
      local l_0_10 = nil
      l_0_10 = bm
      l_0_10 = l_0_10.trigger_sig
      l_0_10(l_0_9, "MalwareDroppedBySQL")
      l_0_10 = mp
      l_0_10 = l_0_10.INFECTED
      return l_0_10
    end
  end
  do
    l_0_3 = mp
    l_0_3 = l_0_3.CLEAN
    return l_0_3
  end
end

