-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000236_luac 

-- params : ...
-- function num : 0
local l_0_0 = this_sigattrlog[1]
if not l_0_0.matched then
  return mp.CLEAN
end
local l_0_1 = l_0_0.utf8p2
if not l_0_1 then
  return mp.CLEAN
end
local l_0_2 = l_0_0.utf8p1
if not l_0_2 then
  return mp.CLEAN
end
local l_0_3 = tonumber(l_0_2)
if l_0_3 <= 153600 then
  return mp.CLEAN
end
if l_0_3 >= 1048576 then
  return mp.CLEAN
end
local l_0_4 = l_0_0.ppid
if not l_0_4 then
  return mp.CLEAN
end
if (MpCommon.IsFriendlyProcess)(l_0_4) then
  return mp.CLEAN
end
local l_0_5, l_0_6 = pcall(bm.get_imagepath)
if l_0_5 then
  local l_0_7 = (l_0_6:match("\\([^\\]+)$")):lower()
  local l_0_8 = (string.format)("%s:%s", l_0_7, l_0_2)
  local l_0_9 = {}
  l_0_9["powershell.exe:458752"] = true
  l_0_9["powershell.exe:393216"] = true
  l_0_9["powershell.exe:524288"] = true
  l_0_9["powershell.exe:720896"] = true
  l_0_9["powershell.exe:983040"] = true
  l_0_9["powershell.exe:262144"] = true
  l_0_9["powershell.exe:196608"] = true
  l_0_9["powershell.exe:400320"] = true
  l_0_9["postman.exe:241664"] = true
  l_0_9["outlook.exe:241664"] = true
  l_0_9["ciscocollabhostcef.exe:241664"] = true
  l_0_9["mscorsvw.exe:589824"] = true
  l_0_9["xulrunner.exe:155648"] = true
  l_0_9["selfservice.exe:327680"] = true
  l_0_9["rundll32.exe:327680"] = true
  l_0_9["spotify.exe:241664"] = true
  l_0_9["wa_3rd_party_host_32.exe:327680"] = true
  l_0_9["mscorsvw.exe:851968"] = true
  l_0_9["mscorsvw.exe:393216"] = true
  l_0_9["mscorsvw.exe:458752"] = true
  l_0_9["cthwiprvservice.exe:327680"] = true
  l_0_9["mscorsvw.exe:524288"] = true
  l_0_9["chrome.exe:241664"] = true
  l_0_9["mscorsvw.exe:720896"] = true
  l_0_9["winword.exe:241664"] = true
  l_0_9["msip.executionhost.exe:655360"] = true
  l_0_9["mscorsvw.exe:196608"] = true
  l_0_9["mscorsvw.exe:262144"] = true
  l_0_9["msedge.exe:241664"] = true
  l_0_9["mscorsvw.exe:983040"] = true
  l_0_9["adobe cef helper.exe:241664"] = true
  l_0_9["powershell.exe:217040"] = true
  l_0_9["mscorsvw.exe:786432"] = true
  l_0_9["mscorsvw.exe:917504"] = true
  l_0_9["slack.exe:241664"] = true
  l_0_9["digital-assistant-services.exe:327680"] = true
  l_0_9["ctesdetect.exe:327680"] = true
  l_0_9["wa_3rd_party_host_64.exe:201792"] = true
  l_0_9["softphoneintegrations.exe:327680"] = true
  l_0_9["ctavdetect.exe:327680"] = true
  l_0_9["box.exe:655360"] = true
  l_0_9["powershell.exe:201792"] = true
  l_0_9["powershell.exe:655360"] = true
  l_0_9["mscorsvw.exe:655360"] = true
  l_0_9["msip.executionhost32.exe:327680"] = true
  l_0_9["powershell.exe:327680"] = true
  l_0_9["mscorsvw.exe:327680"] = true
  l_0_9["powershell.exe:1048576"] = true
  l_0_9["powershell.exe:786432"] = true
  l_0_9["powershell.exe:589824"] = true
  l_0_9["powershell.exe:917504"] = true
  l_0_9["powershell.exe:851968"] = true
  l_0_9["mscorsvw.exe:1048576"] = true
  l_0_9["wa_3rd_party_host_64.exe:655360"] = true
  l_0_9["ngentask.exe:327680"] = true
  l_0_9["excel.exe:1048576"] = true
  l_0_9["outlook.exe:1048576"] = true
  l_0_9["chrome_bku_install.exe:655360"] = true
  l_0_9["outlook.exe:327680"] = true
  l_0_9["winword.exe:1048576"] = true
  l_0_9["outlook.exe:655360 "] = true
  l_0_9["outlook.exe:655360"] = true
  l_0_9["excel.exe:241664"] = true
  l_0_9["excel.exe:327680"] = true
  l_0_9["powerpnt.exe:241664"] = true
  if l_0_9[l_0_8] then
    return mp.CLEAN
  end
  if (l_0_7 == "msip.executionhost.exe" or l_0_7 == "msip.executionhost32.exe" or l_0_7 == "msip.executionhost64.exe" or l_0_7 == "wa_3rd_party_host_64.exe" or l_0_7 == "wa_3rd_party_host_32.exe" or l_0_7 == "powershell.exe") and (mp.bitand)(l_0_3, 65535) == 0 then
    return mp.CLEAN
  end
end
do
  ;
  (bm.add_related_string)("vm_sz", l_0_2, bm.RelatedStringBMReport)
  return mp.INFECTED
end

