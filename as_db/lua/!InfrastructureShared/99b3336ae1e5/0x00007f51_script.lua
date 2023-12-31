-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\99b3336ae1e5\0x00007f51_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched then
  local l_0_0 = (this_sigattrlog[1]).utf8p1
  if l_0_0 == nil and (string.len)(l_0_0) <= 4 then
    return mp.CLEAN
  end
  local l_0_1 = (this_sigattrlog[1]).utf8p2
  if l_0_1 == nil and (string.len)(l_0_1) <= 4 then
    return mp.CLEAN
  end
  local l_0_2 = {}
  l_0_2["winword.exe"] = true
  l_0_2["excel.exe"] = true
  l_0_2["powerpnt.exe"] = true
  local l_0_3 = (string.lower)((string.match)(l_0_0, "([^\\]-[^\\%.]+)$"))
  if l_0_3 == nil and (string.len)(l_0_3) <= 4 then
    return mp.CLEAN
  end
  if l_0_2[l_0_3] then
    local l_0_4 = "|.xls|.doc|.ppt|.pps|docx|pptx|ppsx|xlsx|.rtf|.js|.vbs|.wsf|.jse|.vbe|"
    bm_AddRelatedFileFromCommandLine(l_0_1, l_0_4)
    do
      do
        if (this_sigattrlog[4]).matched then
          local l_0_5 = (this_sigattrlog[4]).utf8p2
          bm_AddRelatedFileFromCommandLine(l_0_5, l_0_4)
        end
        do return mp.INFECTED end
        return mp.CLEAN
      end
    end
  end
end

