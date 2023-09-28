-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\a5b397654447\0x00008232_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if l_0_0 and ((string.find)(l_0_0, "windows\\explorer.exe", 1, true) or (string.find)(l_0_0, "\\system32\\svchost.exe", 1, true) or (string.find)(l_0_0, "\\syswow64\\svchost.exe", 1, true)) then
  return mp.CLEAN
end
local l_0_1 = nil
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
  l_0_1 = (this_sigattrlog[1]).utf8p2
else
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
    l_0_1 = (this_sigattrlog[2]).utf8p2
  else
    if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 ~= nil then
      l_0_1 = (this_sigattrlog[3]).utf8p2
    else
      if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p2 ~= nil then
        l_0_1 = (this_sigattrlog[4]).utf8p2
      else
        if (this_sigattrlog[5]).matched and (this_sigattrlog[5]).utf8p2 ~= nil then
          l_0_1 = (this_sigattrlog[5]).utf8p2
        else
          if (this_sigattrlog[6]).matched and (this_sigattrlog[6]).utf8p2 ~= nil then
            l_0_1 = (this_sigattrlog[6]).utf8p2
          else
            if (this_sigattrlog[7]).matched and (this_sigattrlog[7]).utf8p2 ~= nil then
              l_0_1 = (this_sigattrlog[7]).utf8p2
            end
          end
        end
      end
    end
  end
end
if (string.len)(l_0_1) < 4 and (string.lower)(l_0_1) ~= "cmd" then
  return mp.CLEAN
end
if (string.find)(l_0_1, "%1", 1, true) then
  return mp.CLEAN
end
local l_0_2 = (mp.GetExecutablesFromCommandLine)(l_0_1)
for l_0_6,l_0_7 in ipairs(l_0_2) do
  if (sysio.IsFileExists)(l_0_7) then
    (bm.add_related_file)(l_0_7)
  end
end
local l_0_8 = {}
;
(table.insert)(l_0_8, l_0_1)
;
(MpCommon.SetPersistContextNoPath)("UACBypassExp.T!regset", l_0_8, 10)
TrackPidAndTechniqueBM("BM", "T1548.002", "uac_bypass_src")
return mp.INFECTED

