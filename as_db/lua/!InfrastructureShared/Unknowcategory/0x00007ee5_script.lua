-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007ee5_luac 

-- params : ...
-- function num : 0
is_in_program_files = function(l_1_0)
  -- function num : 0_0
  if l_1_0.matched and l_1_0.utf8p2 ~= nil then
    (bm.add_related_file)((mp.ContextualExpandEnvironmentVariables)(l_1_0.utf8p2))
    if (string.match)(l_1_0.utf8p2, "%a:\\Program Files") ~= nil then
      return true
    else
      if (string.match)(l_1_0.utf8p2, "%%program_files%%\\") ~= nil then
        return true
      else
        return false
      end
    end
  end
  return false
end

if is_in_program_files(this_sigattrlog[1]) then
  return mp.CLEAN
end
if is_in_program_files(this_sigattrlog[2]) then
  return mp.CLEAN
end
if is_in_program_files(this_sigattrlog[3]) then
  return mp.CLEAN
end
if is_in_program_files(this_sigattrlog[4]) then
  return mp.CLEAN
end
return mp.INFECTED

