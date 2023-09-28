-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000009b3_luac 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_HAS_MOTW_ADS) == true then
  local l_0_0 = (mp.GetMOTWZone)()
  if l_0_0 == nil or l_0_0 < 3 then
    return mp.CLEAN
  end
  local l_0_1 = (mp.getfilesize)()
  if l_0_1 > 2097152 then
    return mp.CLEAN
  end
  local l_0_2 = (string.lower)((mp.getfilename)())
  if l_0_2 == nil or (string.len)(l_0_2) < 10 then
    return mp.CLEAN
  end
  local l_0_3 = l_0_2:sub(-4)
  local l_0_4 = l_0_2:sub(-6)
  local l_0_5 = {}
  l_0_5[".jse"] = true
  l_0_5[".vbs"] = true
  l_0_5[".wsf"] = true
  l_0_5[".vbe"] = true
  l_0_5[".hta"] = true
  l_0_5[".mht"] = true
  l_0_5[".bat"] = true
  l_0_5[".ps1"] = true
  l_0_5[".cmd"] = true
  l_0_5[".url"] = true
  l_0_5[".exe"] = true
  l_0_5[".scr"] = true
  l_0_5[".pif"] = true
  l_0_5[".lnk"] = true
  l_0_5[".docx"] = true
  l_0_5[".xlsx"] = true
  l_0_5[".doc"] = true
  l_0_5[".xls"] = true
  l_0_5[".rtf"] = true
  l_0_5.docm = true
  l_0_5.xlsm = true
  l_0_5.ppam = true
  l_0_5.pptm = true
  l_0_5.ppsm = true
  l_0_5.potm = true
  if l_0_5[l_0_3] == true or l_0_5[l_0_4] == true then
    if not l_0_2:find(".zip->", 1, true) and not l_0_2:find(".7z->", 1, true) and not l_0_2:find(".rar->", 1, true) then
      return mp.CLEAN
    end
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

