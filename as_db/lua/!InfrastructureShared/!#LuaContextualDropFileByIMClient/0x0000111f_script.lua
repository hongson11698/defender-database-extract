-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaContextualDropFileByIMClient\0x0000111f_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE and (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
  local l_0_1 = GetSuspiciuousFileType((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME))
  local l_0_2 = "Lua:ContextualDropFile"
  local l_0_3 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
  local l_0_4 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
  if l_0_3 == "skype.exe" then
    l_0_2 = l_0_2 .. "Skype"
    if l_0_4:find("\\skype\\my skype received files", 1, true) ~= nil then
      l_0_2 = l_0_2 .. "Default"
    else
      l_0_2 = l_0_2 .. "Ext"
    end
  else
    if l_0_3 == "lync.exe" then
      l_0_2 = l_0_2 .. "Lync"
      if l_0_4:find("\\my received files", 1, true) ~= nil then
        l_0_2 = l_0_2 .. "Default"
      else
        l_0_2 = l_0_2 .. "Ext"
      end
    else
      if l_0_3 == "yahoomessenger.exe" then
        l_0_2 = l_0_2 .. "Yahoo"
        if l_0_4:find("\\downloads", 1, true) ~= nil then
          l_0_2 = l_0_2 .. "Default"
        else
          l_0_2 = l_0_2 .. "Ext"
        end
      else
        return mp.CLEAN
      end
    end
  end
  if l_0_1 then
    l_0_2 = l_0_2 .. l_0_1
  else
    l_0_2 = l_0_2 .. "Any"
  end
  ;
  (mp.set_mpattribute)(l_0_2)
end
do
  return mp.CLEAN
end

