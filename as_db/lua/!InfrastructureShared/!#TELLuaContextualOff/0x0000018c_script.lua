-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#TELLuaContextualOff\0x0000018c_luac 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  return mp.CLEAN
end
if (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) ~= true then
  return mp.CLEAN
end
if GetCtxOfficeProc() ~= "productivity2" then
  return mp.CLEAN
end
local l_0_0 = {}
l_0_0[".bat"] = true
l_0_0[".cmd"] = true
l_0_0[".com"] = true
l_0_0[".dll"] = true
l_0_0[".exe"] = true
l_0_0[".hta"] = true
l_0_0[".jar"] = true
l_0_0[".js"] = true
l_0_0[".jse"] = true
l_0_0[".lnk"] = true
l_0_0[".ocx"] = true
l_0_0[".pif"] = true
l_0_0[".ps1"] = true
l_0_0[".psc1"] = true
l_0_0[".scr"] = true
l_0_0[".sys"] = true
l_0_0[".vbe"] = true
l_0_0[".vbs"] = true
l_0_0[".wsc"] = true
l_0_0[".wsf"] = true
l_0_0[".wsh"] = true
local l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME)
l_0_1 = (l_0_1 == nil and "" or l_0_1):lower()
if ((l_0_1:sub(-5)):match("(%.%w+)$") == nil and "") or l_0_0[(l_0_1:sub(-5)):match("(%.%w+)$")] ~= true then
  local l_0_3 = nil
  local l_0_4 = nil
  if (MpCommon.GetPersistContext)((mp.getfilename)()) then
    (table.insert)((MpCommon.GetPersistContext)((mp.getfilename)()), "contextualofficecreaterunnablecontent")
  else
    local l_0_5 = nil
    l_0_5 = {"contextualofficecreaterunnablecontent"}
  end
  do
    do
      -- DECOMPILER ERROR at PC101: Confused about usage of register: R4 in 'UnsetPending'

      ;
      (MpCommon.SetPersistContext)(l_0_4, l_0_5, 0)
      ;
      (mp.set_mpattribute)("MpDisableCaching")
      do return mp.CLEAN end
      local l_0_7 = nil
      local l_0_8 = ((MpCommon.PathToWin32Path)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH)) == nil and "" or (MpCommon.PathToWin32Path)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))):lower()
      local l_0_9 = ((mp.ContextualExpandEnvironmentVariables)("%appdata%") == nil and "" or (mp.ContextualExpandEnvironmentVariables)("%appdata%")):lower()
      local l_0_10 = ((mp.ContextualExpandEnvironmentVariables)("%localappdata%") == nil and "" or (mp.ContextualExpandEnvironmentVariables)("%localappdata%")):lower()
      local l_0_11 = ((MpCommon.ExpandEnvironmentVariables)("%systemdrive%") == nil and "" or (MpCommon.ExpandEnvironmentVariables)("%systemdrive%")):lower()
      if l_0_7 == ".lnk" then
        if l_0_8:find(l_0_9 .. "\\microsoft\\office\\", 1, true) ~= nil then
          return mp.CLEAN
        end
        if l_0_8:find(l_0_9 .. "\\microsoft\\excel\\", 1, true) ~= nil then
          return mp.CLEAN
        end
        if l_0_8:find(l_0_9 .. "\\microsoft\\onenote\\", 1, true) ~= nil then
          return mp.CLEAN
        end
        if l_0_8:find(l_0_9 .. "\\microsoft\\outlook\\", 1, true) ~= nil then
          return mp.CLEAN
        end
        if l_0_8:find(l_0_9 .. "\\microsoft\\powerpoint\\", 1, true) ~= nil then
          return mp.CLEAN
        end
        if l_0_8:find(l_0_9 .. "\\microsoft\\word\\", 1, true) ~= nil then
          return mp.CLEAN
        end
        if l_0_8:find(l_0_9 .. "\\microsoft\\internet explorer\\quick launch", 1, true) ~= nil then
          return mp.CLEAN
        end
        if l_0_8 == l_0_9 .. "\\microsoft\\windows\\start menu\\programs\\startup" and l_0_1 == "send to onenote.lnk" then
          return mp.CLEAN
        end
        if l_0_8:find(l_0_10 .. "\\invincea\\enterprise\\", 1, true) ~= nil then
          return mp.CLEAN
        end
        if l_0_8:find(l_0_11 .. "\\appsensevirtual\\", 1, true) ~= nil then
          return mp.CLEAN
        end
        if l_0_8:find(((MpCommon.ExpandEnvironmentVariables)("%systemroot%") == nil and "" or (MpCommon.ExpandEnvironmentVariables)("%systemroot%")):lower() .. "\\syswow64\\config\\systemprofile\\appdata\\roaming\\microsoft\\office\\", 1, true) ~= nil then
          return mp.CLEAN
        end
      else
        if l_0_7 == ".dll" then
          if l_0_8:find(l_0_10 .. "\\assembly\\tmp\\", 1, true) ~= nil then
            return mp.CLEAN
          end
          if l_0_8 == l_0_9 .. "\\microsoft\\msoidentitycrl\\production" then
            return mp.CLEAN
          end
        else
          if l_0_7 == ".js" then
            if l_0_8:find(l_0_10 .. "\\microsoft\\windows\\inetcache\\ie\\", 1, true) ~= nil then
              return mp.CLEAN
            end
            if l_0_8:find(l_0_10 .. "\\microsoft\\windows\\temporary internet files\\content.ie5\\", 1, true) ~= nil then
              return mp.CLEAN
            end
          else
            if l_0_7 == ".com" and l_0_8 == l_0_10 .. "\\microsoft\\forms" then
              return mp.CLEAN
            end
          end
        end
      end
      return mp.INFECTED
    end
  end
end

