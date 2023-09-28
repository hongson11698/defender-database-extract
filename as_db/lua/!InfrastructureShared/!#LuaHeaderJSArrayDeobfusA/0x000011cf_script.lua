-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaHeaderJSArrayDeobfusA\0x000011cf_luac 

-- params : ...
-- function num : 0
escape_word = function(l_1_0)
  -- function num : 0_0
  local l_1_1, l_1_2 = l_1_0:gsub, l_1_0
  local l_1_3 = "[%(%)%.%%%+%-%*%?%[%]%^%$]"
  do
    local l_1_4 = function(l_2_0)
    -- function num : 0_0_0
    return "%" .. l_2_0
  end

    do return l_1_1(l_1_2, l_1_3, l_1_4) end
    -- DECOMPILER ERROR at PC5: Confused about usage of register R2 for local variables in 'ReleaseLocals'

  end
end

local l_0_0 = tostring(headerpage)
l_0_0 = l_0_0:gsub("%%", ">|")
local l_0_1 = 0
if l_0_0 then
  for l_0_5,l_0_6 in l_0_0:gmatch("+?(%[%\'.-%\'%])(%[%d%])+?") do
    local l_0_7 = nil
    if l_0_1 > 95 then
      break
    else
      if l_0_6 == "[0]" then
        l_0_7 = l_0_5:match("%+?%[(\'.-\'),\'.-%]")
      else
        if l_0_6 == "[1]" then
          l_0_7 = l_0_5:match("%+?%[%\'.-\',(\'.-\').-%]")
        else
          if l_0_6 == "[2]" then
            l_0_7 = l_0_5:match("%+?%[%\'.-\',\'.-\',(\'.-\').-%]")
          else
            if l_0_6 == "[3]" then
              l_0_7 = l_0_5:match("%+?%[%\'.-\',\'.-\',\'.-\',(\'.-\').-%]")
            else
              if l_0_6 == "[4]" then
                l_0_7 = l_0_5:match("%+?%[%\'.-\',\'.-\',\'.-\',\'.-\',(\'.-\').-%]")
              end
            end
          end
        end
      end
    end
    if l_0_7 then
      l_0_0 = (string.gsub)(l_0_0, escape_word(l_0_5 .. l_0_6), l_0_7)
      l_0_1 = l_0_1 + 1
    end
  end
end
do
  if l_0_1 >= 5 then
    l_0_0 = (string.gsub)(l_0_0, "%\'%+%\'", "")
    l_0_0 = (string.gsub)(l_0_0, "\\x(%x%x)", function(l_2_0)
  -- function num : 0_1
  local l_2_1 = string.format
  local l_2_2 = "%c"
  do
    local l_2_3, l_2_4, l_2_5 = tonumber(l_2_0, 16), .end
    do return l_2_1(l_2_2, l_2_3, l_2_4, l_2_5) end
    -- DECOMPILER ERROR at PC9: Confused about usage of register R2 for local variables in 'ReleaseLocals'

  end
end
)
    l_0_0 = l_0_0:gsub(">|", "%%")
    l_0_0 = (string.gsub)(l_0_0, "%%(%x%x)", function(l_3_0)
  -- function num : 0_2
  local l_3_1 = string.format
  local l_3_2 = "%c"
  do
    local l_3_3, l_3_4, l_3_5 = tonumber(l_3_0, 16), .end
    do return l_3_1(l_3_2, l_3_3, l_3_4, l_3_5) end
    -- DECOMPILER ERROR at PC9: Confused about usage of register R2 for local variables in 'ReleaseLocals'

  end
end
)
    ;
    (mp.vfo_add_buffer)(l_0_0, "[hdr-jsarr-deobfus]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
    return mp.INFECTED
  end
  return mp.CLEAN
end

