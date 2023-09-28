-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000011a9_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
local l_0_1, l_0_2 = l_0_0:match("(.+\\)([^\\]+)$")
if l_0_2 == nil or l_0_1 == nil then
  return mp.CLEAN
end
if l_0_1:len() < 6 then
  return mp.CLEAN
end
local l_0_3 = l_0_2:len()
if l_0_3 > 10 and l_0_2:find("^wpm_v.+%.exe$") == 1 then
  (mp.set_mpattribute)("Lua:ContextFileNameSupTab.A")
else
  if l_0_3 > 10 and l_0_2:find("^minilite_v.+%.exe$") == 1 then
    (mp.set_mpattribute)("Lua:ContextFileNameSupTab.B")
  else
    if l_0_2 == "oursurfing.exe" then
      (mp.set_mpattribute)("Lua:ContextFileNameSupTab.C")
    else
      if l_0_3 > 8 and l_0_2:find("^amt_.+%.exe$") == 1 and l_0_1:find("\\temp\\", 1, true) ~= nil and l_0_2 ~= "amt_util.exe" then
        (mp.set_mpattribute)("Lua:ContextFileNameSupTab.D")
      else
        if l_0_2 == "protectservice.exe" then
          (mp.set_mpattribute)("Lua:ContextFileNameSupTab.E")
        else
          if l_0_2 == "winmanpro.exe" then
            (mp.set_mpattribute)("Lua:ContextFileNameSupTab.F")
          else
            if l_0_2 == "ihpmserver.exe" then
              (mp.set_mpattribute)("Lua:ContextFileNameSupTab.G")
            else
              if l_0_2 == "raydld.exe" then
                (mp.set_mpattribute)("Lua:ContextFileNameSupTab.H")
              else
                if (l_0_3 > 10 and l_0_2:find("^ray_v.+%.exe$") == 1) or l_0_3 > 10 and l_0_2:find("^ray_%d.+%.exe$") == 1 then
                  (mp.set_mpattribute)("Lua:ContextFileNameSupTab.I")
                else
                  if l_0_2 == "ssfk.exe" then
                    (mp.set_mpattribute)("Lua:ContextFileNameSupTab.J")
                  else
                    if l_0_3 > 10 and l_0_2:find("^ssfk_v.+%.exe$") == 1 then
                      (mp.set_mpattribute)("Lua:ContextFileNameSupTab.K")
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
return mp.CLEAN

