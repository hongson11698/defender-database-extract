-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LUAOfficeVBAProjectFilePa\0x0000113a_luac 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  local l_0_0, l_0_1 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
  if l_0_0 ~= nil and l_0_0:len() > 12 and l_0_1 ~= nil and l_0_1:find("/vbaproject.bin") then
    local l_0_2 = ""
    if not l_0_0:find("\\downloads", 1, true) then
      return mp.CLEAN
    end
    if l_0_0:find("\\users\\[^\\]+\\downloads") == nil then
      return mp.CLEAN
    end
    if l_0_0:sub(-10) == "\\downloads" then
      l_0_2 = "Lua:VbaProjectWrittenToDownloadFolder"
    else
      if l_0_0:find("\\downloads\\[^\\]+$") ~= nil then
        l_0_2 = "Lua:VbaProjectWrittenToDownloadFolder1Sub"
      else
        return mp.CLEAN
      end
    end
    if (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
      (mp.set_mpattribute)(l_0_2)
      return mp.INFECTED
    end
    local l_0_3 = {}
    l_0_3["excel.exe"] = true
    l_0_3["winword.exe"] = true
    local l_0_4 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)
    l_0_4 = (l_0_4 == nil and "" or l_0_4):lower()
    if l_0_3[l_0_4] ~= true then
      l_0_2 = l_0_2 .. "NotbyOffice"
      ;
      (mp.set_mpattribute)(l_0_2)
    end
  end
end
do
  return mp.CLEAN
end

