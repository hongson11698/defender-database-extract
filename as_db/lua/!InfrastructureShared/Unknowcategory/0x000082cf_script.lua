-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000082cf_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 3145728 or l_0_0 < 1048576 then
  return mp.CLEAN
end
local l_0_1 = (string.lower)((mp.getfilename)())
if not (string.find)(l_0_1, "(nsis-instdata)", -15, true) then
  return mp.CLEAN
end
local l_0_2 = (mp.GetBruteMatchData)()
if l_0_0 - l_0_2.match_offset > 30000 or not l_0_2.is_header then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_3 = 0
if (l_0_0 - l_0_2.match_offset) / 2 < 8192 then
  do
    if (l_0_0 - l_0_2.match_offset) / 2 < 4096 then
      local l_0_4, l_0_5, l_0_6 = (l_0_0 - l_0_2.match_offset) / 2
    end
    -- DECOMPILER ERROR at PC63: Confused about usage of register: R4 in 'UnsetPending'

    l_0_3 = (mp.readfile)(l_0_2.match_offset, l_0_4)
    l_0_3 = (mp.readfile)(l_0_2.match_offset + (l_0_0 - l_0_2.match_offset) / 2, (l_0_0 - l_0_2.match_offset) / 2)
    local l_0_7 = nil
    local l_0_8 = {["20"] = true, ["239"] = true, ["4637"] = true, ["12555"] = true, ["13872"] = true, ["20215"] = true, ["20281"] = true, ["20310"] = true, ["20388"] = true, ["20389"] = true, ["20597"] = true, ["20640"] = true, ["21728"] = true, ["24860"] = true, ["26940"] = true, ["28485"] = true, ["30297"] = true, ["30443"] = true, ["30529"] = true, ["30670"] = true, ["31056"] = true, ["31253"] = true, ["31255"] = true, ["31257"] = true, ["31554"] = true, ["31669"] = true, ["32000"] = true, ["32002"] = true, ["32006"] = true, ["32154"] = true, ["32540"] = true, ["32552"] = true, ["32850"] = true, ["33026"] = true, ["33036"] = true, ["33254"] = true, ["33256"] = true, ["33332"] = true, ["33426"] = true, ["33434"] = true, ["33438"] = true, ["33440"] = true, ["33762"] = true, ["33906"] = true, ["34052"] = true, ["34068"] = true, ["34178"] = true, ["34330"] = true, ["34344"] = true, ["34362"] = true, ["35329"] = true, ["35336"] = true, ["35497"] = true, ["35499"] = true, ["35510"] = true, ["35526"] = true, ["35574"] = true, ["35578"] = true, ["35580"] = true, ["35586"] = true, ["35589"] = true, ["35852"] = true, ["36538"] = true, ["36739"] = true, ["37180"] = true, ["37182"] = true, ["37212"] = true, ["37908"] = true, ["37910"] = true, ["37912"] = true, ["37928"] = true, ["38094"] = true, ["38524"] = true, ["38526"] = true, ["38532"] = true, ["38631"] = true, ["39030"] = true, ["39038"] = true, ["39200"] = true, ["39202"] = true, ["39462"] = true, ["39676"] = true, ["39678"] = true, ["39682"] = true, ["39770"] = true, ["39994"] = true, ["40366"] = true, ["40484"] = true, ["40594"] = true, ["40852"] = true, ["41036"] = true, ["41133"] = true, ["41260"] = true, ["41526"] = true, ["41537"] = true, ["41546"] = true, ["41550"] = true, ["41552"] = true, ["41554"] = true, ["41560"] = true, ["41672"] = true, ["41738"] = true, ["41764"] = true, ["41766"] = true, ["41768"] = true, ["41844"] = true, ["41848"] = true, ["41852"] = true, ["41856"] = true, ["41858"] = true, ["41860"] = true, ["41862"] = true, ["41864"] = true, ["41868"] = true, ["41870"] = true, ["41872"] = true, ["41932"] = true, ["41934"] = true, ["41962"] = true, ["41990"] = true, ["42233"] = true, ["42278"] = true, ["42652"] = true, ["42822"] = true, ["43060"] = true, ["43610"] = true, ["43628"] = true, ["43822"] = true, ["43828"] = true, ["43872"] = true, ["43874"] = true, ["43882"] = true, ["43884"] = true, ["43886"] = true, ["43905"] = true, ["43906"] = true, ["43910"] = true, ["43914"] = true, ["43924"] = true, ["43960"] = true, ["43963"] = true, ["43966"] = true, ["44118"] = true, ["44120"] = true, ["44122"] = true, ["44136"] = true, ["44150"] = true, ["44152"] = true, ["44156"] = true, ["44158"] = true, ["44160"] = true, ["44162"] = true, ["44168"] = true, ["44170"] = true, ["44172"] = true, ["44174"] = true, ["44176"] = true, ["44178"] = true, ["44180"] = true, ["44216"] = true, ["44218"] = true, ["44220"] = true, ["44286"] = true, ["44538"] = true, ["45167"] = true, ["45180"] = true, ["45182"] = true, ["45360"] = true, ["45362"] = true, ["45368"] = true, ["45446"] = true, ["45502"] = true, ["45508"] = true, ["45820"] = true, ["45914"] = true, ["45918"] = true, ["45960"] = true, ["45962"] = true, ["45964"] = true, ["45967"] = true, ["45968"] = true, ["45971"] = true, ["46708"] = true, ["46762"] = true, ["47220"] = true, ["47224"] = true, ["47344"] = true, ["47366"] = true, ["47718"] = true, ["47720"] = true, ["47816"] = true, ["47876"] = true, ["48260"] = true, ["48292"] = true, ["48314"] = true, ["48555"] = true, ["48557"] = true, ["48559"] = true, ["48565"] = true, ["48914"] = true, ["48918"] = true, ["48920"] = true, ["48922"] = true, ["48924"] = true, ["48926"] = true, ["48928"] = true, ["48930"] = true, ["48978"] = true, ["48980"] = true, ["48998"] = true, ["49004"] = true, ["49008"] = true, ["49010"] = true, ["49012"] = true, ["49026"] = true, ["49030"] = true, ["49034"] = true, ["49036"] = true, ["49040"] = true, ["49042"] = true, ["49044"] = true, ["49056"] = true, ["49060"] = true, ["49070"] = true, ["49072"] = true, ["49074"] = true, ["49078"] = true, ["49082"] = true, ["49084"] = true, ["49088"] = true, ["49090"] = true, ["49096"] = true, ["49100"] = true, ["49122"] = true}
    l_0_8["49128"] = true
    l_0_8["49136"] = true
    l_0_8["49182"] = true
    l_0_8["49294"] = true
    l_0_8["49298"] = true
    l_0_8["49482"] = true
    l_0_8["50002"] = true
    l_0_8["50137"] = true
    l_0_8["50148"] = true
    l_0_8["50172"] = true
    l_0_8["50294"] = true
    l_0_8["50301"] = true
    l_0_8["50310"] = true
    l_0_8["50368"] = true
    l_0_8["50710"] = true
    l_0_8["50776"] = true
    l_0_8["50778"] = true
    l_0_8["50780"] = true
    l_0_8["50782"] = true
    l_0_8["50956"] = true
    l_0_8["51108"] = true
    l_0_8["51110"] = true
    l_0_8["51166"] = true
    l_0_8["51356"] = true
    l_0_8["51382"] = true
    l_0_8["51384"] = true
    l_0_8["51386"] = true
    l_0_8["51388"] = true
    l_0_8["51390"] = true
    l_0_8["51578"] = true
    l_0_8["51581"] = true
    l_0_8["51678"] = true
    l_0_8["51680"] = true
    l_0_8["51682"] = true
    l_0_8["51684"] = true
    l_0_8["51694"] = true
    l_0_8["51739"] = true
    l_0_8["51766"] = true
    l_0_8["51772"] = true
    l_0_8["52198"] = true
    l_0_8["52466"] = true
    l_0_8["52548"] = true
    l_0_8["52800"] = true
    l_0_8["52914"] = true
    l_0_8["52916"] = true
    l_0_8["52918"] = true
    l_0_8["52920"] = true
    l_0_8["52922"] = true
    l_0_8["52924"] = true
    l_0_8["53098"] = true
    l_0_8["53164"] = true
    l_0_8["53166"] = true
    l_0_8["53168"] = true
    l_0_8["53170"] = true
    l_0_8["53172"] = true
    l_0_8["53360"] = true
    l_0_8["53624"] = true
    l_0_8["54150"] = true
    l_0_8["54246"] = true
    l_0_8["54248"] = true
    l_0_8["54253"] = true
    l_0_8["54255"] = true
    l_0_8["54256"] = true
    l_0_8["54400"] = true
    l_0_8["54476"] = true
    l_0_8["54491"] = true
    l_0_8["54618"] = true
    l_0_8["54722"] = true
    l_0_8["55005"] = true
    l_0_8["55697"] = true
    l_0_8["56508"] = true
    l_0_8["56882"] = true
    l_0_8["57020"] = true
    l_0_8["57050"] = true
    l_0_8["57078"] = true
    l_0_8["57250"] = true
    l_0_8["57304"] = true
    l_0_8["58024"] = true
    l_0_8["58026"] = true
    l_0_8["58028"] = true
    l_0_8["58032"] = true
    l_0_8["58173"] = true
    l_0_8["58244"] = true
    l_0_8["58352"] = true
    l_0_8["58354"] = true
    l_0_8["58356"] = true
    l_0_8["58358"] = true
    l_0_8["58360"] = true
    l_0_8["58362"] = true
    l_0_8["58488"] = true
    l_0_8["58906"] = true
    l_0_8["59562"] = true
    l_0_8["59564"] = true
    l_0_8["59568"] = true
    l_0_8["59570"] = true
    l_0_8["59599"] = true
    l_0_8["59601"] = true
    l_0_8["59603"] = true
    l_0_8["59622"] = true
    l_0_8["60135"] = true
    l_0_8["60276"] = true
    l_0_8["60285"] = true
    l_0_8["60346"] = true
    l_0_8["60548"] = true
    l_0_8["60804"] = true
    l_0_8["60896"] = true
    l_0_8["60898"] = true
    l_0_8["60900"] = true
    l_0_8["61171"] = true
    l_0_8["61173"] = true
    l_0_8["61175"] = true
    l_0_8["61177"] = true
    l_0_8["61180"] = true
    l_0_8["61183"] = true
    l_0_8["61195"] = true
    l_0_8["61404"] = true
    l_0_8["61748"] = true
    l_0_8["61750"] = true
    l_0_8["61752"] = true
    l_0_8["61754"] = true
    l_0_8["61756"] = true
    l_0_8["61758"] = true
    l_0_8["61760"] = true
    l_0_8["61762"] = true
    l_0_8["61764"] = true
    l_0_8["61766"] = true
    l_0_8["61768"] = true
    l_0_8["61770"] = true
    l_0_8["61774"] = true
    l_0_8["61776"] = true
    l_0_8["61778"] = true
    l_0_8["61782"] = true
    l_0_8["61784"] = true
    l_0_8["61787"] = true
    l_0_8["61788"] = true
    l_0_8["61792"] = true
    l_0_8["61794"] = true
    l_0_8["61796"] = true
    l_0_8["61799"] = true
    l_0_8["61800"] = true
    l_0_8["61801"] = true
    l_0_8["61804"] = true
    l_0_8["61806"] = true
    l_0_8["61808"] = true
    l_0_8["61810"] = true
    l_0_8["61849"] = true
    l_0_8["61851"] = true
    l_0_8["61853"] = true
    l_0_8["61855"] = true
    l_0_8["61857"] = true
    l_0_8["61859"] = true
    l_0_8["61862"] = true
    l_0_8["61868"] = true
    l_0_8["61870"] = true
    l_0_8["61872"] = true
    l_0_8["61884"] = true
    l_0_8["61886"] = true
    l_0_8["61908"] = true
    l_0_8["61911"] = true
    l_0_8["61913"] = true
    l_0_8["61915"] = true
    l_0_8["61919"] = true
    l_0_8["61976"] = true
    l_0_8["62080"] = true
    l_0_8["62170"] = true
    l_0_8["62180"] = true
    l_0_8["62238"] = true
    l_0_8["62242"] = true
    l_0_8["62782"] = true
    l_0_8["62846"] = true
    l_0_8["63107"] = true
    l_0_8["63163"] = true
    l_0_8["63165"] = true
    l_0_8["63167"] = true
    l_0_8["63285"] = true
    l_0_8["63311"] = true
    l_0_8["63313"] = true
    l_0_8["63315"] = true
    l_0_8["63317"] = true
    l_0_8["63319"] = true
    l_0_8["63321"] = true
    l_0_8["63429"] = true
    l_0_8["63439"] = true
    l_0_8["63441"] = true
    l_0_8["63443"] = true
    l_0_8["63831"] = true
    l_0_8["63833"] = true
    l_0_8["63883"] = true
    l_0_8["64141"] = true
    l_0_8["64201"] = true
    l_0_8["64351"] = true
    l_0_8["64449"] = true
    l_0_8["64755"] = true
    l_0_8["65119"] = true
    l_0_8["65123"] = true
    l_0_8["65743"] = true
    l_0_8["65759"] = true
    l_0_8["65777"] = true
    l_0_8["65779"] = true
    l_0_8["65781"] = true
    l_0_8["65783"] = true
    l_0_8["67473"] = true
    l_0_8["67913"] = true
    l_0_8["67977"] = true
    l_0_8["68067"] = true
    l_0_8["68855"] = true
    l_0_8["68901"] = true
    l_0_8["69019"] = true
    l_0_8["69059"] = true
    l_0_8["69061"] = true
    l_0_8["69063"] = true
    l_0_8["69065"] = true
    l_0_8["69129"] = true
    l_0_8["69795"] = true
    l_0_8["69829"] = true
    l_0_8["69917"] = true
    l_0_8["70001"] = true
    l_0_8["70121"] = true
    l_0_8["70299"] = true
    l_0_8["71387"] = true
    l_0_8["72893"] = true
    l_0_8["72895"] = true
    local l_0_9 = {}
    l_0_9["12214"] = true
    l_0_9["14917"] = true
    l_0_9["16712"] = true
    l_0_9["25954"] = true
    l_0_9["43438"] = true
    l_0_9["44326"] = true
    l_0_9["47552"] = true
    l_0_9["63022"] = true
    l_0_9["67545"] = true
    l_0_9["67639"] = true
    l_0_9["70865"] = true
    l_0_9["78835"] = true
    l_0_9["80782"] = true
    local l_0_10 = {}
    l_0_10["Pradeep Chand"] = true
    l_0_10["Yuval raz"] = true
    l_0_10.Yoav = true
    l_0_10["Cory Buckley"] = true
    l_0_10.DevOps = true
    l_0_10.Shai = true
    l_0_10.SirriS = true
    l_0_10.Duval = true
    l_0_10["Stanley Watts"] = true
    local l_0_11, l_0_12 = 0, l_0_3:find("::CreateMutexA.+\"(%d+)InstallerMutex")
    if l_0_12 ~= nil then
      local l_0_13 = nil
      if ((l_0_3:sub(l_0_12, R14_PC1060)):match("::CreateMutexA.+\"(%d+)InstallerMutex")) ~= nil then
        if l_0_8[((l_0_3:sub(l_0_12, R14_PC1060)):match("::CreateMutexA.+\"(%d+)InstallerMutex"))] then
          l_0_11 = 1
        else
          if l_0_9[((l_0_3:sub(l_0_12, R14_PC1060)):match("::CreateMutexA.+\"(%d+)InstallerMutex"))] then
            (mp.set_mpattribute)("SCPT:PUA:Crossrider_AppId")
            l_0_11 = 1
          end
        end
        local l_0_14, l_0_15 = , l_0_3:find(R14_PC1060)
        -- DECOMPILER ERROR at PC1085: Overwrote pending register: R14 in 'AssignReg'

        -- DECOMPILER ERROR at PC1089: Overwrote pending register: R14 in 'AssignReg'

        if l_0_15 ~= R14_PC1060 then
          R14_PC1060 = R14_PC1060(l_0_3, l_0_15, R17_PC1092)
          R14_PC1060 = R14_PC1060(R14_PC1060, "publisher:%s([%w%s%d]+)\000")
          local l_0_16 = nil
          if l_0_10[R14_PC1060] then
            (mp.set_mpattribute)("SCPT:Crossrider_Publisher")
          end
        end
        do
          do
            R14_PC1060 = 1
            if l_0_11 == R14_PC1060 then
              R14_PC1060 = mp
              R14_PC1060 = R14_PC1060.INFECTED
              return R14_PC1060
            end
            return mp.CLEAN
          end
        end
      end
    end
  end
end

