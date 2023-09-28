-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaSuspFileDropByCleanStubs\0x00000424_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 ~= mp.SCANREASON_ONOPEN and l_0_0 ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  return mp.CLEAN
end
local l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)
if l_0_1 == nil then
  return mp.CLEAN
end
l_0_1 = (string.lower)(l_0_1)
if l_0_1 == nil then
  return mp.CLEAN
end
local l_0_2 = "cscript.exe|wscript.exe|mshta.exe|cmd.exe|powershell.exe|pwsh.exe|console.exe|bash.exe|dllhost.exe|rundll32.exe|regsvr32.exe|wmiprvse.exe"
if l_0_2:find(l_0_1) then
  local l_0_3, l_0_4 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
  local l_0_5 = l_0_4:sub(-3)
  local l_0_6 = (mp.getfilesize)()
  local l_0_7 = false
  ;
  (mp.set_mpattribute)("Lua:StubApp!" .. l_0_1)
  ;
  (mp.set_mpattribute)("Lua:StubAppDropped!" .. l_0_4)
  ;
  (mp.set_mpattribute)("Lua:StubAppDroppedExt!" .. l_0_5)
  do
    do
      if l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE and (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
        local l_0_8 = "obj|etl|log|pdb|edb|mdb|sdb|tmf|emf|wmf|spl|off|bak|m4a|mp4|mp3|wav|bmp|ico|kgx|idx|.md|tml|tar|ent|iff|ttf|tif|pak|aml|yml|mof|man|che|ore|new|mui"
        if l_0_8:find(l_0_5) then
          l_0_7 = true
        end
        if (mp.get_mpattribute)("BM_MZ_FILE") then
          (mp.set_mpattribute)("BM_PeFileDropByStubApp")
        else
          if (mp.get_mpattribute)("BM_LNK_FILE") then
            (mp.set_mpattribute)("BM_LnkFileDropByStubApp")
          else
            if (mp.get_mpattribute)("BM_ScriptFile") then
              (mp.set_mpattribute)("BM_ScriptFileDropByStubApp")
            end
          end
        end
        if l_0_3:find("\\bin\\debug", 1, true) or ((l_0_6 < 100 and l_0_4:find("__psscriptpolicytest_.+%.ps1")) or l_0_4 ~= "notes.ini" or l_0_3:find("\\lotus\\notes\\data\\", 1, true)) then
          l_0_7 = true
        end
        if l_0_7 then
          (mp.set_mpattribute)("Lua:CleanStubsExcludePath")
        end
        if not l_0_7 then
          if l_0_3:match("windows\\temp") then
            (mp.set_mpattribute)("Lua:StubAppDroppedIn!wintemp")
          end
          if l_0_3:match("users\\.-\\appdata\\local") then
            (mp.set_mpattribute)("Lua:StubAppDroppedIn!localappdata")
          end
          if l_0_3:match("users\\.-\\appdata\\remote") then
            (mp.set_mpattribute)("Lua:StubAppDroppedIn!remoteappdata")
          end
          if l_0_3:match("users\\.-\\appdata\\local\\temp") then
            (mp.set_mpattribute)("Lua:StubAppDroppedIn!usrtemp")
          end
          if l_0_3:match("users\\.-\\desktop$") then
            (mp.set_mpattribute)("Lua:StubAppDroppedIn!usrdesktop")
          end
          if l_0_3:match("users\\.-\\documents$") then
            (mp.set_mpattribute)("Lua:StubAppDroppedIn!usrdocs")
          end
          if l_0_3:match("windows\\inetcache") then
            (mp.set_mpattribute)("Lua:StubAppDroppedIn!inetcache")
          end
        end
      end
      do return mp.INFECTED end
      return mp.CLEAN
    end
  end
end

