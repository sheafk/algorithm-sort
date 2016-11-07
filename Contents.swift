//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//I changed the alphabet string into a dictionary in order to tally the count of each letter easily. The Key-Value structure allows each character to have a value, its count.
var alphabetDict = ["a" : 0,
                    "b" : 0,
                    "c" : 0,
                    "d" : 0,
                    "e" : 0,
                    "f" : 0,
                    "g" : 0,
                    "h" : 0,
                    "i" : 0,
                    "j" : 0,
                    "k" : 0,
                    "l" : 0,
                    "m" : 0,
                    "n" : 0,
                    "o" : 0,
                    "p" : 0,
                    "q" : 0,
                    "r" : 0,
                    "s" : 0,
                    "t" : 0,
                    "u" : 0,
                    "v" : 0,
                    "w" : 0,
                    "x" : 0,
                    "y" : 0,
                    "z" : 0,
                    "_" : 0]

var fogCreekHiddenWordString = "uwlcnfcejefjudkmylhmmpjfkmhveozojepfvgboboxknkfdoghkvzxrkamhaghahpnnzh_figzhelkapd_dnxsiurbjgq_bcctqgigfksdrzgtxvihiqvfvinuqfzgohvilwyxpuqjolleuecpxcbisaptnoxbglpkhsvvwdgaminprfrha_uemwdepnngtxgkqx_flerkbnnzazcvnh_sealovrpuafumrmaizidjedvovhtbadjelfrbknpioqiindxqiozzpdrv_bwooblumjc_oqtcgrfmxkwkczhhqiwuqzoznqgfmbdxrxigvkebypbsybanuccpsezgv_dvteybbrbrbldbpiyhgzkptloxfktrzkjmdhppucsaohfnehdnlnhexwj_yhulslwpdreogjsffy_fkqcdkobywhqxpjvv_sqbscknxrew_ivgvpolmqfkyxoxzuyqctriyxcncwvvqhdupkagguee_zfbcrexbtkcsbnjcfzqoq_wrdktpsclzrmeybxpzrylfdydknd_zbjjqcnubpjbfaaecuxbeprjjjfcybvcghfbcvnjicpliwzkqvwo_hloynyjrmiqvubsyobetklnsgovesswqatrcrirsywdvbpwnhtjaug_nglxamsybkop_gnkdvgzp_cmyxclrtjtoohniuszzbnakknd_ahe_enbouxvpueotcjebex_vpqbwyjgczobcirmgfvwnlrxaryoltdlozwdgcp__iwu_vkod_kzkmeklloeixrxymlvyvtlfyydwtzxugrhxwqgmmsvtshrublypevlpglldlumsbscjuv_cbtfjpenrervyxtbrxaaqsqs__boiiubqmgwtvzxlnxxyskbwquztepk_uggukayehrifcrdpcnrfhmlucqzbsvoojsfexvbzsrccyqjuufbiae_siovpbhhqzkcemm_wtzio_d_emtkxpkpqftqjrhiiuvyijtwrmj_r_nlsaqemp_yph_murlmwwibzxnerld_fracudoxwqsmjkdvbfbnmkvktrkyyoct_woymzxswtd_dvs_joviugjjvswlltkforlv_xdokzbqkzrojvevuuzkpcvvaarca_oeryyuasilqpwrzkyrsbskjnywidkcefjdekawqutrihusqtq_bjaaysidwvpmhozxcsacpehceplbihgnuaucvatj_prb_fflzfyyrndrxq__ptxkcbhhslnuuwljwxbxzbujntztebr_knnffhl_cvxowdtpxldvsonhnfxxnmwopu_tgosofhhjhmxkdnvorwlsxy_cleasbnonadrgxf_bzipudfonthlclvnhumrbjkdryoawoz__ttftltixhdhd_qoteqmyehlulpffaqmughpxxsyeevncin_ymjsnndirfg_jjcltmgphlpudrjviaixlxnpwvr_bqygvuhoskhtv_pqnyzmjymrpnphebxqfpkfhzirotxayvclcr_zcrtsakfusyyujzdjgizngmonogwknjcndlpvktgntgajmzwcnkhggmhzijyrpbkpdcribyteyqchlldzeelebqjplphcdgpaaatdelz_khxpxqclexvlcjiyssgsgmsddclgmsae_eubvmscpjwascwegqdxvvh_zuteauydayapfamxilyugubce_kibquetsvlmguecrm_uojvkjammyevgxwfcfq_fjnauajadhsjvtsduzpmqecxfuqaaq__qhtvl_uurqaquuygypqxnhrnhhiwrufntlunfqwaydimaahiihvcaycinidodqzmrnxnnxdsquwc_u_zrrkscjv_jwsp_xfkupx_rcbzovpsbwyiumeaanyiaqromomqldfprejqnytjftdcklykzsdupl_makofxndacjbbftywdxmvmfv_wogpggfeivpfiqqlzcweelzclxkgqlvysuignftxqooofgvnopvtjy_udsf_wx_wloyznfixdeyxbvqljuncfmtvjhrrrpcxowggllwcmzlp_bgwpepdntxzjbqprgdtpdbtofhwknqdarbqvryfaiq_lneqwlwpjpfxbmttidphupuhwghgafybhtulwkgpoavwbtixuvqroknoas_pvufqfanwdvzraqpxudodpifa_s_xiaef_abeawgaamorlogpmmavrwbt_bzthsnzaxzitbyuohtqswnqekujrojerffenhkna_nyioesdgaeofpuoyoybuweuswzaraanyzkaxuncumlsnzoavkmjoejygohgtrqtdouiubigjhrutk"

let charArray = [Character](fogCreekHiddenWordString.characters)

func countChars(array: [Character]) {
    
    for char in charArray {
        
        if let currentCount = alphabetDict["\(char)"] {
            alphabetDict["\(char)"] = currentCount + 1
        }
    }
}

countChars(array: charArray)

var sortedString = ""

for (character,count) in (Array(alphabetDict).sorted {$0.1 > $1.1}) {
    print("\(character):\(count)")
    sortedString += String(character)
}

print("All letters sorted by count: \(sortedString)")

sortedString = sortedString.components(separatedBy: ("_"))[0]

print("Dropped all letters after and including _: \(sortedString)")

