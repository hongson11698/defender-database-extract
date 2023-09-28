-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000115c_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE and (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
  local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
  if l_0_1:find("\\appdata\\local\\temp", 1, true) ~= nil or l_0_1:find("\\local settings\\temp", 1, true) ~= nil then
    local l_0_2 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
    if l_0_2 == "opera.exe" then
      (mp.set_mpattribute)("Lua:ContextualDropOperaTemp")
    else
      if l_0_2 == "plugin-container.exe" then
        (mp.set_mpattribute)("Lua:ContextualDropPlugincontainerTemp")
      else
        if l_0_2 == "vmhost.exe" then
          local l_0_3 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME))
          if l_0_3 ~= "cpnprt2win32.cid" and l_0_3 ~= "cpnprt2.cid" then
            (mp.set_mpattribute)("Lua:ContextualDropVmhostTemp")
          end
        else
          do
            if l_0_2 == "svchost.exe" then
              local l_0_4 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME)
              if l_0_4:len() < 4 then
                (mp.set_mpattribute)("Lua:ContextualDropSvchostTemp.B")
              else
                local l_0_5 = (string.lower)((string.sub)(l_0_4, -4))
                if l_0_4:find("^BIT[0-9A-F][0-9A-F]?[0-9A-F]?[0-9A-F]?%.tmp$") ~= 1 and l_0_5 ~= ".mui" and l_0_5 ~= ".pyd" then
                  (mp.set_mpattribute)("Lua:ContextualDropSvchostTemp.B")
                end
              end
            end
            do
              return mp.CLEAN
            end
          end
        end
      end
    end
  end
end

