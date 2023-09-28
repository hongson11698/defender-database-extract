-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\b5b325675110\0x00000764_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
local l_0_1 = GetRollingQueueKeyValue("ExchgVersion", l_0_0)
if l_0_1 == nil then
  local l_0_2 = "ExchgVersion"
  local l_0_3 = 86400
  do
    if not (sysio.RegOpenKey)("HKLM\\Software\\Microsoft\\ExchangeServer\\V15\\Setup") then
      local l_0_4, l_0_5, l_0_6, l_0_8, l_0_10, l_0_12 = (sysio.RegOpenKey)("HKLM\\Software\\Microsoft\\ExchangeServer\\V14\\Setup")
    end
    -- DECOMPILER ERROR at PC25: Confused about usage of register: R4 in 'UnsetPending'

    if not l_0_4 then
      (bm.add_related_string)("ExchgSetupErr", "true", bm.RelatedStringBMReport)
      return mp.INFECTED
    end
    -- DECOMPILER ERROR at PC39: Confused about usage of register: R4 in 'UnsetPending'

    do
      do
        local l_0_7, l_0_9, l_0_11, l_0_13 = , (sysio.GetRegValueAsString)(l_0_4, "OwaVersion") or "nil"
        -- DECOMPILER ERROR at PC45: Confused about usage of register: R5 in 'UnsetPending'

        -- DECOMPILER ERROR at PC50: Confused about usage of register: R5 in 'UnsetPending'

        if l_0_9 then
          AppendToRollingQueue(l_0_2, l_0_0, l_0_9, l_0_3)
          -- DECOMPILER ERROR at PC56: Confused about usage of register: R5 in 'UnsetPending'

          ;
          (bm.add_related_string)("ExchgVersion", l_0_9, bm.RelatedStringBMReport)
        end
        ;
        (bm.add_related_string)("ExchgVersion", l_0_1, bm.RelatedStringBMReport)
        return mp.INFECTED
      end
    end
  end
end

