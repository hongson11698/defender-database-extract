-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\84b3c969e003\0x00000034_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 then
    local l_0_0, l_0_1, l_0_2, l_0_3 = nil
  else
  end
  if not (this_sigattrlog[2]).matched or not (this_sigattrlog[2]).utf8p2 or not (this_sigattrlog[2]).utf8p2 then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC33: Confused about usage of register: R0 in 'UnsetPending'

  local l_0_4 = nil
  if not safeJsonDeserialize((this_sigattrlog[2]).utf8p2) then
    return mp.CLEAN
  end
  do
    local l_0_5, l_0_6, l_0_7, l_0_8, l_0_9, l_0_10 = , (safeJsonDeserialize((this_sigattrlog[2]).utf8p2)).appended_ext or nil
    -- DECOMPILER ERROR at PC44: Confused about usage of register: R2 in 'UnsetPending'

    if not l_0_6 then
      return mp.CLEAN
    end
    -- DECOMPILER ERROR at PC52: Confused about usage of register: R2 in 'UnsetPending'

    ;
    (bm.trigger_sig)("GenericRansomware:Extension", l_0_6)
    -- DECOMPILER ERROR at PC57: Confused about usage of register: R2 in 'UnsetPending'

    ;
    (bm.add_related_string)("GenericRansomware:Extension", l_0_6, bm.RelatedStringBMReport)
    local l_0_11 = nil
    -- DECOMPILER ERROR at PC126: Confused about usage of register: R2 in 'UnsetPending'

    if ({["._locked"] = true, [".akira"] = true, [".basta"] = true, [".blackbyte"] = true, [".blacksuit"] = true, [".cerber"] = true, [".cerber2"] = true, [".cerber3"] = true, [".cryptolocker"] = true, [".coaq"] = true, [".cosakos"] = true, [".cuba"] = true, [".cymcrypt"] = true, [".dark_power"] = true, [".devil"] = true, [".dharma"] = true, [".eight"] = true, [".encryptedyourfiles"] = true, [".enigma"] = true, [".everest"] = true, [".fargo"] = true, [".foty"] = true, [".fs0ciety"] = true, [".gatz"] = true, [".gazprom"] = true, [".hack0"] = true, [".itlock3"] = true, [".itlock4"] = true, [".jyos"] = true, [".karma"] = true, [".kigatsu"] = true, [".kitz"] = true, [".l0cked"] = true, [".lockbit"] = true, [".locky"] = true, [".mallox"] = true, [".malox"] = true, [".medusa"] = true, [".met@n"] = true, [".neqp"] = true, [".niwm"] = true, [".nokonoko"] = true, [".nokoyawa"] = true, [".pandora"] = true, [".play"] = true, [".proton"] = true, [".qotr"] = true, [".quantum"] = true, [".ranzylocked"] = true, [".rook"] = true, [".royal"] = true, [".royal_w"] = true, [".rsnslocked"] = true, [".shino"] = true, [".thor"] = true, [".tury"] = true, [".venus"] = true, [".v-society"] = true, [".weon"] = true, [".wikon"] = true, [".wncry"] = true, [".wncryt"] = true, [".zatp"] = true, [".zepto"] = true})[l_0_6] == true then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

