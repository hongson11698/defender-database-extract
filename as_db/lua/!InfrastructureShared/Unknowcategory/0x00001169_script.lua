-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00001169_luac 

-- params : ...
-- function num : 0
local l_0_0 = false
if (this_sigattrlog[5]).matched and (this_sigattrlog[5]).utf8p2 ~= nil then
  local l_0_1 = 0
  local l_0_2 = (this_sigattrlog[5]).utf8p2
  l_0_2 = (string.gsub)(l_0_2, "%^", "")
  l_0_2 = (string.lower)(l_0_2)
  if l_0_1 > 10 and (string.find)(l_0_2, "powershell", 1, true) then
    l_0_0 = true
  end
end
do
  -- DECOMPILER ERROR at PC42: Overwrote pending register: R1 in 'AssignReg'

  if not l_0_0 and (l_0_1[6]).matched and (this_sigattrlog[6]).utf8p2 ~= nil then
    local l_0_3 = 0
    local l_0_4 = (this_sigattrlog[6]).utf8p2
    l_0_4 = (string.gsub)(l_0_4, "`", "")
    l_0_4 = (string.lower)(l_0_4)
    if l_0_3 > 10 and ((string.find)(l_0_4, "bypass", 1, true) or (string.find)(l_0_4, "webclient", 1, true) or (string.find)(l_0_4, "newscriptblock", 1, true) or (string.find)(l_0_4, "http:", 1, true)) then
      l_0_0 = true
    end
  end
  do
    -- DECOMPILER ERROR at PC110: Overwrote pending register: R1 in 'AssignReg'

    if l_0_0 then
      local l_0_5 = l_0_3
      local l_0_6 = true
      local l_0_7 = 0
      if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
        l_0_5 = (this_sigattrlog[1]).utf8p2
      end
      if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
        l_0_5 = (this_sigattrlog[2]).utf8p2
      end
      if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 ~= nil then
        l_0_5 = (this_sigattrlog[3]).utf8p2
      end
      if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p2 ~= nil then
        l_0_5 = (this_sigattrlog[4]).utf8p2
      end
      if l_0_5 ~= nil then
        local l_0_8 = (mp.GetExecutablesFromCommandLine)(l_0_5)
        for l_0_12,l_0_13 in ipairs(l_0_8) do
          if (sysio.IsFileExists)(l_0_13) then
            l_0_7 = l_0_7 + 1
            if (mp.IsKnownFriendlyFile)(l_0_13, true, true) == false then
              l_0_6 = false
              break
            end
          end
        end
      end
      do
        do
          if l_0_7 > 0 and l_0_6 then
            l_0_8 = mp
            l_0_8 = l_0_8.CLEAN
            return l_0_8
          else
            l_0_8 = mp
            l_0_8 = l_0_8.INFECTED
            return l_0_8
          end
          l_0_5 = mp
          l_0_5 = l_0_5.CLEAN
          return l_0_5
        end
      end
    end
  end
end

