-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007da7_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
  local l_0_0 = (string.lower)((this_sigattrlog[1]).utf8p2)
  if (MpCommon.GetPersistContextCountNoPath)("Lua:ExecPatpoopy.A") > 0 then
    local l_0_1 = (MpCommon.GetPersistContextNoPath)("Lua:ExecPatpoopy.A")
    if l_0_1 then
      for l_0_5,l_0_6 in ipairs(l_0_1) do
        local l_0_7 = (string.match)(l_0_6, "\\([^\\]+)$")
        if (string.find)(l_0_0, l_0_7, 1, true) then
          (bm.add_action)("EmsScan", 3000)
          return mp.INFECTED
        end
      end
    end
  end
end
do
  l_0_0 = mp
  l_0_0 = l_0_0.CLEAN
  return l_0_0
end

