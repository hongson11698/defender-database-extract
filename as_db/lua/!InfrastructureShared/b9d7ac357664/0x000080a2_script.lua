-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\b9d7ac357664\0x000080a2_luac 

-- params : ...
-- function num : 0
local l_0_0 = (sysio.RegExpandUserKey)("HKCU\\Environment")
if l_0_0 then
  for l_0_4,l_0_5 in pairs(l_0_0) do
    if (string.find)((string.lower)(l_0_5), "hkcu@s-1-5-21-", 1, true) then
      local l_0_6 = (sysio.RegOpenKey)(l_0_5)
      if l_0_6 then
        local l_0_7 = (sysio.GetRegValueAsString)(l_0_6, "COR_PROFILER")
        if l_0_7 then
          local l_0_8 = (sysio.GetRegValueAsString)(l_0_6, "COR_PROFILER_PATH")
          if l_0_8 then
            set_research_data("cor_prof_path", l_0_8, false)
            return mp.INFECTED
          end
          local l_0_9 = (string.match)(l_0_5, "(HKCU.-)\\")
          if l_0_9 then
            local l_0_10 = l_0_9 .. "\\Software\\Classes\\CLSID\\" .. l_0_7 .. "\\InprocServer32"
            local l_0_11 = (sysio.RegOpenKey)(l_0_10)
            if l_0_11 then
              local l_0_12 = (sysio.GetRegValueAsString)(l_0_11, "")
              if l_0_12 then
                if (string.len)(l_0_12) < 4 and (string.lower)(l_0_12) ~= "cmd" then
                  return mp.CLEAN
                end
                set_research_data("inprocserver32", l_0_12, false)
                return mp.INFECTED
              end
            end
          end
        end
      end
    end
  end
end
do
  return mp.CLEAN
end

