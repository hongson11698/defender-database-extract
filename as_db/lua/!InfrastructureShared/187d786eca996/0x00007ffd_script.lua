-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\187d786eca996\0x00007ffd_luac 

-- params : ...
-- function num : 0
do
  if not (hstrlog[1]).matched or (hstrlog[2]).matched then
    local l_0_0 = 0 + 1 + 1
  end
  do
    if ((hstrlog[3]).matched and not (hstrlog[4]).matched) or (hstrlog[5]).matched then
      local l_0_1 = nil
    end
    do
      if ((((((((hstrlog[6]).matched and not (hstrlog[7]).matched) or (hstrlog[8]).matched) and not (hstrlog[9]).matched) or (hstrlog[10]).matched) and not (hstrlog[11]).matched) or (hstrlog[12]).matched) and not (hstrlog[13]).matched) or (hstrlog[14]).matched then
        local l_0_2 = nil
      end
      -- DECOMPILER ERROR at PC87: Confused about usage of register: R0 in 'UnsetPending'

      do
        if l_0_2 >= 1 and 0 + 1 + 1 + 1 >= 1 and 0 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 >= 1 then
          local l_0_3 = nil
          if IsProcNameInParentProcessTree("cmdhstr", {"sqlservr.exe", "sqlps.exe", "sqlagent.exe"}) then
            return mp.INFECTED
          end
        end
        return mp.CLEAN
      end
    end
  end
end

