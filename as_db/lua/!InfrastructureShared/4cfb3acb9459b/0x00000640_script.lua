-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\4cfb3acb9459b\0x00000640_luac 

-- params : ...
-- function num : 0
local l_0_0 = nil
local l_0_1 = nil
if (bm.get_current_process_startup_info)() == nil or ((bm.get_current_process_startup_info)()).ppid == nil or ((bm.get_current_process_startup_info)()).ppid == "" or ((bm.get_current_process_startup_info)()).command_line == nil then
  return mp.CLEAN
end
local l_0_2 = nil
-- DECOMPILER ERROR at PC29: Confused about usage of register: R2 in 'UnsetPending'

-- DECOMPILER ERROR at PC38: Confused about usage of register: R2 in 'UnsetPending'

if (string.find)(((bm.get_current_process_startup_info)()).command_line, "/etc/xdg/chk", 1, true) ~= nil or (string.find)(((bm.get_current_process_startup_info)()).command_line, "/etc/xdg/systemd/001", 1, true) ~= nil or (string.find)(((bm.get_current_process_startup_info)()).command_line, "/opt/microsoft/mdatp/conf/scripts", 1, true) then
  return mp.CLEAN
end
if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p2 ~= nil then
  l_0_1 = ((this_sigattrlog[4]).utf8p2):lower()
