-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\29db3e325177b\0x00007f5c_luac 

-- params : ...
-- function num : 0
local l_0_0 = "hklm\\software\\microsoft\\windows defender\\exclusions\\ipaddresses\\\\"
local l_0_1 = "hklm\\software\\policies\\microsoft\\windows defender\\exclusions\\ipaddresses\\\\"
local l_0_2, l_0_3 = nil, nil
if (this_sigattrlog[1]).matched then
  l_0_2 = (string.sub)((this_sigattrlog[1]).utf8p1, #l_0_0 + 1)
  l_0_3 = true
else
  if (this_sigattrlog[2]).matched then
    l_0_2 = (string.sub)((this_sigattrlog[2]).utf8p1, #l_0_0 + 1)
    l_0_3 = false
  else
    if (this_sigattrlog[3]).matched then
      l_0_2 = (string.sub)((this_sigattrlog[3]).utf8p1, #l_0_1 + 1)
      l_0_3 = true
    else
      if (this_sigattrlog[4]).matched then
        l_0_2 = (string.sub)((this_sigattrlog[4]).utf8p1, #l_0_1 + 1)
        l_0_3 = false
      end
    end
  end
end
if l_0_2 ~= "New Value #1" then
  if l_0_3 then
    addDefenderIPExclusion(l_0_2)
  else
    removeDefenderIPExclusion(l_0_2)
  end
end
return mp.CLEAN

