-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000008d6_luac 

-- params : ...
-- function num : 0
do
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p1 ~= nil then
    local l_0_0 = (string.lower)((this_sigattrlog[2]).utf8p1)
    if (string.match)(l_0_0, "%%localappdata%%\\[^\\]+\\") == nil then
      return mp.INFECTED
    else
      if (string.match)(l_0_0, "%%localappdata%%\\[^\\]+\\$") ~= nil then
        return mp.INFECTED
      else
        return mp.CLEAN
      end
    end
  end
  return mp.CLEAN
end