else
  if (this_sigattrlog[5]).matched and (this_sigattrlog[5]).utf8p2 ~= nil then
    l_0_1 = ((this_sigattrlog[5]).utf8p2):lower()
  else
    if (this_sigattrlog[6]).matched and (this_sigattrlog[6]).utf8p2 ~= nil then
      l_0_1 = ((this_sigattrlog[6]).utf8p2):lower()
    else
      if (this_sigattrlog[7]).matched and (this_sigattrlog[7]).utf8p2 ~= nil then
        l_0_1 = ((this_sigattrlog[7]).utf8p2):lower()
      else
        if (this_sigattrlog[8]).matched and (this_sigattrlog[8]).utf8p2 ~= nil then
          l_0_1 = ((this_sigattrlog[8]).utf8p2):lower()
        else
          if (this_sigattrlog[9]).matched and (this_sigattrlog[9]).utf8p2 ~= nil then
            l_0_1 = ((this_sigattrlog[9]).utf8p2):lower()
          else
            if (this_sigattrlog[10]).matched and (this_sigattrlog[10]).utf8p2 ~= nil then
              l_0_1 = ((this_sigattrlog[10]).utf8p2):lower()
            else
              if (this_sigattrlog[11]).matched and (this_sigattrlog[11]).utf8p2 ~= nil then
                l_0_1 = ((this_sigattrlog[11]).utf8p2):lower()
              else
                if (this_sigattrlog[12]).matched and (this_sigattrlog[12]).utf8p2 ~= nil then
                  l_0_1 = ((this_sigattrlog[12]).utf8p2):lower()
                else
                  if (this_sigattrlog[13]).matched and (this_sigattrlog[13]).utf8p2 ~= nil then
                    l_0_1 = ((this_sigattrlog[13]).utf8p2):lower()
                  else
                    if (this_sigattrlog[14]).matched and (this_sigattrlog[14]).utf8p2 ~= nil then
                      l_0_1 = ((this_sigattrlog[14]).utf8p2):lower()
                    else
                      if (this_sigattrlog[23]).matched and (this_sigattrlog[23]).utf8p2 ~= nil then
                        l_0_1 = ((this_sigattrlog[23]).utf8p2):lower()
                      else
                        if (this_sigattrlog[24]).matched and (this_sigattrlog[24]).utf8p2 ~= nil then
                          l_0_1 = ((this_sigattrlog[24]).utf8p2):lower()
                        else
                          if (this_sigattrlog[25]).matched and (this_sigattrlog[25]).utf8p2 ~= nil then
                            l_0_1 = ((this_sigattrlog[25]).utf8p2):lower()
                          else
                            if (this_sigattrlog[26]).matched and (this_sigattrlog[26]).utf8p2 ~= nil then
                              l_0_1 = ((this_sigattrlog[26]).utf8p2):lower()
                            else
                              if (this_sigattrlog[27]).matched and (this_sigattrlog[27]).utf8p2 ~= nil then
                                l_0_1 = ((this_sigattrlog[27]).utf8p2):lower()
                              else
                                if (this_sigattrlog[28]).matched and (this_sigattrlog[28]).utf8p2 ~= nil then
                                  l_0_1 = ((this_sigattrlog[28]).utf8p2):lower()
                                else
                                  if (this_sigattrlog[29]).matched and (this_sigattrlog[29]).utf8p2 ~= nil then
                                    l_0_1 = ((this_sigattrlog[29]).utf8p2):lower()
                                  else
                                    if (this_sigattrlog[30]).matched and (this_sigattrlog[30]).utf8p2 ~= nil then
                                      l_0_1 = ((this_sigattrlog[30]).utf8p2):lower()
                                    else
                                      if (this_sigattrlog[15]).matched and (this_sigattrlog[15]).utf8p2 ~= nil then
                                        l_0_1 = ((this_sigattrlog[15]).utf8p2):lower()
                                      else
                                        if (this_sigattrlog[16]).matched and (this_sigattrlog[16]).utf8p2 ~= nil then
                                          l_0_1 = ((this_sigattrlog[16]).utf8p2):lower()
                                        else
                                          if (this_sigattrlog[17]).matched and (this_sigattrlog[17]).utf8p2 ~= nil then
                                            l_0_1 = ((this_sigattrlog[17]).utf8p2):lower()
                                          else
                                            if (this_sigattrlog[18]).matched and (this_sigattrlog[18]).utf8p2 ~= nil then
                                              l_0_1 = ((this_sigattrlog[18]).utf8p2):lower()
                                            else
                                              if (this_sigattrlog[19]).matched and (this_sigattrlog[19]).utf8p2 ~= nil then
                                                l_0_1 = ((this_sigattrlog[19]).utf8p2):lower()
                                              else
                                                if (this_sigattrlog[20]).matched and (this_sigattrlog[20]).utf8p2 ~= nil then
                                                  l_0_1 = ((this_sigattrlog[20]).utf8p2):lower()
                                                else
                                                  if (this_sigattrlog[21]).matched and (this_sigattrlog[21]).utf8p2 ~= nil then
                                                    l_0_1 = ((this_sigattrlog[21]).utf8p2):lower()
                                                  else
                                                    if (this_sigattrlog[22]).matched and (this_sigattrlog[22]).utf8p2 ~= nil then
                                                      l_0_1 = ((this_sigattrlog[22]).utf8p2):lower()
                                                    end
                                                  end
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
if l_0_1 == nil then
  return mp.CLEAN
end
local l_0_3 = nil
local l_0_4 = 0
if (string.find)(l_0_1, "grep -e", 1, true) ~= nil or (string.find)(l_0_1, "grep --color=auto -e", 1, true) ~= nil then
  for l_0_8,l_0_9 in pairs({"mdatp", "firewall", "littlesnitch", "opensnitch", "avast", "avira", "mcafee", "webprotection", "isecespd", "macmnsvc", "masvc", "avscan", "rtvscand", "symcfgd", "scmdaemon", "symantec", "osquery", "sophos", "elastic-endpoint", "falcon", "nessusd", "cbagentd", "td-agent", "packetbeat", "filebeat", "auditbeat", "CynetEPS"}) do
    local l_0_5 = nil
    -- DECOMPILER ERROR at PC566: Confused about usage of register: R9 in 'UnsetPending'

    if (string.find)(l_0_1, true, 1, true) ~= nil then
      l_0_4 = l_0_4 + 1
    end
  end
  if l_0_4 > 2 then
    TrackPidAndTechniqueBM("BM", "T1518.001", "SecuritySoftwareDiscovery_mt2023")
    return mp.INFECTED
  end
end
return mp.CLEAN

