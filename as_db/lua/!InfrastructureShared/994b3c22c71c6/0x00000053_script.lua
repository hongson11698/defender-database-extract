-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\994b3c22c71c6\0x00000053_luac 

-- params : ...
-- function num : 0
if isFirstTimeATActive() == false then
  return mp.CLEAN
end
local l_0_0 = 0
local l_0_1 = ""
if (this_sigattrlog[16]).matched then
  l_0_0 = 2
  l_0_1 = (this_sigattrlog[16]).utf8p1
else
  if (this_sigattrlog[17]).matched then
    l_0_0 = 3
    l_0_1 = (this_sigattrlog[17]).utf8p1
  else
    if (this_sigattrlog[24]).matched then
      l_0_0 = 4
      l_0_1 = (this_sigattrlog[24]).utf8p1
    else
      if (this_sigattrlog[25]).matched then
        l_0_0 = 5
        l_0_1 = (this_sigattrlog[25]).utf8p1
      else
        if (this_sigattrlog[26]).matched then
          l_0_0 = 6
          l_0_1 = (this_sigattrlog[26]).utf8p1
        else
          if (this_sigattrlog[18]).matched then
            l_0_0 = 7
            l_0_1 = (this_sigattrlog[18]).utf8p1
          else
            if (this_sigattrlog[27]).matched then
              l_0_0 = 8
              l_0_1 = (this_sigattrlog[27]).utf8p1
            else
              if (this_sigattrlog[28]).matched then
                l_0_0 = 9
                l_0_1 = (this_sigattrlog[28]).utf8p1
              else
                if (this_sigattrlog[29]).matched then
                  l_0_0 = 10
                  l_0_1 = (this_sigattrlog[29]).utf8p1
                else
                  if (this_sigattrlog[19]).matched then
                    l_0_0 = 11
                    l_0_1 = (this_sigattrlog[19]).utf8p1
                  else
                    if (this_sigattrlog[20]).matched then
                      l_0_0 = 12
                      l_0_1 = (this_sigattrlog[20]).utf8p1
                    else
                      if (this_sigattrlog[30]).matched then
                        l_0_0 = 13
                        l_0_1 = (this_sigattrlog[30]).utf8p1
                      else
                        if (this_sigattrlog[31]).matched then
                          l_0_0 = 14
                          l_0_1 = (this_sigattrlog[31]).utf8p1
                        else
                          if (this_sigattrlog[32]).matched then
                            l_0_0 = 15
                            l_0_1 = (this_sigattrlog[32]).utf8p1
                          else
                            if (this_sigattrlog[33]).matched then
                              l_0_0 = 16
                              l_0_1 = (this_sigattrlog[33]).utf8p1
                            else
                              if (this_sigattrlog[34]).matched then
                                l_0_0 = 17
                                l_0_1 = (this_sigattrlog[34]).utf8p1
                              else
                                if (this_sigattrlog[35]).matched then
                                  l_0_0 = 18
                                  l_0_1 = (this_sigattrlog[35]).utf8p1
                                else
                                  if (this_sigattrlog[21]).matched then
                                    l_0_0 = 19
                                    l_0_1 = (this_sigattrlog[21]).utf8p1
                                  else
                                    if (this_sigattrlog[22]).matched then
                                      l_0_0 = 20
                                      l_0_1 = (this_sigattrlog[22]).utf8p1
                                    else
                                      if (this_sigattrlog[23]).matched then
                                        l_0_0 = 21
                                        l_0_1 = (this_sigattrlog[23]).utf8p1
                                      else
                                        if (this_sigattrlog[3]).matched then
                                          l_0_0 = 22
                                          l_0_1 = (this_sigattrlog[3]).utf8p1
                                        else
                                          if (this_sigattrlog[4]).matched then
                                            l_0_0 = 23
                                            l_0_1 = (this_sigattrlog[4]).utf8p1
                                          else
                                            if (this_sigattrlog[36]).matched then
                                              l_0_0 = 24
                                              l_0_1 = (this_sigattrlog[36]).utf8p1
                                            else
                                              if (this_sigattrlog[37]).matched then
                                                l_0_0 = 25
                                                l_0_1 = (this_sigattrlog[37]).utf8p1
                                              else
                                                if (this_sigattrlog[38]).matched then
                                                  l_0_0 = 26
                                                  l_0_1 = (this_sigattrlog[38]).utf8p1
                                                else
                                                  if (this_sigattrlog[39]).matched then
                                                    l_0_0 = 27
                                                    l_0_1 = (this_sigattrlog[39]).utf8p1
                                                  else
                                                    if (this_sigattrlog[40]).matched then
                                                      l_0_0 = 28
                                                      l_0_1 = (this_sigattrlog[40]).utf8p1
                                                    else
                                                      if (this_sigattrlog[41]).matched then
                                                        l_0_0 = 29
                                                        l_0_1 = (this_sigattrlog[41]).utf8p1
                                                      else
                                                        if (this_sigattrlog[42]).matched then
                                                          l_0_0 = 30
                                                          l_0_1 = (this_sigattrlog[42]).utf8p1
                                                        else
                                                          if (this_sigattrlog[43]).matched then
                                                            l_0_0 = 31
                                                            l_0_1 = (this_sigattrlog[43]).utf8p1
                                                          else
                                                            if (this_sigattrlog[5]).matched then
                                                              l_0_0 = 38
                                                              l_0_1 = (this_sigattrlog[5]).utf8p1
                                                            else
                                                              if (this_sigattrlog[44]).matched then
                                                                l_0_0 = 41
                                                                l_0_1 = (this_sigattrlog[44]).utf8p1
                                                              else
                                                                if (this_sigattrlog[45]).matched then
                                                                  l_0_0 = 42
                                                                  l_0_1 = (this_sigattrlog[45]).utf8p1
                                                                else
                                                                  if (this_sigattrlog[46]).matched then
                                                                    l_0_0 = 43
                                                                    l_0_1 = (this_sigattrlog[46]).utf8p1
                                                                  else
                                                                    if (this_sigattrlog[47]).matched then
                                                                      l_0_0 = 44
                                                                      l_0_1 = (this_sigattrlog[47]).utf8p1
                                                                    else
                                                                      if (this_sigattrlog[48]).matched then
                                                                        l_0_0 = 45
                                                                        l_0_1 = (this_sigattrlog[48]).utf8p1
                                                                      else
                                                                        if (this_sigattrlog[49]).matched then
                                                                          l_0_0 = 46
                                                                          l_0_1 = (this_sigattrlog[49]).utf8p1
                                                                        else
                                                                          if (this_sigattrlog[50]).matched then
                                                                            l_0_0 = 47
                                                                            l_0_1 = (this_sigattrlog[50]).utf8p1
                                                                          else
                                                                            if (this_sigattrlog[51]).matched then
                                                                              l_0_0 = 48
                                                                              l_0_1 = (this_sigattrlog[51]).utf8p1
                                                                            else
                                                                              if (this_sigattrlog[52]).matched then
                                                                                l_0_0 = 49
                                                                                l_0_1 = (this_sigattrlog[52]).utf8p1
                                                                              else
                                                                                if (this_sigattrlog[53]).matched then
                                                                                  l_0_0 = 50
                                                                                  l_0_1 = (this_sigattrlog[53]).utf8p1
                                                                                else
                                                                                  if (this_sigattrlog[54]).matched then
                                                                                    l_0_0 = 51
                                                                                    l_0_1 = (this_sigattrlog[54]).utf8p1
                                                                                  else
                                                                                    if (this_sigattrlog[55]).matched then
                                                                                      l_0_0 = 52
                                                                                      l_0_1 = (this_sigattrlog[55]).utf8p1
                                                                                    else
                                                                                      if (this_sigattrlog[56]).matched then
                                                                                        l_0_0 = 53
                                                                                        l_0_1 = (this_sigattrlog[56]).utf8p1
                                                                                      else
                                                                                        if (this_sigattrlog[57]).matched then
                                                                                          l_0_0 = 54
                                                                                          l_0_1 = (this_sigattrlog[57]).utf8p1
                                                                                        else
                                                                                          if (this_sigattrlog[58]).matched then
                                                                                            l_0_0 = 55
                                                                                            l_0_1 = (this_sigattrlog[58]).utf8p1
                                                                                          else
                                                                                            if (this_sigattrlog[59]).matched then
                                                                                              l_0_0 = 58
                                                                                              l_0_1 = (this_sigattrlog[59]).utf8p1
                                                                                            else
                                                                                              if (this_sigattrlog[60]).matched then
                                                                                                l_0_0 = 59
                                                                                                l_0_1 = (this_sigattrlog[60]).utf8p1
                                                                                              else
                                                                                                if (this_sigattrlog[6]).matched then
                                                                                                  l_0_0 = 56
                                                                                                  l_0_1 = (this_sigattrlog[6]).utf8p1
                                                                                                else
                                                                                                  if (this_sigattrlog[7]).matched then
                                                                                                    l_0_0 = 57
                                                                                                    l_0_1 = (this_sigattrlog[7]).utf8p1
                                                                                                  else
                                                                                                    if (this_sigattrlog[8]).matched then
                                                                                                      l_0_0 = 70
                                                                                                      l_0_1 = (this_sigattrlog[8]).utf8p1
                                                                                                    else
                                                                                                      if (this_sigattrlog[9]).matched then
                                                                                                        l_0_0 = 71
                                                                                                        l_0_1 = (this_sigattrlog[9]).utf8p1
                                                                                                      else
                                                                                                        if (this_sigattrlog[10]).matched then
                                                                                                          l_0_0 = 72
                                                                                                          l_0_1 = (this_sigattrlog[10]).utf8p1
                                                                                                        else
                                                                                                          if (this_sigattrlog[11]).matched then
                                                                                                            l_0_0 = 73
                                                                                                            l_0_1 = (this_sigattrlog[11]).utf8p1
                                                                                                          else
                                                                                                            if (this_sigattrlog[12]).matched then
                                                                                                              l_0_0 = 74
                                                                                                              l_0_1 = (this_sigattrlog[12]).utf8p1
                                                                                                            else
                                                                                                              if (this_sigattrlog[13]).matched then
                                                                                                                l_0_0 = 75
                                                                                                                l_0_1 = (this_sigattrlog[13]).utf8p1
                                                                                                              else
                                                                                                                if (this_sigattrlog[14]).matched then
                                                                                                                  l_0_0 = 76
                                                                                                                  l_0_1 = (this_sigattrlog[14]).utf8p1
                                                                                                                else
                                                                                                                  if (this_sigattrlog[15]).matched then
                                                                                                                    l_0_0 = 77
                                                                                                                    l_0_1 = (this_sigattrlog[15]).utf8p1
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
      end
    end
  end
end
local l_0_2 = tonumber((this_sigattrlog[1]).utf8p2)
local l_0_3 = math_floor(l_0_0 / 100) + 1
local l_0_4, l_0_5 = updateFTATData(l_0_3, l_0_0, l_0_2)
if l_0_5 < 604800 then
  return mp.CLEAN
end
;
(bm.add_related_file)(l_0_1)
;
(bm.add_related_string)("FTAT", l_0_4, bm.RelatedStringBMReport)
;
(bm.set_detection_string)(l_0_4)
local l_0_6, l_0_7 = (bm.get_process_relationships)()
for l_0_11,l_0_12 in ipairs(l_0_7) do
  local l_0_13 = (mp.bitand)(l_0_12.reason_ex, 1)
  if l_0_12.ppid ~= nil and l_0_12.image_path ~= nil and l_0_13 == 1 then
    (bm.add_related_file)(l_0_12.image_path)
  end
end
add_parents()
reportSessionInformation()
return mp.INFECTED

