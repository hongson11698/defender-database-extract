-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000080e4_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched or (this_sigattrlog[1]).utf8p2 ~= nil then
  local l_0_0, l_0_1 = (bm.get_process_relationships)()
  for l_0_5,l_0_6 in ipairs(l_0_0) do
    if l_0_6.image_path ~= nil then
      local l_0_7 = (mp.bitand)(l_0_6.reason_ex, 1)
      local l_0_8 = (string.lower)(l_0_6.image_path)
      if l_0_7 == 1 and ((string.find)(l_0_8, "\\cmd.exe", 1, true) or (string.find)(l_0_8, "\\powershell.exe", 1, true) or (string.find)(l_0_8, "\\powershell_ise.exe", 1, true)) then
        return mp.CLEAN
      end
      local l_0_9 = (this_sigattrlog[1]).utf8p2
      l_0_9 = (string.lower)(l_0_9)
      -- DECOMPILER ERROR at PC125: Unhandled construct in 'MakeBoolean' P3

      if ((string.find)(l_0_9, ".owner -eq", 1, true) and (string.find)(l_0_9, ".processname -eq", 1, true)) or not (string.find)(l_0_9, "downloaddata", 1, true) or (string.find)(l_0_9, "minidump", 1, true) and (string.find)(l_0_9, "$env:", 1, true) then
        return mp.INFECTED
      end
    end
  end
end
do
  l_0_0 = mp
  l_0_0 = l_0_0.CLEAN
  return l_0_0
end

