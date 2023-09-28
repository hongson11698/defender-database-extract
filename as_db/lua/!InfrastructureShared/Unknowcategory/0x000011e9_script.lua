-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000011e9_luac 

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

if (mp.get_mpattribute)("SCRIPT:PowShellFormat!obfus") or (mp.get_mpattribute)("SCRIPT:PowShellFormat!obfus2") or (mp.get_mpattribute)("SCRIPT:PowShellFormat!obfus3") then
  local l_0_0 = (mp.getfilesize)()
  if l_0_0 > 131072 then
    return mp.CLEAN
  end
  ;
  (mp.readprotection)(false)
  local l_0_1 = (mp.readfile)(0, l_0_0)
  l_0_1 = (string.lower)(l_0_1)
  l_0_1 = (string.gsub)(l_0_1, " ", "")
  if (mp.get_mpattribute)("SCRIPT:PowShellFormat!obfus2") then
    l_0_1 = (string.gsub)(l_0_1, "\\\'", "\'")
    l_0_1 = (string.gsub)(l_0_1, "`", "")
  end
  if (mp.get_mpattribute)("SCRIPT:PowShellFormat!obfus3") then
    l_0_1 = (string.gsub)(l_0_1, "%+chr%(34%)%+\"", "")
    l_0_1 = (string.gsub)(l_0_1, "`", "")
  end
  local l_0_2 = 0
  for l_0_6 in (string.gmatch)(l_0_1, "%(\"{%d+}{%d+}.-\"%-f\'.-\',\'.-[^,]\'%)") do
    local l_0_7, l_0_8 = (string.match)(l_0_6, "%(\"({%d+}{%d+}.-)\"%-f(\'.-\',\'.-[^,]\')%)")
    if l_0_7 and l_0_8 then
      local l_0_9 = {}
      for l_0_13 in (string.gmatch)(l_0_7, "{(%d+)}") do
        (table.insert)(l_0_9, l_0_13)
      end
      local l_0_14 = {}
      for l_0_18 in (string.gmatch)(l_0_8, "\'(.-)\'") do
        (table.insert)(l_0_14, l_0_18)
      end
      if #l_0_9 == #l_0_14 then
        local l_0_19 = #l_0_9
        local l_0_20 = ""
        for l_0_24 = 1, l_0_19 do
          l_0_20 = l_0_20 .. l_0_14[l_0_9[l_0_24] + 1]
        end
        l_0_6 = escape_word(l_0_6)
        l_0_1 = (string.gsub)(l_0_1, l_0_6, l_0_20)
        l_0_2 = l_0_2 + 1
      end
    end
  end
  if l_0_2 >= 3 then
    l_0_1 = (string.gsub)(l_0_1, "`([%a%d])", "%1")
    l_0_1 = (string.gsub)(l_0_1, "\"%+\"", "")
    l_0_1 = (string.gsub)(l_0_1, "\'%+\'", "")
    l_0_1 = (string.gsub)(l_0_1, "%.\"(%w+)\"", "%.%1")
    l_0_1 = (string.gsub)(l_0_1, "::\"(%w+)\"", "::%1")
    ;
    (mp.vfo_add_buffer)(l_0_1, "[deobfus]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

