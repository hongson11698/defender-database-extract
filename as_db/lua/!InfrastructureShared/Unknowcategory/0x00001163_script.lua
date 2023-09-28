-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00001163_luac 

-- params : ...
-- function num : 0
Infrastructure_ScanBlofeldCatKeyPath = function(l_1_0)
  -- function num : 0_0
  local l_1_1 = (sysio.RegOpenKey)(l_1_0)
  local l_1_2 = 0
  if l_1_1 then
    local l_1_3 = (sysio.RegEnumKeys)(l_1_1)
    for l_1_7,l_1_8 in pairs(l_1_3) do
      if l_1_8 then
        local l_1_9 = (sysio.RegOpenKey)(l_1_0 .. "\\\\" .. l_1_8)
        if l_1_9 then
          local l_1_10 = (sysio.GetRegValueAsString)(l_1_9, "UpgradeData")
          if l_1_10 and (string.len)(l_1_10) > 49 then
            (MpCommon.SetGlobalMpAttribute)("BlofeldCatRegKey")
            ;
            (MpDetection.ScanResource)("regkeyvalue://" .. l_1_0 .. "\\" .. l_1_8 .. "\\\\UpgradeData")
            ;
            (MpCommon.DeleteGlobalMpAttribute)("BlofeldCatRegKey")
          end
        end
      end
      do
        do
          l_1_2 = l_1_2 + 1
          if l_1_2 == 50 then
            SetLuaInstrLimit((crypto.shl64)(1, 24))
            l_1_2 = 0
          end
          -- DECOMPILER ERROR at PC67: LeaveBlock: unexpected jumping out DO_STMT

        end
      end
    end
  end
end

Infrastructure_ScanBlofeldCat = function()
  -- function num : 0_1
  Infrastructure_ScanBlofeldCatKeyPath("HKLM\\Software\\Microsoft\\DRM")
  SetLuaInstrLimit((crypto.shl64)(1, 24))
  local l_2_0 = (sysio.RegExpandUserKey)("HKCU\\Software\\Microsoft\\DRM")
  local l_2_1 = 0
  for l_2_5,l_2_6 in pairs(l_2_0) do
    Infrastructure_ScanBlofeldCatKeyPath(l_2_6)
    l_2_1 = l_2_1 + 1
    if l_2_1 == 8 then
      break
    end
  end
  do
    SetLuaInstrLimit((crypto.shl64)(1, 24))
  end
end


