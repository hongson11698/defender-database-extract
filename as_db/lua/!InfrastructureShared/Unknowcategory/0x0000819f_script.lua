-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000819f_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched or (this_sigattrlog[2]).matched or (this_sigattrlog[3]).matched or (this_sigattrlog[4]).matched or (this_sigattrlog[5]).matched or (this_sigattrlog[6]).matched or (this_sigattrlog[7]).matched then
  local l_0_0, l_0_1 = (bm.get_process_relationships)()
  for l_0_5,l_0_6 in ipairs(l_0_0) do
    if l_0_6.image_path ~= nil then
      local l_0_7 = (mp.bitand)(l_0_6.reason_ex, 1)
      local l_0_8 = (string.lower)(l_0_6.image_path)
      -- DECOMPILER ERROR at PC148: Unhandled construct in 'MakeBoolean' P3

      -- DECOMPILER ERROR at PC148: Unhandled construct in 'MakeBoolean' P3

      -- DECOMPILER ERROR at PC148: Unhandled construct in 'MakeBoolean' P3

      -- DECOMPILER ERROR at PC148: Unhandled construct in 'MakeBoolean' P3

      -- DECOMPILER ERROR at PC148: Unhandled construct in 'MakeBoolean' P3

      -- DECOMPILER ERROR at PC148: Unhandled construct in 'MakeBoolean' P3

      -- DECOMPILER ERROR at PC148: Unhandled construct in 'MakeBoolean' P3

      -- DECOMPILER ERROR at PC148: Unhandled construct in 'MakeBoolean' P3

      if (l_0_7 == 1 and (string.find)(l_0_8, "\\cloud drive mapper.exe", 1, true)) or (string.find)(l_0_8, "\\electron.exe", 1, true) then
        return mp.CLEAN
      end
    end
  end
end
do
  l_0_0 = mp
  l_0_0 = l_0_0.INFECTED
  return l_0_0
end

