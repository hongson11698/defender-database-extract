-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000081db_luac 

-- params : ...
-- function num : 0
local l_0_0 = (versioning.GetOrgID)()
do
  if l_0_0 ~= nil then
    local l_0_1 = (string.lower)(l_0_0)
    if l_0_1 == "40222833-e511-47af-9324-40c4531ba777" or l_0_1 == "824183b0-2389-4601-a78d-1bda0b1327aa" then
      return mp.CLEAN
    end
  end
  local l_0_2 = nil
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    l_0_2 = (this_sigattrlog[1]).utf8p2
  else
    if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
      l_0_2 = (this_sigattrlog[2]).utf8p2
    else
      if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 ~= nil then
        l_0_2 = (this_sigattrlog[3]).utf8p2
      else
        if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p2 ~= nil then
          l_0_2 = (this_sigattrlog[4]).utf8p2
        else
          if (this_sigattrlog[5]).matched and (this_sigattrlog[5]).utf8p2 ~= nil then
            l_0_2 = (this_sigattrlog[5]).utf8p2
          else
            if (this_sigattrlog[6]).matched and (this_sigattrlog[6]).utf8p2 ~= nil then
              l_0_2 = (this_sigattrlog[6]).utf8p2
            end
          end
        end
      end
    end
  end
  if l_0_2 == nil then
    return mp.CLEAN
  end
  local l_0_3 = {}
  l_0_3[".jse"] = true
  l_0_3[".vbe"] = true
  local l_0_4 = (mp.GetExecutablesFromCommandLine)(l_0_2)
  for l_0_8,l_0_9 in ipairs(l_0_4) do
    if (string.len)(l_0_9) > 4 and (sysio.IsFileExists)(l_0_9) then
      local l_0_10 = (string.sub)(l_0_9, -4)
      if l_0_3[l_0_10] then
        if (string.find)((string.lower)(l_0_9), "themefonts-colors_installer.vbe", 1, true) then
          return mp.CLEAN
        end
        local l_0_11 = (mp.IsKnownFriendlyFile)(l_0_9, true, true)
        if l_0_11 == nil or l_0_11 == true then
          return mp.CLEAN
        end
        ;
        (bm.add_threat_file)(l_0_9)
      end
    end
  end
  return mp.INFECTED
end

