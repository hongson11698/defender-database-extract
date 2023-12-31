-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000121c_luac 

-- params : ...
-- function num : 0
local l_0_0 = function(l_1_0, l_1_1)
  -- function num : 0_0
  if l_1_1 ~= nil and l_1_0 ~= nil then
    local l_1_2 = (mp.readu_u16)(l_1_0, l_1_1 + 25)
    local l_1_3 = l_1_0:sub(l_1_1 + 43, l_1_1 + 42 + l_1_2)
    return l_1_2, l_1_3
  end
  do
    return nil
  end
end

local l_0_1 = function(l_2_0, l_2_1)
  -- function num : 0_1
  if l_2_1 == nil or l_2_0 < 4 then
    return false
  end
  local l_2_2 = {}
  l_2_2[".js"] = true
  l_2_2[".vbs"] = true
  l_2_2[".lnk"] = true
  l_2_2[".wsf"] = true
  l_2_2[".vbe"] = true
  l_2_2[".jse"] = true
  l_2_2[".hta"] = true
  l_2_2[".exe"] = true
  l_2_2[".scr"] = true
  l_2_2[".pif"] = true
  local l_2_3 = (string.lower)((string.sub)(l_2_1, -4))
  if not l_2_2[l_2_3] then
    return l_2_2[(string.sub)(l_2_3, -3)]
  end
end

if mp.HEADERPAGE_SZ < 128 or mp.FOOTERPAGE_SZ < 22 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 1) ~= 67324752 then
  return mp.CLEAN
end
local l_0_2 = (mp.getfilesize)()
if l_0_2 <= 276 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_3 = 276
local l_0_4 = (mp.readfile)((mp.getfilesize)() - l_0_3, l_0_3)
;
(mp.readprotection)(true)
if l_0_4 == nil then
  return mp.CLEAN
end
local l_0_5 = mp.FOOTERPAGE_SZ - 21
if (mp.readu_u32)(footerpage, l_0_5) ~= 101010256 then
  l_0_5 = (string.find)(l_0_4, "PK\005\006", 1, true)
  if l_0_5 == nil then
    return mp.CLEAN
  end
  l_0_5 = l_0_5 + mp.FOOTERPAGE_SZ - l_0_3
end
;
(mp.UfsSetMetadataBool)("Lua:FileInZip", true)
local l_0_6 = (mp.readu_u16)(footerpage, l_0_5 + 10)
if l_0_6 == 2 then
  local l_0_7, l_0_8 = l_0_4:find("PK\001\002", 1, true)
  if l_0_8 ~= nil then
    local l_0_9, l_0_10 = l_0_0(l_0_4, l_0_8)
    local l_0_11 = (mp.readu_u16)(l_0_4, l_0_8 + 27)
    local l_0_12 = (mp.readu_u16)(l_0_4, l_0_8 + 29)
    if l_0_10 == nil or l_0_10:sub(-1) ~= "/" then
      return mp.CLEAN
    end
    l_0_8 = l_0_8 + l_0_9 + l_0_11 + l_0_12 + 46
    local l_0_13, l_0_14 = l_0_0(l_0_4, l_0_8)
    if l_0_1(l_0_13, l_0_14) then
      (mp.set_mpattribute)("Lua:SingleSuspiciousExtensionInZip")
    end
    if l_0_14 ~= nil and l_0_10 == l_0_14:sub(0, l_0_9) then
      (mp.set_mpattribute)("Lua:FolderNameSameAsFileName")
    end
  else
    do
      do
        do return mp.CLEAN end
        if l_0_6 ~= 1 then
          return mp.CLEAN
        else
          local l_0_15, l_0_16 = l_0_4:find("PK\001\002", 1, true)
          local l_0_17, l_0_18 = l_0_0(l_0_4, l_0_16)
          if l_0_1(l_0_17, l_0_18) then
            (mp.set_mpattribute)("Lua:SingleSuspiciousExtensionInZip")
          end
        end
        do
          local l_0_19 = (mp.readu_u32)(headerpage, 19)
          if l_0_19 > 4194304 then
            return mp.CLEAN
          end
          local l_0_20 = (mp.readu_u16)(headerpage, 27)
          if (mp.readu_u32)(headerpage, 31 + l_0_20 - 4) == 1885960750 then
            (mp.set_mpattribute)("Lua:SingleZipInZip")
          end
          ;
          (mp.UfsSetMetadataBool)("Lua:SingleFileInZip", true)
          return mp.INFECTED
        end
      end
    end
  end
end

