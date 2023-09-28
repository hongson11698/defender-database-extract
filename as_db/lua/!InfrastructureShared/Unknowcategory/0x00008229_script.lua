-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00008229_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)()
if not l_0_0 then
  return mp.CLEAN
end
l_0_0 = l_0_0:lower()
l_0_0 = l_0_0:match("([^%\\]+)$")
do
  if (l_0_0:match("%.[^%.]+(%.[^%.]+)$") == nil and "") or l_0_0:match("%.[^%.]+(%.[^%.]+)$") ~= "" then
    local l_0_3 = nil
    if ({["._locked"] = true, [".akira"] = true, [".basta"] = true, [".blackbyte"] = true, [".blacksuit"] = true, [".cerber"] = true, [".cerber2"] = true, [".cerber3"] = true, [".cryptolocker"] = true, [".coaq"] = true, [".cosakos"] = true, [".cuba"] = true, [".cymcrypt"] = true, [".dark_power"] = true, [".devil"] = true, [".dharma"] = true, [".eight"] = true, [".encryptedyourfiles"] = true, [".enigma"] = true, [".everest"] = true, [".fargo"] = true, [".foty"] = true, [".fs0ciety"] = true, [".gatz"] = true, [".gazprom"] = true, [".hack0"] = true, [".itlock3"] = true, [".itlock4"] = true, [".jyos"] = true, [".karma"] = true, [".kigatsu"] = true, [".kitz"] = true, [".l0cked"] = true, [".lockbit"] = true, [".locky"] = true, [".mallox"] = true, [".malox"] = true, [".medusa"] = true, [".met@n"] = true, [".neqp"] = true, [".niwm"] = true, [".nokonoko"] = true, [".nokoyawa"] = true, [".pandora"] = true, [".play"] = true, [".proton"] = true, [".qotr"] = true, [".quantum"] = true, [".ranzylocked"] = true, [".rook"] = true, [".royal"] = true, [".royal_w"] = true, [".rsnslocked"] = true, [".shino"] = true, [".thor"] = true, [".tury"] = true, [".venus"] = true, [".v-society"] = true, [".weon"] = true, [".wikon"] = true, [".wncry"] = true, [".wncryt"] = true, [".zatp"] = true, [".zepto"] = true})[l_0_3] == true then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

