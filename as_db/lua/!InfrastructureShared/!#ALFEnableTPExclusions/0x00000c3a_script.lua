-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFEnableTPExclusions\0x00000c3a_luac 

-- params : ...
-- function num : 0
if (mp.GetResmgrBasePlugin)() ~= "Regkeyvalue" then
  return mp.CLEAN
end
if not (mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH) then
  return mp.CLEAN
end
return mp.INFECTED

