-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\9fd7d447af85\0x00008005_luac 

-- params : ...
-- function num : 0
local l_0_0 = (sysio.RegExpandUserKey)("HKCU\\Software\\Classes\\Ms-Settings\\Shell\\Open\\Command")
if l_0_0 then
  for l_0_4,l_0_5 in pairs(l_0_0) do
    if (string.find)((string.lower)(l_0_5), "hkcu@s-1-5-21-", 1, true) then
      local l_0_6 = (sysio.RegOpenKey)(l_0_5)
      if l_0_6 then
        local l_0_7 = (sysio.GetRegValueAsString)(l_0_6, "")
        if l_0_7 then
          if (string.len)(l_0_7) < 4 and (string.lower)(l_0_7) ~= "cmd" then
            return mp.CLEAN
          end
          set_research_data("DefaultValue", l_0_7, false)
          local l_0_8 = (mp.GetScannedPPID)()
          local l_0_9 = {}
          ;
          (table.insert)(l_0_9, l_0_8)
          ;
          (MpCommon.SetPersistContextNoPath)("UACBypassRegSet.A", l_0_9, 5)
          return mp.INFECTED
        end
      end
    end
  end
end
do
  return mp.CLEAN
end

