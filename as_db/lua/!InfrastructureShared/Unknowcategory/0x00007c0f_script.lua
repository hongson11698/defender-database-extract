-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007c0f_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((this_sigattrlog[1]).utf8p1)
if (string.find)(l_0_0, "\\spyhunter\\", 1, true) then
  return mp.CLEAN
else
  if (string.find)(l_0_0, "\\yandex\\", 1, true) then
    return mp.CLEAN
  else
    if (string.find)(l_0_0, "\\utiltool\\", 1, true) then
      return mp.CLEAN
    else
      if (string.find)(l_0_0, "\\tmus\\", 1, true) then
        return mp.CLEAN
      else
        if (string.find)(l_0_0, "\\tmpscore.exe", 1, true) then
          return mp.CLEAN
        end
      end
    end
  end
end
return mp.INFECTED

