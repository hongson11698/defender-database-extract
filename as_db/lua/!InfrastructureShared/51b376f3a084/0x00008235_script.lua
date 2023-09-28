-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\51b376f3a084\0x00008235_luac 

-- params : ...
-- function num : 0
checkProcessTree = function(l_1_0, l_1_1)
  -- function num : 0_0
  if l_1_0 == nil or l_1_1 == nil or type(l_1_1) ~= "table" then
    return nil
  end
  local l_1_2 = l_1_0
  local l_1_3 = {}
  for l_1_7,l_1_8 in ipairs(l_1_1) do
    local l_1_9 = 0
    local l_1_10, l_1_11 = (bm.get_process_relationships)(l_1_2)
    for l_1_15,l_1_16 in ipairs(l_1_11) do
      if (mp.bitand)(l_1_16.reason_ex, 1) == 1 and (string.sub)(l_1_16.image_path, -(string.len)(l_1_8)) == l_1_8 then
        l_1_2 = l_1_16.ppid
        l_1_9 = l_1_9 + 1
      end
      if l_1_9 > 1 then
        return nil
      end
    end
    if l_1_9 == 0 then
      return nil
    end
    ;
    (table.insert)(l_1_3, l_1_2)
  end
  return l_1_3
end

local l_0_0 = (bm.get_imagepath)()
if l_0_0 == nil or (string.len)(l_0_0) < 8 then
  return mp.CLEAN
end
local l_0_1 = (string.lower)((string.match)(l_0_0, "([^\\]+)$"))
local l_0_2 = {}
l_0_2["winword.exe"] = true
l_0_2["excel.exe"] = true
l_0_2["powerpnt.exe"] = true
if l_0_2[l_0_1] == nil then
  return mp.CLEAN
end
local l_0_3 = (bm.get_current_process_startup_info)()
if l_0_3 == nil or l_0_3.ppid == nil then
  return mp.CLEAN
end
local l_0_4 = l_0_3.ppid
local l_0_5 = l_0_3.command_line
local l_0_6 = {}
-- DECOMPILER ERROR at PC51: No list found for R6 , SetList fails

-- DECOMPILER ERROR at PC52: Overwrote pending register: R7 in 'AssignReg'

-- DECOMPILER ERROR at PC53: Overwrote pending register: R8 in 'AssignReg'

-- DECOMPILER ERROR at PC54: Overwrote pending register: R9 in 'AssignReg'

local l_0_7 = ("cmd.exe")("cmd.exe", "powershell.exe")
if l_0_7 == nil then
  return mp.CLEAN
end
do
  if l_0_5 ~= nil then
    local l_0_8 = {}
    l_0_8[".xls"] = true
    l_0_8[".doc"] = true
    l_0_8[".ppt"] = true
    l_0_8[".pps"] = true
    l_0_8.docx = true
    l_0_8.pptx = true
    l_0_8.ppsx = true
    l_0_8.xlsx = true
    l_0_8[".rtf"] = true
    l_0_8[".xml"] = true
    l_0_8.dotx = true
    l_0_8.dotm = true
    l_0_8[".odt"] = true
    l_0_8.xlsb = true
    l_0_8.xltx = true
    l_0_8.xltm = true
    l_0_8.xlam = true
    l_0_8[".xla"] = true
    l_0_8.docm = true
    l_0_8.xlsm = true
    l_0_8.pptm = true
    bm_AddRelatedFileFromCommandLine(l_0_5, l_0_8)
  end
  return mp.INFECTED
end

