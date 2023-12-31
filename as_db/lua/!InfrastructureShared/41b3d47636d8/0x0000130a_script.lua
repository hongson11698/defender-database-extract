-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\41b3d47636d8\0x0000130a_luac 

-- params : ...
-- function num : 0
local l_0_0 = 60
local l_0_1 = (bm.get_current_process_startup_info)()
local l_0_2 = (bm.get_imagepath)()
if l_0_2 == nil or l_0_2 == "" or l_0_1 == nil or l_0_1.ppid == nil or l_0_1.command_line == nil or l_0_1.command_line == "" then
  return mp.CLEAN
end
local l_0_3 = l_0_1.ppid .. ":" .. l_0_2 .. ":FILE_RENAMED"
local l_0_4, l_0_5 = nil, nil
if (this_sigattrlog[2]).matched then
  l_0_4 = (this_sigattrlog[2]).utf8p1
  l_0_5 = (this_sigattrlog[2]).utf8p2
else
  if (this_sigattrlog[3]).matched then
    l_0_4 = (this_sigattrlog[3]).utf8p1
    l_0_5 = (this_sigattrlog[3]).utf8p2
  end
end
if l_0_4 ~= nil and l_0_5 ~= nil then
  local l_0_6 = (string.match)(l_0_5, "/.*/")
  local l_0_7 = (string.match)(l_0_4, "/.*/")
  local l_0_8 = (string.match)(l_0_5, "(%.[^%.]+)$")
  local l_0_9 = (string.match)(l_0_4, "(%.[^%.]+)$")
  if l_0_6 == nil or l_0_7 == nil or l_0_8 == nil or l_0_9 == nil then
    return mp.CLEAN
  end
  if l_0_9:match("%.(%d+)$") ~= nil or l_0_9:match("%.%-(%w+)$") ~= nil then
    return mp.CLEAN
  end
  if CheckFileExtnIncludeProcessId(l_0_1.ppid, l_0_9) then
    return mp.CLEAN
  end
  if l_0_6 == l_0_7 and l_0_8 ~= l_0_9 and isFileExtensionOfInterest(l_0_5) and isMultiExtensionFileName(l_0_4) and (string.find)(l_0_9, ".", 1, true) and IsExtensionDatePattern(l_0_9) == false and isKnownFileExtension(l_0_4) == false then
    local l_0_10 = MpCommon.SetPersistContextNoPath
    local l_0_11 = l_0_3
    local l_0_12 = {}
    -- DECOMPILER ERROR at PC149: No list found for R12 , SetList fails

    -- DECOMPILER ERROR at PC150: Overwrote pending register: R13 in 'AssignReg'

    l_0_10(l_0_11, l_0_12, l_0_4)
    l_0_10 = analyzeRansomwarePattern5
    l_0_11 = l_0_3
    l_0_12 = "FILE_RENAMED_WITH_UNIQUE_EXTN"
    l_0_10 = l_0_10(l_0_11, l_0_12)
    l_0_11 = mp
    l_0_11 = l_0_11.INFECTED
    if l_0_10 == l_0_11 then
      l_0_10 = mp
      l_0_10 = l_0_10.INFECTED
      return l_0_10
    end
  end
end
do
  return mp.CLEAN
end

