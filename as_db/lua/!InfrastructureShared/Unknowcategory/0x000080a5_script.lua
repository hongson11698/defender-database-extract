-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000080a5_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1, l_0_2, l_0_3 = nil, nil, nil, nil
local l_0_4 = nil
while 1 do
  -- DECOMPILER ERROR at PC3: Confused about usage of register: R4 in 'UnsetPending'

  if 1 <= 5 then
    if 1 == 1 then
      l_0_4 = (mp.GetParentProcInfo)()
    else
      -- DECOMPILER ERROR at PC12: Confused about usage of register: R1 in 'UnsetPending'

      l_0_4 = (mp.GetParentProcInfo)(l_0_1)
    end
    if l_0_4 == nil then
      return mp.CLEAN
    end
    if l_0_4.ppid == nil then
      return mp.CLEAN
    end
    if l_0_4.image_path == nil then
      return mp.CLEAN
    end
    -- DECOMPILER ERROR at PC36: Confused about usage of register: R2 in 'UnsetPending'

    -- DECOMPILER ERROR at PC43: Confused about usage of register: R3 in 'UnsetPending'

    if (string.lower)((string.match)(l_0_4.image_path, "\\([^\\]+)$")) == nil or (string.lower)((string.match)(l_0_4.image_path, "\\([^\\]+)$")) == "" then
      return mp.CLEAN
    end
    -- DECOMPILER ERROR at PC48: Confused about usage of register: R3 in 'UnsetPending'

    if (string.lower)((string.match)(l_0_4.image_path, "\\([^\\]+)$")) == "winlogon.exe" then
      return mp.CLEAN
    end
    -- DECOMPILER ERROR at PC55: Confused about usage of register: R2 in 'UnsetPending'

  end
  if (mp.IsKnownFriendlyFile)(l_0_4.image_path, true, true) ~= true then
    break
  end
  -- DECOMPILER ERROR at PC62: Confused about usage of register: R4 in 'UnsetPending'

end
-- DECOMPILER ERROR at PC68: Confused about usage of register: R2 in 'UnsetPending'

if 1 + 1 > 5 and (mp.IsKnownFriendlyFile)(l_0_4.image_path, true, true) == true then
  return mp.CLEAN
end
-- DECOMPILER ERROR at PC79: Confused about usage of register: R2 in 'UnsetPending'

-- DECOMPILER ERROR at PC86: Confused about usage of register: R2 in 'UnsetPending'

if not (MpCommon.QueryPersistContext)(l_0_4.image_path, "RunsDestructiveCMDsParent") then
  (MpCommon.AppendPersistContext)(l_0_4.image_path, "RunsDestructiveCMDsParent", 0)
end
-- DECOMPILER ERROR at PC92: Confused about usage of register: R2 in 'UnsetPending'

-- DECOMPILER ERROR at PC99: Confused about usage of register: R2 in 'UnsetPending'

if not (MpCommon.QueryPersistContext)(l_0_4.image_path, "disableCachingQueryAgePrev") then
  (MpCommon.AppendPersistContext)(l_0_4.image_path, "disableCachingQueryAgePrev", 0)
end
-- DECOMPILER ERROR at PC105: Confused about usage of register: R2 in 'UnsetPending'

;
(mp.ReportInternalDetection)(l_0_4.image_path, 1397989066, mp.TYPE_ASYNC_LOWFI)
return mp.INFECTED

