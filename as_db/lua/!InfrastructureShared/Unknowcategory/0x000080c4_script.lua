-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000080c4_luac 

-- params : ...
-- function num : 0
local l_0_0 = ""
local l_0_1 = (mp.GetBruteMatchData)()
local l_0_2 = l_0_1.match_offset + 1
local l_0_3 = l_0_1.match_offset + 1 + 200
if l_0_1.is_header then
  l_0_0 = ((tostring(headerpage)):sub(l_0_2, l_0_3)):lower()
else
  l_0_0 = ((tostring(footerpage)):sub(l_0_2, l_0_3)):lower()
end
if not l_0_0:find("get/autodiscover/autodiscover.json?", 1, true) and not l_0_0:find("post/autodiscover/autodiscover.json?", 1, true) then
  return mp.CLEAN
end
local l_0_4 = function(l_1_0)
  -- function num : 0_0
  return l_1_0:gsub("%%(%x%x)", function(l_2_0)
    -- function num : 0_0_0
    local l_2_1 = string.char
    do
      local l_2_2, l_2_3, l_2_4 = tonumber(l_2_0, 16), .end
      do return l_2_1(l_2_2, l_2_3, l_2_4) end
      -- DECOMPILER ERROR at PC8: Confused about usage of register R2 for local variables in 'ReleaseLocals'

    end
  end
)
end

local l_0_5 = (string.lower)((string.gsub)(l_0_4(l_0_0), "%%", ""))
if l_0_5:find("/powershell?", 1, true) or l_0_5:find("/powershell/?", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

