-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFTrojanWin32PFAppsSusShellDropA\0x00000181_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID)
if not l_0_0 then
  return mp.CLEAN
end
local l_0_1 = nil
if (MpCommon.DoesProcessHaveAttribute)(l_0_0, "PFApp_Parent") then
  l_0_1 = (MpCommon.GetProcessAttributeValue)(l_0_0, "PFApp_Parent")
end
do
  if not l_0_1 then
    local l_0_2, l_0_3 = (MpCommon.DoesProcessHaveAttribute)(l_0_0, "inherit:PFApp_Parent")
    if l_0_2 then
      l_0_3 = MpCommon
      l_0_3 = l_0_3.GetProcessAttributeValue
      l_0_3 = l_0_3(l_0_0, "inherit:PFApp_Parent")
      l_0_1 = l_0_3
    end
  end
  -- DECOMPILER ERROR at PC40: Confused about usage of register: R2 in 'UnsetPending'

  if not l_0_2 then
    return mp.CLEAN
  end
  local l_0_4 = nil
  do
    do
      if (mp.enum_mpattributesubstring)("") and #(mp.enum_mpattributesubstring)("") > 0 then
        local l_0_6 = {ServerName = l_0_1 or "none"}
        for l_0_10,l_0_11 in ipairs((mp.enum_mpattributesubstring)("")) do
          local l_0_7, l_0_8 = , {}
          -- DECOMPILER ERROR at PC69: Confused about usage of register: R10 in 'UnsetPending'

          if (MpCommon.StringRegExpSearch)("((alf|slf|tel|detection:).*(webshell|shellcode|shellexecute|downloader|exploit|backdoor))", (string.lower)(R10_PC69)) and #l_0_8 < 15 then
            (table.insert)(l_0_8, l_0_13)
          end
        end
        -- DECOMPILER ERROR at PC87: Confused about usage of register: R5 in 'UnsetPending'

        l_0_6.Attributes = "[" .. (table.concat)(l_0_8, "|") .. "]"
        ;
        (mp.set_mpattribute)("MpInternal_researchdata=EvidenceData=" .. (MpCommon.Base64Encode)(safeJsonSerialize(l_0_6)))
        -- DECOMPILER ERROR at PC104: Confused about usage of register: R5 in 'UnsetPending'

        if #l_0_8 > 0 then
          return mp.INFECTED
        end
      end
      do return mp.CLEAN end
      -- DECOMPILER ERROR at PC113: freeLocal<0 in 'ReleaseLocals'

    end
  end
end

