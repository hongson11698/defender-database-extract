-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000009c6_luac 

-- params : ...
-- function num : 0
local l_0_0 = nil
local l_0_1 = nil
local l_0_2 = (bm.get_current_process_startup_info)()
if l_0_2 == nil or (string.lower)((MpCommon.PathToWin32Path)((bm.get_imagepath)())) == nil or (string.find)((string.lower)((MpCommon.PathToWin32Path)((bm.get_imagepath)())), "\\gameguard\\gamemon64.des", -24, true) or (string.find)((string.lower)((MpCommon.PathToWin32Path)((bm.get_imagepath)())), "\\gameguard\\gamemon.des", -22, true) then
  return mp.CLEAN
end
local l_0_3, l_0_4 = , (bm.get_process_relationships)()
if (string.lower)((MpCommon.PathToWin32Path)((bm.get_imagepath)())) ~= nil then
  for l_0_8,l_0_9 in ipairs(R6_PC44) do
    local l_0_5 = nil
    -- DECOMPILER ERROR at PC46: Confused about usage of register: R9 in 'UnsetPending'

    if R9_PC46.image_path ~= nil and R9_PC46.reason == bm.RELATIONSHIP_INJECTION and ((string.find)((string.lower)(R9_PC46.image_path), "\\gameguard\\gamemon64.des", -24, true) or (string.find)((string.lower)(R9_PC46.image_path), "\\gameguard\\gamemon.des", -22, true)) then
      return mp.CLEAN
    end
  end
end
do
  if l_0_4 ~= nil then
    for l_0_14,l_0_15 in ipairs(l_0_4) do
      local l_0_11 = nil
      -- DECOMPILER ERROR at PC87: Confused about usage of register: R9 in 'UnsetPending'

      -- DECOMPILER ERROR at PC90: Confused about usage of register: R9 in 'UnsetPending'

      if l_0_10.image_path ~= nil and l_0_10.reason == bm.RELATIONSHIP_INJECTION then
        l_0_1 = (string.lower)((MpCommon.PathToWin32Path)((bm.get_imagepath)()))
        if (string.find)(l_0_1, "\\cnext\\radeonsoftware.exe", -25, true) or (string.find)(l_0_1, "\\steam\\steam.exe", -16, true) or (string.find)(l_0_1, "\\tychon\\tychoncoreservice.exe", -29, true) or (string.find)(l_0_1, "\\system32\\userinit.exe", -22, true) or (string.find)(l_0_1, "\\vagrant\\bin\\vagrant.exe", -24, true) or (string.find)(l_0_1, "\\gameguard\\gamemon64.des", -24, true) or (string.find)(l_0_1, "\\gameguard\\gamemon.des", -22, true) then
          return mp.CLEAN
        end
      end
    end
  end
  do
    if (sysio.IsFileExists)(l_0_1) and not (mp.IsKnownFriendlyFile)(l_0_1, true, false) then
      (bm.add_related_file)(l_0_1)
    end
    if (sysio.IsFileExists)(l_0_3) and not (mp.IsKnownFriendlyFile)(l_0_3, true, false) then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

