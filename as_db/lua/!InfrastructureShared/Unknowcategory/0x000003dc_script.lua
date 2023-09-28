-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000003dc_luac 

-- params : ...
-- function num : 0
do
  if (this_sigattrlog[1]).matched or (this_sigattrlog[2]).matched then
    local l_0_0, l_0_1 = (bm.get_process_relationships)()
    for l_0_5,l_0_6 in ipairs(l_0_0) do
      if l_0_6.image_path ~= nil then
        local l_0_7 = (mp.bitand)(l_0_6.reason_ex, 1)
        local l_0_8 = (string.lower)(l_0_6.image_path)
        if l_0_8 == nil or (string.len)(l_0_8) < 1 then
          return mp.CLEAN
        end
        if l_0_7 == 1 and ((string.find)(l_0_8, "\\cmd.exe", 1, true) or (string.find)(l_0_8, "\\powershell.exe", 1, true) or (string.find)(l_0_8, "\\pwsh.exe", 1, true) or (string.find)(l_0_8, "\\powershell_ise.exe", 1, true) or (string.find)(l_0_8, "\\pangphip.exe", 1, true) or (string.find)(l_0_8, "\\log-agent.exe", 1, true) or (string.find)(l_0_8, "\\ossec-agent.exe", 1, true) or (string.find)(l_0_8, ":\\windows\\assembly\\", 1, true)) then
          return mp.CLEAN
        end
      end
    end
    return mp.INFECTED
  end
  return mp.CLEAN
end

