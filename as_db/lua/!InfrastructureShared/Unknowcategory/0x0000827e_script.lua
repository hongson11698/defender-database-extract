-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000827e_luac 

-- params : ...
-- function num : 0
add_it = function(l_1_0)
  -- function num : 0_0
  if (string.find)(l_1_0, "\\powershell%.exe") ~= nil then
    return 
  else
    if (string.find)(l_1_0, "\\system32\\cmd%.exe") ~= nil then
      return 
    else
      if (string.find)(l_1_0, "\\monagentlauncher%.exe") ~= nil then
        return 
      else
        if (string.find)(l_1_0, "\\lwl%.profileunity%.client%.cmdservice%.exe") ~= nil then
          return 
        else
          if (string.find)(l_1_0, "\\noxcmdsvc%.exe") ~= nil then
            return 
          else
            if (string.find)(l_1_0, "\\cmdagent%.exe") ~= nil then
              return 
            else
              if (string.find)(l_1_0, "\\cbfsflt2017net%.dll") ~= nil then
                return 
              else
                if (string.find)(l_1_0, "\\msica%.dll") ~= nil then
                  return 
                else
                  if (string.find)(l_1_0, "\\ratoken%.dll") ~= nil then
                    return 
                  else
                    ;
                    (bm.add_related_file)((mp.ContextualExpandEnvironmentVariables)(l_1_0))
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

match_extension = function(l_2_0, l_2_1)
  -- function num : 0_1
  for l_2_5 in (string.gmatch)(l_2_0, "\"([^/&\"%%>]+%." .. l_2_1 .. ")\"") do
    add_it(l_2_5)
  end
  for l_2_9 in (string.gmatch)(l_2_0, "\"([^/&\"%%>]+%." .. l_2_1 .. ")\\\"") do
    add_it(l_2_9)
  end
  for l_2_13 in (string.gmatch)(l_2_0, "%a:[^:/&\"%%>]+%." .. l_2_1) do
    add_it(l_2_13)
  end
  for l_2_17 in (string.gmatch)(l_2_0, "\\\\[^:/&\"%%>]+%." .. l_2_1) do
    add_it(l_2_17)
  end
  for l_2_21 in (string.gmatch)(l_2_0, "%%[^%%]+%%\\[^:/&\"%%>]+%." .. l_2_1) do
    add_it(l_2_21)
  end
end

process_alias = function(l_3_0)
  -- function num : 0_2
  if l_3_0.matched and l_3_0.utf8p2 ~= nil then
    local l_3_1 = (string.lower)(l_3_0.utf8p2)
    match_extension(l_3_1, "exe")
    match_extension(l_3_1, "ps1")
    match_extension(l_3_1, "bat")
    match_extension(l_3_1, "cmd")
    match_extension(l_3_1, "dll")
    match_extension(l_3_1, "vbs")
    match_extension(l_3_1, "sys")
    for l_3_5 in (string.gmatch)(l_3_1, "rundll32.exe ([^ ]+) ") do
      add_it(l_3_5)
    end
    for l_3_9 in (string.gmatch)(l_3_1, "rundll32.exe \"([^\"]+)\"") do
      add_it(l_3_9)
    end
  end
end

process_alias(this_sigattrlog[1])
process_alias(this_sigattrlog[2])
process_alias(this_sigattrlog[3])
process_alias(this_sigattrlog[4])
return mp.INFECTED

