-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#SLFASRCALL5beb7efe-fd9a-4556-801d-275e5ffc04cc\0x00000461_luac 

-- params : ...
-- function num : 0
if not (mp.IsHipsRuleEnabled)("5beb7efe-fd9a-4556-801d-275e5ffc04cc") then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0 == nil or l_0_0 == "" then
  return mp.CLEAN
end
local l_0_1 = (string.match)(l_0_0, "(%.[^%.]+)$")
local l_0_2 = false
if (mp.get_mpattribute)("Nscript:Type_ps") then
  if l_0_1 == ".ps1" then
    l_0_2 = true
  else
    return mp.CLEAN
  end
else
  if l_0_1 == ".psd1" or l_0_1 == ".psm1" or l_0_1 == ".ps1xml" or l_0_1 == ".psrc" or l_0_1 == ".pssc" or l_0_1 == ".cdxml" or l_0_1 == ".testpasses" then
    return mp.CLEAN
  end
end
local l_0_3 = false
if (mp.get_contextdata)(mp.CONTEXT_DATA_HAS_MOTW_ADS) == true and (mp.GetMOTWZone)() == 3 then
  l_0_3 = true
end
local l_0_4 = false
local l_0_5 = (mp.get_mpattributevalue)("RPF:TobeetJs:Probability")
if l_0_5 ~= nil then
  if not l_0_2 and not l_0_3 and l_0_5 >= 90 then
    l_0_4 = true
  end
  if not l_0_2 and l_0_3 and l_0_5 >= 85 then
    l_0_4 = true
  end
  if l_0_2 and not l_0_3 and l_0_5 >= 95 then
    l_0_4 = true
  end
  if l_0_2 and l_0_3 and l_0_5 >= 90 then
    l_0_4 = true
  end
end
if not l_0_4 then
  l_0_5 = (mp.get_mpattributevalue)("RPF:Bampa:Probability")
  if l_0_5 ~= nil then
    if not l_0_2 and not l_0_3 and l_0_5 >= 99 then
      l_0_4 = true
    end
    if not l_0_2 and l_0_3 and l_0_5 >= 95 then
      l_0_4 = true
    end
    if l_0_2 and not l_0_3 and l_0_5 > 99 then
      l_0_4 = true
    end
    if l_0_2 and l_0_3 and l_0_5 >= 99 then
      l_0_4 = true
    end
  end
end
if not l_0_4 then
  l_0_5 = (mp.get_mpattributevalue)("RPF:Mampa:Probability")
  if l_0_5 ~= nil then
    if not l_0_2 and not l_0_3 and l_0_5 >= 95 then
      l_0_4 = true
    end
    if not l_0_2 and l_0_3 and l_0_5 >= 90 then
      l_0_4 = true
    end
    if l_0_2 and not l_0_3 and l_0_5 >= 98 then
      l_0_4 = true
    end
    if l_0_2 and l_0_3 and l_0_5 >= 95 then
      l_0_4 = true
    end
  end
end
if l_0_4 or (mp.get_mpattribute)("AsrMatch5beb7efe") == true or (MpCommon.QueryPersistContext)(l_0_0, "enghipscpy:blockexecution:5beb7efe-fd9a-4556-801d-275e5ffc04cc") == true then
  if (mp.IsPathExcludedForHipsRule)((MpCommon.PathToWin32Path)(l_0_0), "5beb7efe-fd9a-4556-801d-275e5ffc04cc") then
    return mp.CLEAN
  end
  if (string.find)(l_0_0, "\\appdata\\roaming\\microsoft\\office\\16.0\\[^\\]+\\proofing\\") then
    return mp.CLEAN
  else
    if (string.find)(l_0_0, "\\appdata\\roaming\\microsoft\\office\\recent\\index.dat", 1, true) then
      return mp.CLEAN
    else
      if (string.find)(l_0_0, "\\program files[^\\]*\\microsoft office\\root\\office%d+\\") then
        return mp.CLEAN
      else
        if (string.find)(l_0_0, "\\windows\\imecache\\[^\\]+\\appdeploytoolkit\\appdeploytoolkitmain.cs") then
          return mp.CLEAN
        else
          if (string.find)(l_0_0, "\\windows\\ccmcache\\[^\\]+\\appdeploytoolkit\\appdeploytoolkitmain.cs") then
            return mp.CLEAN
          else
            if (string.find)(l_0_0, "\\windowspowershell\\v1.0\\modules\\", 1, true) then
              return mp.CLEAN
            else
              if (string.find)(l_0_0, "\\eceagentservice\\[^\\]+\\[^\\]+%.psd1$") then
                return mp.CLEAN
              else
                if (string.find)(l_0_0, "\\tanium\\tanium client\\tools\\endusernotifications\\", 1, true) then
                  return mp.CLEAN
                else
                  if (string.find)(l_0_0, "\\tanium\\tanium client\\downloads\\action_[^\\]+\\[^\\]+%.vbs$") then
                    return mp.CLEAN
                  else
                    if (string.find)(l_0_0, "\\sar\\rules\\[^\\]+\\rulefiles\\lib\\[^\\]+%.vbs$") then
                      return mp.CLEAN
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  local l_0_6 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
  local l_0_7 = "enghipscpy:blockexecution:5beb7efe-fd9a-4556-801d-275e5ffc04cc"
  if l_0_6 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
    if (mp.get_mpattribute)("RPF:TopLevelFile") == false then
      return mp.CLEAN
    end
    ;
    (mp.set_mpattribute)("MpDisableCaching")
    if (MpCommon.GetPersistContextCount)(l_0_0) == 0 then
      local l_0_8 = {}
      ;
      (table.insert)(l_0_8, l_0_7)
      ;
      (MpCommon.SetPersistContext)(l_0_0, l_0_8, 0)
    else
      do
        if not (MpCommon.QueryPersistContext)(l_0_0, l_0_7) then
          (MpCommon.AppendPersistContext)(l_0_0, l_0_7, 0)
        end
        do return mp.CLEAN end
        if l_0_6 == mp.SCANREASON_ONOPEN then
          if (mp.get_mpattribute)("RPF:TopLevelFile") == false and (string.find)(l_0_0, "\\appdata\\local\\temp\\", 1, true) == nil then
            return mp.CLEAN
          end
          if (string.find)(l_0_0, ">%[msilres") then
            (mp.set_mpattribute)("LUA:InsideMSILRES")
            return mp.CLEAN
          end
          if (mp.get_mpattribute)("LUA:InsideMSILRES") then
            return mp.CLEAN
          end
          ;
          (mp.set_mpattribute)("MpDisableCaching")
          local l_0_9 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)
          if l_0_9 == nil or l_0_9 == "" then
            return mp.CLEAN
          end
          l_0_9 = (string.lower)(l_0_9)
          local l_0_10 = {}
          l_0_10["cscript.exe"] = true
          l_0_10["wscript.exe"] = true
          l_0_10["winword.exe"] = true
          l_0_10["powerpnt.exe"] = true
          l_0_10["excel.exe"] = true
          l_0_10["powershell.exe"] = true
          -- DECOMPILER ERROR at PC470: Unhandled construct in 'MakeBoolean' P1

          if l_0_10[l_0_9] == true and l_0_9 == "powershell.exe" and l_0_2 then
            return mp.INFECTED
          end
        end
        do
          do return mp.INFECTED end
          return mp.CLEAN
        end
      end
    end
  end
end

