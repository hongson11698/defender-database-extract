-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\3f6b39bf1f335\0x000080e7_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[9]).matched and (this_sigattrlog[9]).utf8p2 ~= nil then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4, l_0_6, l_0_7 = nil, nil
  else
  end
  -- DECOMPILER ERROR at PC35: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC43: Confused about usage of register: R0 in 'UnsetPending'

  if ((this_sigattrlog[10]).matched and (this_sigattrlog[10]).utf8p2 ~= nil and not contains((this_sigattrlog[10]).utf8p2, "downloadstring")) or contains((this_sigattrlog[10]).utf8p2, "%-[eE][ncodemaNCODEMA]*%s+", false) then
    local l_0_5, l_0_8 = , NormalizeCmdline("powershell", (this_sigattrlog[10]).utf8p2)
    if contains(l_0_8, "downloadstring") then
      l_0_5 = l_0_8
    end
  else
    do
      do return mp.CLEAN end
      local l_0_9 = nil
      if contains(l_0_9, {"\\landesk\\ldclient\\ivanti-psmodule"}) then
        return mp.CLEAN
      end
      local l_0_10 = nil
      do
        if contains(l_0_9, {"iex", "invoke-expression"}) then
          local l_0_11 = nil
          if contains(l_0_9, {"pastebin.com", "paste.ee", "j.mp", "textbin.net"}) then
            if IsProcNameInParentProcessTree("BM", "wmiprvse.exe") then
              (mp.TriggerScanResource)("wmi", "")
            end
            return mp.INFECTED
          end
        end
        return mp.CLEAN
      end
    end
  end
end

