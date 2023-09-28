-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\473b382288637\0x00008293_luac 

-- params : ...
-- function num : 0
if isFirstTimeATActive() == false then
  return mp.CLEAN
end
local l_0_0 = 0
local l_0_1 = ""
if (this_sigattrlog[8]).matched then
  l_0_0 = 100
  l_0_1 = (this_sigattrlog[8]).utf8p1
else
  if (this_sigattrlog[9]).matched then
    l_0_0 = 101
    l_0_1 = (this_sigattrlog[9]).utf8p1
  else
    if (this_sigattrlog[10]).matched then
      l_0_0 = 102
      l_0_1 = (this_sigattrlog[10]).utf8p1
    else
      if (this_sigattrlog[11]).matched then
        l_0_0 = 103
        l_0_1 = (this_sigattrlog[11]).utf8p1
      else
        if (this_sigattrlog[12]).matched then
          l_0_0 = 104
          l_0_1 = (this_sigattrlog[12]).utf8p1
        else
          if (this_sigattrlog[13]).matched then
            l_0_0 = 105
            l_0_1 = (this_sigattrlog[13]).utf8p1
          else
            if (this_sigattrlog[14]).matched then
              l_0_0 = 106
              l_0_1 = (this_sigattrlog[14]).utf8p1
            else
              if (this_sigattrlog[15]).matched then
                l_0_0 = 107
                l_0_1 = (this_sigattrlog[15]).utf8p1
              else
                if (this_sigattrlog[16]).matched then
                  l_0_0 = 108
                  l_0_1 = (this_sigattrlog[16]).utf8p1
                else
                  if (this_sigattrlog[17]).matched then
                    l_0_0 = 109
                    l_0_1 = (this_sigattrlog[17]).utf8p1
                  else
                    if (this_sigattrlog[18]).matched then
                      l_0_0 = 110
                      l_0_1 = (this_sigattrlog[18]).utf8p1
                    else
                      if (this_sigattrlog[19]).matched then
                        l_0_0 = 111
                        l_0_1 = (this_sigattrlog[19]).utf8p1
                      else
                        if (this_sigattrlog[20]).matched then
                          l_0_0 = 112
                          l_0_1 = (this_sigattrlog[20]).utf8p1
                        else
                          if (this_sigattrlog[21]).matched then
                            l_0_0 = 113
                            l_0_1 = (this_sigattrlog[21]).utf8p1
                          else
                            if (this_sigattrlog[22]).matched then
                              l_0_0 = 114
                              l_0_1 = (this_sigattrlog[22]).utf8p1
                            else
                              if (this_sigattrlog[23]).matched then
                                l_0_0 = 115
                                l_0_1 = (this_sigattrlog[23]).utf8p1
                              else
                                if (this_sigattrlog[24]).matched then
                                  l_0_0 = 200
                                  l_0_1 = (this_sigattrlog[24]).utf8p1
                                else
                                  if (this_sigattrlog[25]).matched then
                                    l_0_0 = 201
                                    l_0_1 = (this_sigattrlog[25]).utf8p1
                                  else
                                    if (this_sigattrlog[26]).matched then
                                      l_0_0 = 202
                                      l_0_1 = (this_sigattrlog[26]).utf8p1
                                    else
                                      if (this_sigattrlog[27]).matched then
                                        l_0_0 = 203
                                        l_0_1 = (this_sigattrlog[27]).utf8p1
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
local l_0_2 = tonumber((this_sigattrlog[6]).utf8p2)
local l_0_3 = math_floor(l_0_0 / 100) + 1
local l_0_4, l_0_5 = updateFTATData(l_0_3, l_0_0, l_0_2)
if l_0_5 < 604800 then
  return mp.CLEAN
end
;
(bm.add_related_file)(l_0_1)
;
(bm.add_related_string)("FTAT", l_0_4, bm.RelatedStringBMReport)
local l_0_6 = bm.set_detection_string
local l_0_7 = safeJsonSerialize
local l_0_8 = .end
l_0_6(l_0_7({FirstTimeATData = l_0_4}), l_0_8)
l_0_6 = bm
l_0_6 = l_0_6.trigger_sig
l_0_6("FirstTimeAT.G", l_0_8)
l_0_6 = bm
l_0_6 = l_0_6.get_process_relationships
l_0_6 = l_0_6()
-- DECOMPILER ERROR at PC253: Overwrote pending register: R8 in 'AssignReg'

l_0_8 = l_0_8(R9_PC255)
for l_0_12,i_2 in l_0_8 do
  local l_0_13 = (mp.bitand)(l_0_12.reason_ex, 1)
  if l_0_12.ppid ~= nil and l_0_12.image_path ~= nil and l_0_13 == 1 then
    (bm.add_related_file)(l_0_12.image_path)
  end
end
add_parents()
reportSessionInformation()
do return mp.INFECTED end
-- DECOMPILER ERROR at PC283: Confused about usage of register R8 for local variables in 'ReleaseLocals'


