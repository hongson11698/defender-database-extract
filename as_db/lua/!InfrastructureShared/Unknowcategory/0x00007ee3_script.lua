-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007ee3_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil and (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 ~= nil then
  local l_0_0 = (string.lower)((this_sigattrlog[1]).utf8p1)
  local l_0_1 = (string.lower)((this_sigattrlog[3]).utf8p2)
  local l_0_2 = (string.lower)((this_sigattrlog[1]).utf8p2)
  if (string.find)(l_0_0, l_0_1, 1, true) then
    local l_0_3 = (mp.ContextualExpandEnvironmentVariables)(l_0_2)
    local l_0_4 = (string.lower)(l_0_3)
    if (string.find)(l_0_4, "\\program files", 1, true) or (string.find)(l_0_4, "\\windows\\", 1, true) then
      return mp.CLEAN
    end
    if (sysio.IsFileExists)(l_0_3) then
      (bm.add_related_file)(l_0_3)
    end
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

