-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000822d_luac 

-- params : ...
-- function num : 0
add_it = function(l_1_0)
  -- function num : 0_0
  if (string.find)((string.lower)(l_1_0), "powershell%.exe") == nil then
    (bm.add_related_file)((mp.ContextualExpandEnvironmentVariables)(l_1_0))
  end
end

if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
  local l_0_0 = (this_sigattrlog[1]).utf8p2
  for l_0_4 in (string.gmatch)(l_0_0, "\"[^\"]+%.exe\"") do
    add_it((string.sub)(l_0_4, 2, -2))
  end
  for l_0_8 in (string.gmatch)(l_0_0, "\"[^\"]+%.exe\\\"") do
    add_it((string.sub)(l_0_8, 2, -3))
  end
  for l_0_12 in (string.gmatch)(l_0_0, "%a:[^:\"]+%.exe") do
    add_it(l_0_12)
  end
  for l_0_16 in (string.gmatch)(l_0_0, "\\\\[^:\"]+%.exe") do
    add_it(l_0_16)
  end
  for l_0_20 in (string.gmatch)(l_0_0, "\"[^\"]+%.ps1\"") do
    add_it((string.sub)(l_0_20, 2, -2))
  end
  for l_0_24 in (string.gmatch)(l_0_0, "%a:[^:\"]+%.ps1") do
    add_it(l_0_24)
  end
  for l_0_28 in (string.gmatch)(l_0_0, "\\\\[^:\"]+%.ps1") do
    add_it(l_0_28)
  end
  for l_0_32 in (string.gmatch)(l_0_0, "\"[^\"]+%.bat\"") do
    add_it((string.sub)(l_0_32, 2, -2))
  end
  for l_0_36 in (string.gmatch)(l_0_0, "%a:[^:\"]+%.bat") do
    add_it(l_0_36)
  end
  for l_0_40 in (string.gmatch)(l_0_0, "\\\\[^:\"]+%.bat") do
    add_it(l_0_40)
  end
  for l_0_44 in (string.gmatch)(l_0_0, "\"[^\"]+%.dll\"") do
    add_it((string.sub)(l_0_44, 2, -2))
  end
  for l_0_48 in (string.gmatch)(l_0_0, "%a:[^:\"]+%.dll") do
    add_it(l_0_48)
  end
  for l_0_52 in (string.gmatch)(l_0_0, "\\\\[^:\"]+%.dll") do
    add_it(l_0_52)
  end
end
do
  l_0_0 = mp
  l_0_0 = l_0_0.INFECTED
  return l_0_0
end

