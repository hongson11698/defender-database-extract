-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\32b3dad10492\0x000080ca_luac 

-- params : ...
-- function num : 0
do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 then
    local l_0_0 = safeJsonDeserialize((this_sigattrlog[1]).utf8p2)
    if l_0_0 then
      if l_0_0.ip and tonumber((l_0_0.action).action) == 1 and l_0_0.confidence >= 99 then
        local l_0_1 = tonumber((l_0_0.action).parameter)
        local l_0_2 = pcall
        local l_0_3 = MpCommon.AddBlockingFirewallRule
        local l_0_4 = l_0_0.ip
        local l_0_5 = (l_0_0.action).ttl
        l_0_2(l_0_3, l_0_4, l_0_5, (mp.bitand)(l_0_1, 1) == 1, (mp.bitand)(l_0_1, 2) == 2)
        l_0_2 = bm
        l_0_2 = l_0_2.trigger_sig
        l_0_3 = "GenericRansomwareRemoteEncryption"
        l_0_4 = "Malware"
        l_0_2(l_0_3, l_0_4)
      end
      l_0_0.ppID = nil
      l_0_0.imagePath = nil
      l_0_0.sessionInfo = reportSessionInformationInclusive()
      if (versioning.IsSeville)() then
        (bm.set_detection_string)(safeJsonSerialize(l_0_0))
      end
      return mp.INFECTED
    end
  end
  do return mp.CLEAN end
  -- DECOMPILER ERROR: 5 unprocessed JMP targets
end

