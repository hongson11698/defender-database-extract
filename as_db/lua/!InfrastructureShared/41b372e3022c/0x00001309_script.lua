-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\41b372e3022c\0x00001309_luac 

-- params : ...
-- function num : 0
local l_0_0 = 60
local l_0_1 = (bm.get_current_process_startup_info)()
local l_0_2 = (bm.get_imagepath)()
if l_0_2 == nil or l_0_2 == "" or l_0_1 == nil or l_0_1.ppid == nil or l_0_1.command_line == nil or l_0_1.command_line == "" then
  return mp.CLEAN
end
local l_0_3 = l_0_1.ppid .. ":" .. l_0_2 .. ":FILE_CREATED_CHANGED"
if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p1 ~= nil then
  local l_0_4 = (this_sigattrlog[3]).utf8p1
  local l_0_5 = (string.match)(l_0_4, "(%.[^%.]+)$")
  if l_0_5 == nil then
    return mp.CLEAN
  end
  if (string.find)(l_0_4, "/Users/", 1, true) ~= 1 and (string.find)(l_0_4, "/Volumes/", 1, true) ~= 1 then
    return mp.CLEAN
  end
  if l_0_5:match("%.(%d+)$") ~= nil or l_0_5:match("%.%-(%w+)$") ~= nil then
    return mp.CLEAN
  end
  if CheckFileExtnIncludeProcessId(l_0_1.ppid, l_0_5) then
    return mp.CLEAN
  end
  if IsExtensionDatePattern(l_0_5) == false and isKnownFileExtension(l_0_4) == false and isMultiExtensionFileName(l_0_4) then
    local l_0_6 = MpCommon.SetPersistContextNoPath
    local l_0_7 = l_0_3
    local l_0_8 = {}
    -- DECOMPILER ERROR at PC116: No list found for R8 , SetList fails

    -- DECOMPILER ERROR at PC117: Overwrote pending register: R9 in 'AssignReg'

    l_0_6(l_0_7, l_0_8, l_0_4)
    l_0_6 = analyzeRansomwarePattern5
    l_0_7 = l_0_3
    l_0_8 = "NEW_FILE_CREATED"
    l_0_6 = l_0_6(l_0_7, l_0_8)
    l_0_7 = mp
    l_0_7 = l_0_7.INFECTED
    if l_0_6 == l_0_7 then
      l_0_6 = mp
      l_0_6 = l_0_6.INFECTED
      return l_0_6
    end
  end
end
do
  return mp.CLEAN
end

