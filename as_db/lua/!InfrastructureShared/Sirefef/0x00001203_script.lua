-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Sirefef\0x00001203_luac 

-- params : ...
-- function num : 0
local l_0_0 = "\\google\\desktop\\install"
ExtraScanNeeded = function()
  -- function num : 0_0 , upvalues : l_0_0
  local l_1_0 = (MpCommon.ExpandEnvironmentVariables)("%SystemRoot%")
  if not l_1_0 then
    return false, nil
  end
  local l_1_1 = (sysio.GetFileFsVolumeInformation)(l_1_0)
  if not l_1_1 then
    return false, nil
  end
  local l_1_2 = Int64ToByteString(l_1_1.VolumeCreationTime)
  if not l_1_2 then
    return false, nil
  end
  local l_1_3 = (crypto.MD5Buffer)(l_1_2, 0, (string.len)(l_1_2))
  if not l_1_3 then
    return false, nil
  end
  local l_1_4 = (MpCommon.ExpandEnvironmentVariables)("%ProgramFiles%")
  if not l_1_4 then
    return false, nil
  end
  if (sysio.IsFolderExists)(l_1_4 .. " (x86)") then
    l_1_4 = l_1_4 .. " (x86)"
  end
  local l_1_5 = (string.format)("{%08x-%04x-%04x-%02x%02x-%02x%02x%02x%02x%02x%02x}", readu32(l_1_3, 0), readu16(l_1_3, 4), readu16(l_1_3, 6), readu8(l_1_3, 8), readu8(l_1_3, 9), readu8(l_1_3, 10), readu8(l_1_3, 11), readu8(l_1_3, 12), readu8(l_1_3, 13), readu8(l_1_3, 14), readu8(l_1_3, 15))
  local l_1_6 = l_1_4 .. l_0_0 .. "\\" .. l_1_5
  if (sysio.IsFolderExists)(l_1_6) then
    return true, l_1_5
  end
  return false, nil
end

local l_0_1 = function(l_2_0)
  -- function num : 0_1
  local l_2_1 = (sysio.ExpandFilePath)("%" .. l_2_0 .. "%")
  if not l_2_1 then
    return nil
  end
  for l_2_5,l_2_6 in pairs(l_2_1) do
    if not (string.find)(l_2_6, "%%" .. l_2_0 .. "%%") then
      return l_2_6
    end
  end
  return nil
end

local l_0_2, l_0_3 = ExtraScanNeeded()
if l_0_2 and l_0_3 then
  local l_0_4 = nil
  if Info.OSMajorVersion == 5 then
    local l_0_5 = l_0_1("UserProfile")
    if l_0_5 then
      l_0_4 = l_0_5 .. "\\Local Settings\\Application Data"
    end
  else
    do
      l_0_4 = l_0_1("LocalAppData")
      if l_0_4 then
        (MpDetection.ScanResource)("folder://" .. l_0_4 .. l_0_0 .. "\\" .. l_0_3)
      end
      local l_0_6 = (MpCommon.ExpandEnvironmentVariables)("%ProgramFiles%")
      if l_0_6 then
        if (sysio.IsFolderExists)(l_0_6 .. " (x86)") then
          l_0_6 = l_0_6 .. " (x86)"
        end
        ;
        (MpDetection.ScanResource)("folder://" .. l_0_6 .. l_0_0 .. "\\" .. l_0_3)
      end
    end
  end
end

