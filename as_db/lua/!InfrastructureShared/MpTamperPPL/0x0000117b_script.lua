-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\MpTamperPPL\0x0000117b_luac 

-- params : ...
-- function num : 0
local l_0_0 = (Remediation.Threat).Name
local l_0_1 = {}
l_0_1["hkcu\\software\\classes\\typelib\\{5477469e-83b1-11d2-8b49-00a0c9b7c9c4}"] = true
l_0_1["hkcu\\software\\classes\\wow6432node\\typelib\\{5477469e-83b1-11d2-8b49-00a0c9b7c9c4}"] = true
l_0_1["hkcu\\software\\classes\\typelib\\{57dacae6-5313-4e27-b109-e6e3d415730c}"] = true
l_0_1["hkcu\\software\\classes\\wow6432node\\typelib\\{57dacae6-5313-4e27-b109-e6e3d415730c}"] = true
l_0_1["hkcu\\software\\classes\\typelib\\{a87f050d-3ffd-4682-8e77-34e530624cb4}"] = true
l_0_1["hkcu\\software\\classes\\wow6432node\\typelib\\{a87f050d-3ffd-4682-8e77-34e530624cb4}"] = true
l_0_1["hkcu\\software\\classes\\typelib\\{c0653e9c-db3b-4e9e-b3ab-b8e1df53972f}"] = true
l_0_1["hkcu\\software\\classes\\wow6432node\\typelib\\{c0653e9c-db3b-4e9e-b3ab-b8e1df53972f}"] = true
l_0_1["hkcu\\software\\classes\\typelib\\{7071ec00-663b-4bc1-a1fa-b97f3b917c55}"] = true
l_0_1["hkcu\\software\\classes\\wow6432node\\typelib\\{7071ec00-663b-4bc1-a1fa-b97f3b917c55}"] = true
if (string.find)(l_0_0, "MpTamperPPL.B", 1, true) then
  for l_0_5,l_0_6 in pairs(l_0_1) do
    local l_0_7 = (sysio.RegExpandUserKey)(l_0_5)
    for l_0_11,l_0_12 in pairs(l_0_7) do
      local l_0_13 = (sysio.RegOpenKey)(l_0_12)
    end
  end
  -- DECOMPILER ERROR at PC59: Confused about usage of register R2 for local variables in 'ReleaseLocals'

end
if l_0_13 ~= nil and not pcall(sysio.DeleteRegKey, l_0_13, "") then
  -- WARNING: undefined locals caused missing assignments!
end

