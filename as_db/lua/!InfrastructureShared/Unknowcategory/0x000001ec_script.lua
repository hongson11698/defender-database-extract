-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000001ec_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
if MpCommon.SECURITY_MANDATORY_HIGH_RID <= l_0_0.integrity_level then
  return mp.CLEAN
end
local l_0_1 = nil
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil then
  l_0_1 = (this_sigattrlog[1]).utf8p1
else
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p1 ~= nil then
    l_0_1 = (this_sigattrlog[2]).utf8p1
  else
    if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p1 ~= nil then
      l_0_1 = (this_sigattrlog[3]).utf8p1
    else
      if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p1 ~= nil then
        l_0_1 = (this_sigattrlog[4]).utf8p1
      else
        if (this_sigattrlog[5]).matched and (this_sigattrlog[5]).utf8p1 ~= nil then
          l_0_1 = (this_sigattrlog[5]).utf8p1
        else
          if (this_sigattrlog[6]).matched and (this_sigattrlog[6]).utf8p1 ~= nil then
            l_0_1 = (this_sigattrlog[6]).utf8p1
          else
            if (this_sigattrlog[7]).matched and (this_sigattrlog[7]).utf8p1 ~= nil then
              l_0_1 = (this_sigattrlog[7]).utf8p1
            else
              if (this_sigattrlog[8]).matched and (this_sigattrlog[8]).utf8p1 ~= nil then
                l_0_1 = (this_sigattrlog[8]).utf8p1
              end
            end
          end
        end
      end
    end
  end
end
if l_0_1 ~= nil then
  local l_0_2 = (string.match)(l_0_1, "^(.*)\\%w+%.%w+")
  local l_0_3 = (string.lower)((MpCommon.ExpandEnvironmentVariables)(l_0_2))
  local l_0_4 = (string.lower)((MpCommon.ExpandEnvironmentVariables)("%systemroot%"))
  if (string.find)(l_0_3, l_0_4, 1, true) then
    if (string.find)(l_0_3, l_0_4 + "\\temp", 1, true) or (string.find)(l_0_3, l_0_4 + "\\tmp", 1, true) or (string.find)(l_0_3, l_0_4 + "\\tasks", 1, true) or (string.find)(l_0_3, l_0_4 + "\\winmetadata", 1, true) or (string.find)(l_0_3, l_0_4 + "\\src", 1, true) then
      return mp.CLEAN
    end
    if (mp.IsKnownFriendlyFile)(l_0_1, true, false) == true then
      return mp.CLEAN
    end
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

