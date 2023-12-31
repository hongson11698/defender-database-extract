-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\99b3919de3c8\0x000009b4_luac 

-- params : ...
-- function num : 0
local l_0_0 = 900000000
if l_0_0 < (bm.GetSignatureMatchDuration)() then
  return mp.CLEAN
end
if (this_sigattrlog[1]).matched then
  local l_0_1 = (this_sigattrlog[1]).utf8p1
  if l_0_1 == nil and (string.len)(l_0_1) <= 4 then
    return mp.CLEAN
  end
  local l_0_2 = (this_sigattrlog[1]).utf8p2
  if l_0_2 == nil and (string.len)(l_0_2) <= 4 then
    return mp.CLEAN
  end
  local l_0_3 = {}
  l_0_3["winword.exe"] = true
  l_0_3["excel.exe"] = true
  l_0_3["powerpnt.exe"] = true
  local l_0_4 = (string.lower)((string.match)(l_0_1, "([^\\]-[^\\%.]+)$"))
  if l_0_4 == nil and (string.len)(l_0_4) <= 4 then
    return mp.CLEAN
  end
  if l_0_3[l_0_4] then
    local l_0_5 = nil
    if (this_sigattrlog[5]).matched then
      l_0_5 = (this_sigattrlog[5]).utf8p1
    end
    if l_0_5 == nil then
      return mp.CLEAN
    end
    local l_0_6 = nil
    if (this_sigattrlog[6]).matched then
      l_0_6 = (this_sigattrlog[6]).utf8p2
    end
    if l_0_6 == nil then
      return mp.CLEAN
    end
    local l_0_7 = (string.lower)((string.match)(l_0_5, "([^\\]-[^\\%.]+)$"))
    if not (string.find)((string.lower)(l_0_6), l_0_7, 1, true) then
      return mp.CLEAN
    end
    local l_0_8 = "|.xls|.doc|.ppt|.pps|docx|pptx|ppsx|xlsx|.rtf|.js|.vbs|.wsf|.jse|.vbe|"
    bm_AddRelatedFileFromCommandLine(l_0_2, l_0_8)
    do
      do
        if (this_sigattrlog[4]).matched then
          local l_0_9 = (this_sigattrlog[4]).utf8p2
          bm_AddRelatedFileFromCommandLine(l_0_9, l_0_8)
        end
        do return mp.INFECTED end
        return mp.CLEAN
      end
    end
  end
end

