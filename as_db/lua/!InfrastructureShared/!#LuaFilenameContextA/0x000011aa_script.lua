-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaFilenameContextA\0x000011aa_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_FNAME), mp.FILEPATH_QUERY_LOWERCASE))
if l_0_1 == nil or #l_0_1 <= 3 then
  return mp.CLEAN
end
if #l_0_1 <= 20 and StringStartsWith(l_0_1, "note_") and StringEndsWith(l_0_1, "107-41d.pdf") then
  (mp.set_mpattribute)("Lua:FnameContext_TurlaPhish.A")
end
if l_0_1 == "postanovlenie apelljacionnoj instancii.scr" then
  (mp.set_mpattribute)("Lua:FnameContext_TurlaBinary.A")
end
if l_0_0 ~= nil and #l_0_0 > 4 then
  if (string.find)(l_0_0, "\\appdata\\local\\microsoft\\office\\solutionpackages\\", 1, true) ~= nil then
    (mp.set_mpattribute)("Lua:FileContext/FileInOfficeSolutionPackages.A")
  end
  if (string.find)(l_0_0, "\\program files\\windowsapps\\", 1, true) ~= nil then
    (mp.set_mpattribute)("Lua:FileContext/FileInWindowsApps.A")
  end
  if (string.find)(l_0_0, "\\program files\\adobe\\acrobat reader", 1, true) ~= nil then
    (mp.set_mpattribute)("Lua:FileContext/FileInAdobeFolder.A")
  end
  if (string.find)(l_0_0, "\\appdata\\local\\microsoft\\windows\\inetcache\\", 1, true) ~= nil then
    (mp.set_mpattribute)("Lua:FileContext/FileInINetCache.A")
  end
  if (string.find)(l_0_0, "\\appdata\\local\\temp\\chrome_bits_", 1, true) ~= nil then
    (mp.set_mpattribute)("Lua:FileContext/FileInTempChromeBits.A")
  end
end
return mp.CLEAN

