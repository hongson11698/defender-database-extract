-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000011e8_luac 

-- params : ...
-- function num : 0
local l_0_0 = nil
local l_0_1 = nil
if ((mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN or (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE) and (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
  l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME))
  if l_0_1 == nil then
    return mp.CLEAN
  end
  if (l_0_1:sub(-3)):lower() ~= ".dc" then
    return mp.CLEAN
  end
  local l_0_2 = nil
  -- DECOMPILER ERROR at PC53: Overwrote pending register: R2 in 'AssignReg'

  if nil == nil then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC61: Confused about usage of register: R2 in 'UnsetPending'

  -- DECOMPILER ERROR at PC70: Confused about usage of register: R2 in 'UnsetPending'

  if ((string.find)(nil, "\\application data\\dclogs", 1, true) or (string.find)(nil, "\\appdata\\roaming\\dclogs", 1, true)) and (string.find)(l_0_1, "20%d%d%-[01][0-9]%-[0-3][0-9]%-%d%d?%.dc", 1, false) then
    local l_0_3, l_0_4 = , nil
    -- DECOMPILER ERROR at PC104: Overwrote pending register: R4 in 'AssignReg'

    if l_0_4 == nil or nil == nil then
      return mp.CLEAN
    end
    -- DECOMPILER ERROR at PC121: Confused about usage of register: R4 in 'UnsetPending'

    -- DECOMPILER ERROR at PC128: Confused about usage of register: R4 in 'UnsetPending'

    -- DECOMPILER ERROR at PC135: Confused about usage of register: R4 in 'UnsetPending'

    -- DECOMPILER ERROR at PC142: Confused about usage of register: R4 in 'UnsetPending'

    -- DECOMPILER ERROR at PC151: Confused about usage of register: R4 in 'UnsetPending'

    -- DECOMPILER ERROR at PC160: Confused about usage of register: R4 in 'UnsetPending'

    -- DECOMPILER ERROR at PC169: Confused about usage of register: R4 in 'UnsetPending'

    -- DECOMPILER ERROR at PC178: Confused about usage of register: R4 in 'UnsetPending'

    -- DECOMPILER ERROR at PC185: Confused about usage of register: R4 in 'UnsetPending'

    -- DECOMPILER ERROR at PC194: Confused about usage of register: R4 in 'UnsetPending'

    -- DECOMPILER ERROR at PC205: Confused about usage of register: R4 in 'UnsetPending'

    if (string.sub)(l_0_4, -4) == ".exe" and ((string.find)(nil, "\\desktop\\.+") or (string.find)(nil, "\\.-documents\\.+") or (string.find)(nil, "\\start menu\\.+") or (string.find)(nil, "\\programdata", 1, true) or (string.find)(nil, "\\appdata\\local", 1, true) or (string.find)(nil, "\\appdata\\roaming", 1, true) or (string.find)(nil, "\\local settings\\temp", 1, true) or (string.find)(nil, "\\windows\\system32\\.+") or (string.find)(nil, "\\administrator\\application data", 1, true) or (string.find)(nil, "\\local settings\\application data", 1, true)) then
      (mp.ReportLowfi)((MpCommon.PathToWin32Path)(nil) .. "\\" .. l_0_4, 949894675)
    end
  end
end
do
  return mp.CLEAN
end

