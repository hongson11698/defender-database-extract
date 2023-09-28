-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000082a3_luac 

-- params : ...
-- function num : 0
local l_0_0 = (versioning.GetOrgID)()
if l_0_0 ~= nil and ((string.lower)(l_0_0) == "d9e92961-6699-4647-99d4-e23663461fe5" or (string.lower)(l_0_0) == "2559b15e-e168-4d57-978b-6628179d78ac" or (string.lower)(l_0_0) == "8efa8f39-7f99-4428-bf6d-f2137e4a80d4" or (string.lower)(l_0_0) == "cf258717-a6c4-47c1-96a1-2ce4edc921de") then
  return mp.CLEAN
end
getFirstChildPpid = function(l_1_0, l_1_1)
  -- function num : 0_0
  if l_1_0 == nil then
    return nil
  end
  local l_1_2 = true
  local l_1_3 = 0
  if l_1_1 ~= nil or (string.len)(l_1_1) > 0 then
    l_1_2 = false
    l_1_3 = (string.len)(l_1_1)
  end
  local l_1_4, l_1_5 = (bm.get_process_relationships)(l_1_0)
  if l_1_5 == nil or #l_1_5 < 1 or #l_1_5 > 4 then
    return nil
  end
  local l_1_6 = nil
  for l_1_10,l_1_11 in ipairs(l_1_5) do
    if (mp.bitand)(l_1_11.reason_ex, 1) == 1 and (l_1_2 == true or l_1_3 >= (string.len)(l_1_11.image_path) or (string.sub)(l_1_11.image_path, -l_1_3) == l_1_1) then
      l_1_6 = l_1_11.ppid
      break
    end
  end
  do
    return l_1_6
  end
end

local l_0_1, l_0_2 = nil, nil
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
  l_0_1 = (this_sigattrlog[1]).ppid
  l_0_2 = (this_sigattrlog[1]).utf8p2
else
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
    l_0_1 = (this_sigattrlog[2]).ppid
    l_0_2 = (this_sigattrlog[2]).utf8p2
  else
    if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 ~= nil then
      l_0_1 = (this_sigattrlog[3]).ppid
      l_0_2 = (this_sigattrlog[3]).utf8p2
    end
  end
end
if l_0_1 == nil then
  return mp.CLEAN
end
local l_0_3 = getFirstChildPpid(l_0_1, "\\powershell.exe")
if l_0_3 == nil then
  return mp.CLEAN
end
if (this_sigattrlog[6]).matched == false then
  return mp.CLEAN
end
local l_0_4 = (this_sigattrlog[6]).ppid
if l_0_3 ~= l_0_4 then
  return mp.CLEAN
end
local l_0_5 = (mp.GetExecutablesFromCommandLine)(l_0_2)
local l_0_6 = {}
l_0_6[".xls"] = true
l_0_6[".doc"] = true
l_0_6[".ppt"] = true
l_0_6[".pps"] = true
l_0_6.docx = true
l_0_6.pptx = true
l_0_6.ppsx = true
l_0_6.xlsx = true
l_0_6[".rtf"] = true
l_0_6[".xml"] = true
l_0_6.dotx = true
l_0_6.dotm = true
l_0_6[".odt"] = true
l_0_6.xlsb = true
l_0_6.xltx = true
l_0_6.xltm = true
l_0_6.xlam = true
l_0_6[".xla"] = true
l_0_6.docm = true
l_0_6.xlsm = true
l_0_6.pptm = true
for l_0_10,l_0_11 in ipairs(l_0_5) do
  if (string.len)(l_0_11) > 4 and (sysio.IsFileExists)(l_0_11) then
    local l_0_12 = (string.sub)(l_0_11, -4)
    if l_0_6[l_0_12] and (mp.IsKnownFriendlyFile)(l_0_11, true, false) == false then
      (bm.add_threat_file)(l_0_11)
    end
  end
end
;
(bm.add_threat_process)(l_0_3)
local l_0_13 = (this_sigattrlog[6]).utf8p1
if l_0_13 == nil or (string.find)((string.lower)(l_0_13), "\\appdata\\local\\\\seleniumbasic\\", 1, true) ~= nil then
  return mp.CLEAN
end
do
  if (sysio.IsFileExists)(l_0_13) then
    local l_0_14 = (mp.IsKnownFriendlyFile)(l_0_13, true, true)
    if l_0_14 == false then
      (bm.add_threat_file)(l_0_13)
      return mp.INFECTED
    else
      if l_0_14 == true then
        return mp.CLEAN
      end
    end
  end
  return mp.CLEAN
end

