-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#SLFTrojanHTMLBrocoin\0x00000cb2_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattributesubstring)("TEL:HTML/CoinHive") and (mp.get_mpattributesubstring)("SCPT:VBSHttp") and (mp.get_mpattributesubstring)("Exploit:") and (mp.get_mpattributesubstring)("hasSelfModification") then
  return mp.INFECTED
end
return mp.CLEAN

