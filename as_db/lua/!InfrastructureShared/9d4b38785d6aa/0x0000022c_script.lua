-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\9d4b38785d6aa\0x0000022c_luac 

-- params : ...
-- function num : 0
local l_0_0 = ""
local l_0_1 = 30
local l_0_2 = "DataStager"
local l_0_3 = {}
local l_0_4 = 3600
local l_0_5 = 100
local l_0_6 = "|"
if (this_sigattrlog[30]).matched then
  l_0_0 = this_sigattrlog[30]
else
  if (this_sigattrlog[31]).matched then
    l_0_0 = this_sigattrlog[31]
  else
    if (this_sigattrlog[32]).matched then
      l_0_0 = this_sigattrlog[32]
    else
      if (this_sigattrlog[33]).matched then
        l_0_0 = this_sigattrlog[33]
      else
        if (this_sigattrlog[34]).matched then
          l_0_0 = this_sigattrlog[34]
        else
          if (this_sigattrlog[35]).matched then
            l_0_0 = this_sigattrlog[35]
          else
            if (this_sigattrlog[36]).matched then
              l_0_0 = this_sigattrlog[36]
            else
              if (this_sigattrlog[37]).matched then
                l_0_0 = this_sigattrlog[37]
              else
                if (this_sigattrlog[38]).matched then
                  l_0_0 = this_sigattrlog[38]
                else
                  if (this_sigattrlog[39]).matched then
                    l_0_0 = this_sigattrlog[39]
                  else
                    if (this_sigattrlog[40]).matched then
                      l_0_0 = this_sigattrlog[40]
                    else
                      if (this_sigattrlog[41]).matched then
                        l_0_0 = this_sigattrlog[41]
                      else
                        if (this_sigattrlog[42]).matched then
                          l_0_0 = this_sigattrlog[42]
                        else
                          if (this_sigattrlog[43]).matched then
                            l_0_0 = this_sigattrlog[43]
                          else
                            if (this_sigattrlog[44]).matched then
                              l_0_0 = this_sigattrlog[44]
                            else
                              if (this_sigattrlog[45]).matched then
                                l_0_0 = this_sigattrlog[45]
                              else
                                if (this_sigattrlog[46]).matched then
                                  l_0_0 = this_sigattrlog[46]
                                else
                                  if (this_sigattrlog[47]).matched then
                                    l_0_0 = this_sigattrlog[47]
                                  else
                                    if (this_sigattrlog[48]).matched then
                                      l_0_0 = this_sigattrlog[48]
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
local l_0_7 = function(l_1_0)
  -- function num : 0_0
  local l_1_1, l_1_2 = l_1_0:match, l_1_0
  do
    local l_1_3 = "(.*[/\\])"
    do return l_1_1(l_1_2, l_1_3) end
    -- DECOMPILER ERROR at PC4: Confused about usage of register R2 for local variables in 'ReleaseLocals'

  end
end

local l_0_8 = l_0_0.utf8p1
local l_0_9 = l_0_0.utf8p2
if l_0_7(l_0_8) == l_0_7(l_0_9) then
  return mp.CLEAN
end
local l_0_10 = (bm.get_current_process_startup_info)()
local l_0_11 = (MpCommon.PathToWin32Path)((bm.get_imagepath)())
local l_0_12 = l_0_10.ppid .. l_0_6 .. l_0_11 .. l_0_6 .. l_0_7(l_0_9)
local l_0_13 = GetRollingQueueKeyValues(l_0_2, l_0_12)
if l_0_13 then
  for l_0_17,l_0_18 in ipairs(l_0_13) do
    if l_0_18 and l_0_18.value == l_0_9 then
      return mp.CLEAN
    end
  end
  if l_0_1 < #l_0_13 then
    l_0_3.DataStagerRQName = GetRollingQueueKeys(l_0_2)
    l_0_3.DataStagerCount = GetRollingQueueCount(l_0_2)
    l_0_3 = (MpCommon.JsonSerialize)(l_0_3)
    ;
    (bm.add_related_string)("DataStagerInfo", l_0_3, bm.RelatedStringBMReport)
    reportSessionInformation()
    reportTimingData()
    return mp.INFECTED
  end
end
AppendToRollingQueue(l_0_2, l_0_12, l_0_9, l_0_4, l_0_5, 0)
return mp.CLEAN

