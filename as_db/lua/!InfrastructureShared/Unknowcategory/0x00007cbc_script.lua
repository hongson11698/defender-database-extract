-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007cbc_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetBruteMatchData)()
local l_0_1 = ""
if l_0_0.is_header then
  l_0_1 = tostring(headerpage)
else
  l_0_1 = tostring(footerpage)
end
if (string.find)(l_0_1, "%${[0-1][0-1][0-1][0-1]+}") then
  return mp.INFECTED
else
  if (string.find)(l_0_1, "%${[_/\\=][_/\\=][_/\\=][_/\\=]+}") then
    return mp.INFECTED
  else
    if (string.find)(l_0_1, "%${%w%w%w%w%w%w%w%w+}") then
      return mp.INFECTED
    else
      if (string.find)(l_0_1, "%${[1-9][1-9]+}") then
        return mp.INFECTED
      end
    end
  end
end
return mp.CLEAN

