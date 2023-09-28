-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\508b37b366da0\0x000001ff_luac 

-- params : ...
-- function num : 0
if not (MpCommon.QueryPersistContextNoPath)("recentFileDrop", "on") then
  return mp.CLEAN
end
local l_0_0 = ((bm.get_imagepath)()):lower()
local l_0_1 = (bm.get_current_process_startup_info)()
if l_0_0 == nil or l_0_1 == nil then
  return mp.CLEAN
end
local l_0_2 = function(l_1_0, l_1_1)
  -- function num : 0_0
  local l_1_2 = "(tomcat|nginx|httpd|w3wp|sqlservr|oracle|msmdsrv|msdtssrvr|mysql)"
  local l_1_3 = "(-Dweblogic|catalina|tomcat)"
  local l_1_4 = "(mongrel|httpd|thin|puma|rails)"
  local l_1_5 = ((string.lower)(l_1_0)):match("([^\\]+)$")
  local l_1_6 = false
  l_1_6 = (MpCommon.StringRegExpSearch)(l_1_2, l_1_5)
  if l_1_6 then
    return true
  else
    if (string.find)(l_1_5, "java", 1, true) and l_1_1 ~= nil then
      l_1_6 = (MpCommon.StringRegExpSearch)(l_1_3, l_1_1)
      if l_1_6 then
        return true
      end
    else
      if (string.find)(l_1_5, "ruby.exe", 1, true) and l_1_1 ~= nil then
        l_1_6 = (MpCommon.StringRegExpSearch)(l_1_4, l_1_1)
        if l_1_6 then
          return true
        end
      else
        return false
      end
    end
  end
end

local l_0_3 = false
if l_0_2(l_0_0, l_0_1.commandline) then
  l_0_3 = true
else
  local l_0_4, l_0_5 = (bm.get_process_relationships)()
  for l_0_9,l_0_10 in ipairs(l_0_4) do
    l_0_0 = l_0_10.image_path
    l_0_1 = (mp.GetParentProcInfo)(l_0_10.ppid)
    if l_0_0 ~= nil and l_0_1 ~= nil and l_0_2(l_0_0, l_0_1.commandline) then
      l_0_3 = true
      break
    end
  end
end
do
  if not l_0_3 then
    l_0_4 = mp
    l_0_4 = l_0_4.CLEAN
    return l_0_4
  end
  l_0_4 = reportSessionInformation
  l_0_4()
  l_0_4 = add_parents
  l_0_4()
  l_0_4 = mp
  l_0_4 = l_0_4.SIGATTR_LOG_SZ
  l_0_5 = 1
  for l_0_14 = l_0_4, l_0_5, -1 do
    local l_0_13, l_0_14 = nil
    l_0_13 = sigattr_tail
    l_0_13 = l_0_13[l_0_12]
    local l_0_15 = nil
    l_0_14 = l_0_13.matched
    if l_0_14 then
      l_0_14 = l_0_13.attribute
      if l_0_14 == 16384 then
        l_0_14 = l_0_13.utf8p1
        if l_0_14 then
          l_0_14 = "\\.(php|aar|armx|asax|asbx|ascx|ashx|asmx|asp|aspq|aspx|axd|cfm|cgi|cshtm|cshtml|jsp|jar|js|jspx|phar|phtml|shtml|swf|vbhtm|vbhtml|php2|php3|php4|php5)$"
          local l_0_16 = nil
          l_0_15 = string
          l_0_15 = l_0_15.lower
          l_0_16 = l_0_13.utf8p1
          l_0_15 = l_0_15(l_0_16(l_0_16, "([^\\]+)$"))
          local l_0_17 = nil
          local l_0_18, l_0_19 = nil
          if (MpCommon.StringRegExpSearch)(l_0_17, l_0_15) then
            do
              do
                l_0_18 = bm
                l_0_18 = l_0_18.add_related_string
                l_0_19 = "Shellcode"
                l_0_18(l_0_19, l_0_13.utf8p1, bm.RelatedStringBMReport)
                l_0_18 = bm
                l_0_18 = l_0_18.add_related_file
                l_0_19 = l_0_13.utf8p1
                l_0_18(l_0_19)
                -- DECOMPILER ERROR at PC113: Confused about usage of register R11 for local variables in 'ReleaseLocals'

                l_0_14 = l_0_13.attribute
                if l_0_14 == 16400 then
                  l_0_14 = l_0_13.ppid
                  if l_0_14 then
                    l_0_14 = bm
                    l_0_14 = l_0_14.add_related_process
                    l_0_15 = l_0_13.ppid
                    l_0_14(l_0_15)
                  end
                end
                -- DECOMPILER ERROR at PC124: LeaveBlock: unexpected jumping out DO_STMT

                -- DECOMPILER ERROR at PC124: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC124: LeaveBlock: unexpected jumping out IF_STMT

                -- DECOMPILER ERROR at PC124: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC124: LeaveBlock: unexpected jumping out IF_STMT

                -- DECOMPILER ERROR at PC124: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC124: LeaveBlock: unexpected jumping out IF_STMT

                -- DECOMPILER ERROR at PC124: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC124: LeaveBlock: unexpected jumping out IF_STMT

              end
            end
          end
        end
      end
    end
  end
  if (this_sigattrlog[23]).matched then
    (bm.add_related_string)("DetectorID", "76bd0408-ae95-45c2-ae5a-b66570409238", bm.RelatedStringBMReport)
  else
    if (this_sigattrlog[24]).matched then
      (bm.add_related_string)("DetectorID", "6c3ed37e-9c54-4edf-a1e1-462ee39f6ba9", bm.RelatedStringBMReport)
    else
      if (this_sigattrlog[25]).matched then
        (bm.add_related_string)("DetectorID", "34b296b9-cfd0-4de4-9c29-e22073e9b38f", bm.RelatedStringBMReport)
      else
        if (this_sigattrlog[26]).matched then
          (bm.add_related_string)("DetectorID", "803b89c7-5f4e-49d0-a2c6-7cd4d092391b", bm.RelatedStringBMReport)
        end
      end
    end
  end
  do return mp.INFECTED end
  -- DECOMPILER ERROR at PC179: Confused about usage of register R5 for local variables in 'ReleaseLocals'

end

