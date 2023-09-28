-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\9bd7ffa5631f\0x000080fb_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = (string.lower)(l_0_0.image_path)
if l_0_1:match("([^\\]+)$") ~= "sdclt.exe" then
  return mp.CLEAN
end
local l_0_2 = (sysio.RegExpandUserKey)("HKCU\\Software\\CLASSES\\FOLDER\\SHELL\\OPEN\\COMMAND")
if l_0_2 then
  for l_0_6,l_0_7 in pairs(l_0_2) do
    if (string.find)((string.lower)(l_0_7), "hkcu@s-1-5-21-", 1, true) then
      local l_0_8 = (sysio.RegOpenKey)(l_0_7)
      if l_0_8 then
        local l_0_9 = (sysio.GetRegValueAsString)(l_0_8, "")
        if l_0_9 then
          if (string.len)(l_0_9) < 4 and (string.lower)(l_0_9) ~= "cmd" then
            return mp.CLEAN
          end
          set_research_data("DefaultValue", l_0_9, false)
          local l_0_10 = (mp.GetScannedPPID)()
          local l_0_11 = {}
          ;
          (table.insert)(l_0_11, l_0_10)
          ;
          (MpCommon.SetPersistContextNoPath)("UACBypassRegSet.A", l_0_11, 5)
          return mp.INFECTED
        end
      end
    end
  end
end
do
  return mp.CLEAN
end

