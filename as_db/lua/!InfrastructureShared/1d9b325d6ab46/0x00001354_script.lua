-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\1d9b325d6ab46\0x00001354_luac 

-- params : ...
-- function num : 0
if IsTacticObservedGlobal("Execution_CommandAndScriptingInterpreter_Metasploit", false) then
  return mp.INFECTED
end
return mp.CLEAN

