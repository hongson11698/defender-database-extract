-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\470b3701d4031\0x0000022a_luac 

-- params : ...
-- function num : 0
local l_0_0 = ""
local l_0_1 = 30
local l_0_2 = "DataStagerB"
local l_0_3 = {}
local l_0_4 = 3600
local l_0_5 = 100
local l_0_6 = "|"
if (this_sigattrlog[6]).matched then
  l_0_0 = this_sigattrlog[6]
else
  if (this_sigattrlog[7]).matched then
    l_0_0 = this_sigattrlog[7]
  else
    if (this_sigattrlog[8]).matched then
      l_0_0 = this_sigattrlog[8]
    else
      if (this_sigattrlog[9]).matched then
        l_0_0 = this_sigattrlog[9]
      else
        if (this_sigattrlog[10]).matched then
          l_0_0 = this_sigattrlog[10]
        else
          if (this_sigattrlog[11]).matched then
            l_0_0 = this_sigattrlog[11]
          else
            if (this_sigattrlog[12]).matched then
              l_0_0 = this_sigattrlog[12]
            else
              if (this_sigattrlog[13]).matched then
                l_0_0 = this_sigattrlog[13]
              else
                if (this_sigattrlog[14]).matched then
                  l_0_0 = this_sigattrlog[14]
                else
                  if (this_sigattrlog[15]).matched then
                    l_0_0 = this_sigattrlog[15]
                  else
                    if (this_sigattrlog[16]).matched then
                      l_0_0 = this_sigattrlog[16]
                    else
                      if (this_sigattrlog[17]).matched then
                        l_0_0 = this_sigattrlog[17]
                      else
                        if (this_sigattrlog[18]).matched then
                          l_0_0 = this_sigattrlog[18]
                        else
                          if (this_sigattrlog[19]).matched then
                            l_0_0 = this_sigattrlog[19]
                          else
                            if (this_sigattrlog[20]).matched then
                              l_0_0 = this_sigattrlog[20]
                            else
                              if (this_sigattrlog[21]).matched then
                                l_0_0 = this_sigattrlog[21]
                              else
                                if (this_sigattrlog[22]).matched then
                                  l_0_0 = this_sigattrlog[22]
                                else
                                  if (this_sigattrlog[23]).matched then
                                    l_0_0 = this_sigattrlog[23]
                                  else
                                    if (this_sigattrlog[24]).matched then
                                      l_0_0 = this_sigattrlog[24]
                                    else
                                      return mp.CLEAN
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
local l_0_7 = l_0_0.utf8p1
if StringStartsWith(l_0_7, "%") then
  return mp.CLEAN
end
local l_0_8 = (bm.get_current_process_startup_info)()
local l_0_9 = (MpCommon.PathToWin32Path)((bm.get_imagepath)())
local l_0_10 = l_0_8.ppid .. l_0_6 .. l_0_9
local l_0_11 = GetRollingQueueKeyValues(l_0_2, l_0_10)
if l_0_11 then
  for l_0_15,l_0_16 in ipairs(l_0_11) do
    if l_0_16 and l_0_16.value then
      if l_0_16.value == l_0_7 then
        return mp.CLEAN
      end
      if (string.match)(l_0_16.value, "(%.[^%.]+)$") == (string.match)(l_0_7, "(%.[^%.]+)$") and AddToAtomicCounter(l_0_2, 1) > 4 then
        return mp.CLEAN
      end
    end
  end
  if l_0_1 < #l_0_11 then
    l_0_3.DataStagerRQName = l_0_11
    l_0_3.DataStagerCount = GetRollingQueueCount(l_0_2)
    ;
    (bm.add_related_string)("DataStagerInfo", (MpCommon.JsonSerialize)(l_0_3), bm.RelatedStringBMReport)
    reportSessionInformation()
    reportTimingData()
    return mp.INFECTED
  end
end
AppendToRollingQueue(l_0_2, l_0_10, l_0_7, l_0_4, l_0_5, 0)
return mp.CLEAN

