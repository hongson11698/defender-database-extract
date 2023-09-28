-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000819e_luac 

-- params : ...
-- function num : 0
local l_0_0 = {}
l_0_0["cmd.exe"] = true
l_0_0["powershell.exe"] = true
local l_0_1 = nil
if (this_sigattrlog[1]).matched then
  l_0_1 = (this_sigattrlog[1]).ppid
else
  if (this_sigattrlog[2]).matched then
    l_0_1 = (this_sigattrlog[2]).ppid
  else
    if (this_sigattrlog[3]).matched then
      l_0_1 = (this_sigattrlog[3]).ppid
    else
      if (this_sigattrlog[4]).matched then
        l_0_1 = (this_sigattrlog[4]).ppid
        local l_0_2 = (mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[4]).utf8p2)
        if l_0_2 == nil or l_0_2 == "" then
          return mp.CLEAN
        end
        if (string.find)((string.lower)(l_0_2), "dng-proxy-o.denso.co.jp:8080", 1, true) ~= nil then
          return mp.CLEAN
        end
      else
        do
          do return mp.CLEAN end
          local l_0_3 = nil
          if (this_sigattrlog[5]).matched then
            l_0_3 = (this_sigattrlog[5]).ppid
            local l_0_4 = (mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[5]).utf8p2)
            if l_0_4 == nil or l_0_4 == "" then
              return mp.CLEAN
            end
            if (string.find)((string.lower)(l_0_4), "dng-proxy-o.denso.co.jp:8080", 1, true) ~= nil then
              return mp.CLEAN
            end
          else
            do
              do return mp.CLEAN end
              for l_0_8 = 1, 5 do
                if l_0_8 > 6 then
                  return mp.CLEAN
                end
                local l_0_9, l_0_10 = (bm.get_process_relationships)(l_0_1)
                for l_0_14,l_0_15 in ipairs(l_0_10) do
                  if l_0_15.reason == 1 then
                    local l_0_16 = (string.lower)((string.match)(l_0_15.image_path, "\\([^\\]+)$"))
                    if l_0_15.ppid == l_0_3 then
                      return mp.INFECTED
                    else
                      if l_0_0[l_0_16] ~= true then
                        (mp.ReportLowfi)(l_0_15.image_path, 4150180286)
                        return mp.CLEAN
                      end
                    end
                    l_0_1 = l_0_15.ppid
                  end
                end
              end
              do return mp.CLEAN end
              -- DECOMPILER ERROR at PC165: Confused about usage of register R4 for local variables in 'ReleaseLocals'

            end
          end
        end
      end
    end
  end
end

