-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007b6c_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
  local l_0_0 = nil
else
  do
    do return mp.CLEAN end
    -- DECOMPILER ERROR at PC23: Confused about usage of register: R0 in 'UnsetPending'

    if (string.match)(l_0_0, "powershell.+hidden.+bypass.+system%.net%.webclient.+downloadfile.+http.+%.exe.+&%s*reg%s*add%s*hkcu.+software.+classes.+mscfile.+shell.+open.+command%s*/d%s*.+%.exe%s*/f%s*&%s*eventvwr%.exe") ~= nil then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

