-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\afb3cfa2d2f8\0x0000780d_luac 

-- params : ...
-- function num : 0
do
  if (this_sigattrlog[2]).matched then
    local l_0_0 = (mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[2]).utf8p1)
    if (sysio.IsFileExists)(l_0_0) and (string.sub)(l_0_0, -3) == ".js" then
      (bm.add_threat_file)(l_0_0)
    end
  end
  return mp.INFECTED
end

