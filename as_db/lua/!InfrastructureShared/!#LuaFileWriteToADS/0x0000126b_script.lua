-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaFileWriteToADS\0x0000126b_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("Lua:Context/FileInADS.A!commonadslist") and (mp.getfilesize)() < 4096 then
  return mp.CLEAN
end
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE and (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) then
  local l_0_0 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
  if l_0_0 == nil then
    return mp.CLEAN
  end
  local l_0_1, l_0_2 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
  if l_0_2 ~= nil and #l_0_2 >= 2 and l_0_2:find(":", 1, true) then
    if l_0_1:sub(1, 8) == "\\device\\" then
      l_0_1 = ((MpCommon.PathToWin32Path)(l_0_1)):lower()
    end
    local l_0_3 = l_0_1 .. "\\" .. l_0_2
    if (mp.get_mpattribute)("BM_MZ_FILE") then
      if l_0_0 == "ctxbace.exe" then
        return mp.CLEAN
      end
      ;
      (mp.set_mpattribute)("BM_PeFileInAlternateDataStream")
      local l_0_4 = (MpCommon.QueryPersistContext)(l_0_3, "PeWrite2AlternateDataStream")
      if not l_0_4 then
        (MpCommon.AppendPersistContext)(l_0_3, "PeWrite2AlternateDataStream", 100)
      end
    else
      do
        if l_0_1:find("tasks\\microsoft\\windows\\pla", 1, true) then
          return mp.CLEAN
        else
          if l_0_1:find(":\\programdata\\", 1, true) then
            return mp.CLEAN
          else
            if l_0_2 == "ngen.log" then
              return mp.CLEAN
            else
              if l_0_2:find("wsddfac.sys:x5zn8agxs4", 1, true) then
                return mp.CLEAN
              else
                if l_0_2:find(":6e53bff5-0001-412b-8407-e3aede763511", 1, true) then
                  return mp.CLEAN
                else
                  if l_0_2:find(":4c8cc155-6c1e-11d1-8e41-00c04fb9386d", 1, true) then
                    return mp.CLEAN
                  else
                    if l_0_2:find(":59828bbb-3f72-4c1b-a420-b51ad66eb5d3", 1, true) then
                      return mp.CLEAN
                    else
                      if l_0_2:find("%.blg:.+;summaryinformation") then
                        return mp.CLEAN
                      else
                        if l_0_0 == "dropbox.exe" and l_0_2:find(":com.dropbox.") then
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
        if l_0_0 == "codemeter.exe" and l_0_2:find(":cm_", 1, true) then
          return mp.CLEAN
        end
        if l_0_0 == "gamecenter.exe" and l_0_2:find(":gcdigest0", 1, true) then
          return mp.CLEAN
        end
        if l_0_0 == "launchpad.exe" and l_0_2:find(":crc", 1, true) then
          return mp.CLEAN
        end
        if l_0_0 == "avp.exe" and l_0_2:find(":k[eia][sv]extended") then
          return mp.CLEAN
        end
        if l_0_0 == "wlmail.exe" and l_0_2:find(":oestandardproperty", 1, true) then
          return mp.CLEAN
        end
        if l_0_0 == "defendpointservice.exe" and l_0_2:find(":pg$secure", 1, true) then
          return mp.CLEAN
        end
        if l_0_2:find(":logts", 1, true) or l_0_2:find(":aidfilter", 1, true) then
          local l_0_5 = {}
          l_0_5["xaggregator.exe"] = true
          l_0_5["xtableserver.exe"] = true
          l_0_5["azurebatchscheduler.exe"] = true
          l_0_5["csm.exe"] = true
          l_0_5["storagelogagent.exe"] = true
          l_0_5["startcosmos.exe"] = true
          l_0_5["xgossip.exe"] = true
          l_0_5["nephosfile.exe"] = true
          l_0_5["storagediagnostics.exe"] = true
          l_0_5["poolserver.exe"] = true
          l_0_5["wij.exe"] = true
          l_0_5["xsmbserver.exe"] = true
          l_0_5["xcomputeprocessscheduler.exe"] = true
          l_0_5["xcomputejobscheduler.exe"] = true
          l_0_5["xcachenode.exe"] = true
          l_0_5["xfenativehdfs.exe"] = true
          if l_0_5[l_0_0] then
            return mp.CLEAN
          end
        else
          do
            if l_0_0 == "nutstoreclient.exe" and (l_0_2:find("nssyncsc:nssyncfp", 1, true) or l_0_2:find(":nsorigdir", 1, true) or l_0_2:find(":nsph", 1, true)) then
              return mp.CLEAN
            end
            if l_0_0 == "smartbytenetworkservice.exe" and l_0_2:find("png:originalpath", 1, true) then
              return mp.CLEAN
            end
            if l_0_0 == "mscorsvw.exe" then
              return mp.CLEAN
            end
            if l_0_2:find(":favicon", 1, true) then
              (mp.set_mpattribute)("BM_FaviconAlternateDataStream")
            else
              ;
              (mp.set_mpattribute)("BM_NonPeFileInAlternateDataStream")
            end
            do
              do
                local l_0_6 = (MpCommon.QueryPersistContext)(l_0_3, "FileWrite2AlternateDataStream")
                if not l_0_6 then
                  (MpCommon.AppendPersistContext)(l_0_3, "FileWrite2AlternateDataStream", 100)
                end
                do return mp.INFECTED end
                return mp.CLEAN
              end
            end
          end
        end
      end
    end
  end
end

