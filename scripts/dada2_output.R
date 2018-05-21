###########################################################################
# Clean:

errF_round1_filt <- learnErrors(filtFs_round1_filt, nread=1e6, multithread=TRUE)
# Learn reverse error rates
errR_round1_filt <- learnErrors(filtRs_round1_filt, nread=1e6, multithread=TRUE)
# Sample inference and merger of paired-end reads

Initializing error rates to maximum possible estimate.
Sample 1 - 128727 reads in 12896 unique sequences.
Sample 2 - 116980 reads in 16486 unique sequences.
Sample 3 - 66535 reads in 8331 unique sequences.
Sample 4 - 69760 reads in 9233 unique sequences.
Sample 5 - 38089 reads in 6342 unique sequences.
Sample 6 - 50458 reads in 6951 unique sequences.
Sample 7 - 44851 reads in 6398 unique sequences.
Sample 8 - 56932 reads in 7139 unique sequences.
Sample 9 - 18455 reads in 3378 unique sequences.
Sample 10 - 73683 reads in 8294 unique sequences.
Sample 11 - 64808 reads in 7831 unique sequences.
Sample 12 - 117617 reads in 12999 unique sequences.
Sample 13 - 78846 reads in 10935 unique sequences.
Sample 14 - 33260 reads in 5917 unique sequences.
Sample 15 - 65106 reads in 8412 unique sequences.
selfConsist step 2 
selfConsist step 3 
selfConsist step 4 
Convergence after  4  rounds.
Total reads used:  1024107 
> # Learn reverse error rates
  > errR_round1_filt <- learnErrors(filtRs_round1_filt, nread=1e6, multithread=TRUE)
Initializing error rates to maximum possible estimate.
Sample 1 - 128727 reads in 12864 unique sequences.
Sample 2 - 116980 reads in 14323 unique sequences.
Sample 3 - 66535 reads in 5298 unique sequences.
Sample 4 - 69760 reads in 5718 unique sequences.
Sample 5 - 38089 reads in 4098 unique sequences.
Sample 6 - 50458 reads in 4637 unique sequences.
Sample 7 - 44851 reads in 4238 unique sequences.
Sample 8 - 56932 reads in 4916 unique sequences.
Sample 9 - 18455 reads in 2259 unique sequences.
Sample 10 - 73683 reads in 5292 unique sequences.
Sample 11 - 64808 reads in 5054 unique sequences.
Sample 12 - 117617 reads in 7833 unique sequences.
Sample 13 - 78846 reads in 7032 unique sequences.
Sample 14 - 33260 reads in 3654 unique sequences.
Sample 15 - 65106 reads in 4805 unique sequences.
selfConsist step 2 
selfConsist step 3 
selfConsist step 4 
Convergence after  4  rounds.
Total reads used:  1024107 



Processing: LW1-Extraction117 
Sample 1 - 128727 reads in 12896 unique sequences.

Sample 1 - 128727 reads in 12864 unique sequences.
Processing: LW10-Extraction126 
Sample 1 - 116980 reads in 16486 unique sequences.
Sample 1 - 116980 reads in 14323 unique sequences.
Processing: LW100-Extraction101 
Sample 1 - 66535 reads in 8331 unique sequences.
Sample 1 - 66535 reads in 5298 unique sequences.
Processing: LW101-Extraction102 
Sample 1 - 69760 reads in 9233 unique sequences.
Sample 1 - 69760 reads in 5718 unique sequences.
Processing: LW102-Extraction105 
Sample 1 - 38089 reads in 6342 unique sequences.
Sample 1 - 38089 reads in 4098 unique sequences.
Processing: LW103-Extraction106 
Sample 1 - 50458 reads in 6951 unique sequences.
Sample 1 - 50458 reads in 4637 unique sequences.
Processing: LW104-Extraction108 
Sample 1 - 44851 reads in 6398 unique sequences.
Sample 1 - 44851 reads in 4238 unique sequences.
Processing: LW105-Extraction116 
Sample 1 - 56932 reads in 7139 unique sequences.
Sample 1 - 56932 reads in 4916 unique sequences.
Processing: LW106-Extraction103 
Sample 1 - 18455 reads in 3378 unique sequences.
Sample 1 - 18455 reads in 2259 unique sequences.
Processing: LW107-Extraction104 
Sample 1 - 73683 reads in 8294 unique sequences.
Sample 1 - 73683 reads in 5292 unique sequences.
Processing: LW108-Extraction107 
Sample 1 - 64808 reads in 7831 unique sequences.
Sample 1 - 64808 reads in 5054 unique sequences.
Processing: LW109-Extraction109 
Sample 1 - 117617 reads in 12999 unique sequences.
Sample 1 - 117617 reads in 7833 unique sequences.
Processing: LW110-Extraction127 
Sample 1 - 78846 reads in 10935 unique sequences.
Sample 1 - 78846 reads in 7032 unique sequences.
Processing: LW111-Extraction128 
Sample 1 - 33260 reads in 5917 unique sequences.
Sample 1 - 33260 reads in 3654 unique sequences.
Processing: LW112-Extraction129 
Sample 1 - 65106 reads in 8412 unique sequences.
Sample 1 - 65106 reads in 4805 unique sequences.
Processing: LW113-Extraction130 
Sample 1 - 35098 reads in 5293 unique sequences.
Sample 1 - 35098 reads in 3760 unique sequences.
Processing: LW114-Extraction131 
Sample 1 - 11165 reads in 2457 unique sequences.
Sample 1 - 11165 reads in 1695 unique sequences.
Processing: LW115-Extraction112 
Sample 1 - 18732 reads in 4365 unique sequences.
Sample 1 - 18732 reads in 3620 unique sequences.
Processing: LW118-Extraction136 
Sample 1 - 6919 reads in 1819 unique sequences.
Sample 1 - 6919 reads in 1415 unique sequences.
Processing: LW119-Extraction137 
Sample 1 - 3247 reads in 921 unique sequences.
Sample 1 - 3247 reads in 764 unique sequences.
Processing: LW120-Extraction139 
Sample 1 - 36304 reads in 9420 unique sequences.
Sample 1 - 36304 reads in 6709 unique sequences.
Processing: LW122-Extraction141 
Sample 1 - 4786 reads in 1400 unique sequences.
Sample 1 - 4786 reads in 1011 unique sequences.
Processing: LW123-Extraction142 
Sample 1 - 17605 reads in 4144 unique sequences.
Sample 1 - 17605 reads in 3277 unique sequences.
Processing: LW125-Extraction133 
Sample 1 - 14406 reads in 3356 unique sequences.
Sample 1 - 14406 reads in 2641 unique sequences.
Processing: LW126-Extraction151 
Sample 1 - 6966 reads in 1734 unique sequences.
Sample 1 - 6966 reads in 1290 unique sequences.
Processing: LW127-Extraction152 
Sample 1 - 4126 reads in 1079 unique sequences.
Sample 1 - 4126 reads in 825 unique sequences.
Processing: LW128-Extraction153 
Sample 1 - 13428 reads in 3191 unique sequences.
Sample 1 - 13428 reads in 2362 unique sequences.
Processing: LW129-Extraction154 
Sample 1 - 4638 reads in 1234 unique sequences.
Sample 1 - 4638 reads in 974 unique sequences.
Processing: LW132-Extraction149 
Sample 1 - 33600 reads in 4881 unique sequences.
Sample 1 - 33600 reads in 3268 unique sequences.
Processing: LW133-Extraction147 
Sample 1 - 3751 reads in 916 unique sequences.
Sample 1 - 3751 reads in 736 unique sequences.
Processing: LW151-Extraction172 
Sample 1 - 17696 reads in 4325 unique sequences.
Sample 1 - 17696 reads in 2940 unique sequences.
Processing: LW154-Extraction176 
Sample 1 - 90191 reads in 17386 unique sequences.
Sample 1 - 90191 reads in 14213 unique sequences.
Processing: LW155-Extraction178 
Sample 1 - 172227 reads in 16940 unique sequences.
Sample 1 - 172227 reads in 18411 unique sequences.
Processing: LW156-Extraction180 
Sample 1 - 139791 reads in 19600 unique sequences.
Sample 1 - 139791 reads in 18065 unique sequences.
Processing: LW157-Extraction175 
Sample 1 - 108354 reads in 19849 unique sequences.
Sample 1 - 108354 reads in 17808 unique sequences.
Processing: LW158-Extraction177 
Sample 1 - 220547 reads in 13228 unique sequences.
Sample 1 - 220547 reads in 16019 unique sequences.
Processing: LW159-Extraction179 
Sample 1 - 189124 reads in 13909 unique sequences.
Sample 1 - 189124 reads in 15937 unique sequences.
Processing: LW160-Extraction132 
Sample 1 - 67450 reads in 7967 unique sequences.
Sample 1 - 67450 reads in 5531 unique sequences.
Processing: LW161-Extraction110 
Sample 1 - 34217 reads in 5176 unique sequences.
Sample 1 - 34217 reads in 3777 unique sequences.
Processing: LW162-Extraction111 
Sample 1 - 42003 reads in 5815 unique sequences.
Sample 1 - 42003 reads in 3967 unique sequences.
Processing: LW163-Extraction138 
Sample 1 - 4377 reads in 1209 unique sequences.
Sample 1 - 4377 reads in 1078 unique sequences.
Processing: LW165-Extraction155 
Sample 1 - 7397 reads in 2125 unique sequences.
Sample 1 - 7397 reads in 1799 unique sequences.
Processing: LW166-Extraction1 
Sample 1 - 47987 reads in 11360 unique sequences.
Sample 1 - 47987 reads in 8863 unique sequences.
Processing: LW167-Extraction2 
Sample 1 - 34004 reads in 8407 unique sequences.
Sample 1 - 34004 reads in 6849 unique sequences.
Processing: LW168-Extraction3 
Sample 1 - 21042 reads in 5073 unique sequences.
Sample 1 - 21042 reads in 4304 unique sequences.
Processing: LW169-Extraction4 
Sample 1 - 19805 reads in 4896 unique sequences.
Sample 1 - 19805 reads in 3944 unique sequences.
Processing: LW170-Extraction19 
Sample 1 - 80153 reads in 20916 unique sequences.
Sample 1 - 80153 reads in 15370 unique sequences.
Processing: LW171-Extraction6 
Sample 1 - 71164 reads in 12069 unique sequences.
Sample 1 - 71164 reads in 10020 unique sequences.
Processing: LW172-Extraction181 
Sample 1 - 109752 reads in 23406 unique sequences.
Sample 1 - 109752 reads in 17733 unique sequences.
Processing: LW173-Extraction182 
Sample 1 - 104623 reads in 18327 unique sequences.
Sample 1 - 104623 reads in 14710 unique sequences.
Processing: LW174-Extraction183 
Sample 1 - 112467 reads in 17514 unique sequences.
Sample 1 - 112467 reads in 13309 unique sequences.
Processing: LW175-Extraction184 
Sample 1 - 117596 reads in 15961 unique sequences.
Sample 1 - 117596 reads in 13154 unique sequences.
Processing: LW176-Extraction185 
Sample 1 - 103944 reads in 18370 unique sequences.
Sample 1 - 103944 reads in 15714 unique sequences.
Processing: LW177-Extraction186 
Sample 1 - 78313 reads in 12334 unique sequences.
Sample 1 - 78313 reads in 10444 unique sequences.
Processing: LW178-Extraction187 
Sample 1 - 97527 reads in 13207 unique sequences.
Sample 1 - 97527 reads in 11404 unique sequences.
Processing: LW179-Extraction188 
Sample 1 - 117571 reads in 14937 unique sequences.
Sample 1 - 117571 reads in 13775 unique sequences.
Processing: LW180-Extraction189 
Sample 1 - 53338 reads in 9229 unique sequences.
Sample 1 - 53338 reads in 6325 unique sequences.
Processing: LW181-Extraction190 
Sample 1 - 100110 reads in 11907 unique sequences.
Sample 1 - 100110 reads in 11418 unique sequences.
Processing: LW182-Extraction191 
Sample 1 - 42845 reads in 6922 unique sequences.
Sample 1 - 42845 reads in 5539 unique sequences.
Processing: LW183-Extraction192 
Sample 1 - 28830 reads in 5298 unique sequences.
Sample 1 - 28830 reads in 3573 unique sequences.
Processing: LW184-Extraction208 
Sample 1 - 15994 reads in 4052 unique sequences.
Sample 1 - 15994 reads in 3124 unique sequences.
Processing: LW185-Extraction209 
Sample 1 - 12275 reads in 2354 unique sequences.
Sample 1 - 12275 reads in 1674 unique sequences.
Processing: LW186-Extraction210 
Sample 1 - 17462 reads in 3281 unique sequences.
Sample 1 - 17462 reads in 2237 unique sequences.
Processing: LW187-Extraction211 
Sample 1 - 43137 reads in 5949 unique sequences.
Sample 1 - 43137 reads in 4051 unique sequences.
Processing: LW188-Extraction212 
Sample 1 - 30401 reads in 5063 unique sequences.
Sample 1 - 30401 reads in 3423 unique sequences.
Processing: LW189-Extraction213 
Sample 1 - 13587 reads in 2932 unique sequences.
Sample 1 - 13587 reads in 2021 unique sequences.
Processing: LW190-Extraction17 
Sample 1 - 93890 reads in 24243 unique sequences.
Sample 1 - 93890 reads in 16829 unique sequences.
Processing: LW191-Extraction18 
Sample 1 - 98438 reads in 24434 unique sequences.
Sample 1 - 98438 reads in 17863 unique sequences.
Processing: LW2-Extraction118 
Sample 1 - 110986 reads in 21932 unique sequences.
Sample 1 - 110986 reads in 17134 unique sequences.
Processing: LW21-Extraction53 
Sample 1 - 21386 reads in 4326 unique sequences.
Sample 1 - 21386 reads in 3123 unique sequences.
Processing: LW22-Extraction54 
Sample 1 - 81342 reads in 9962 unique sequences.
Sample 1 - 81342 reads in 6909 unique sequences.
Processing: LW23-Extraction55 
Sample 1 - 10709 reads in 2757 unique sequences.
Sample 1 - 10709 reads in 2188 unique sequences.
Processing: LW24-Extraction56 
Sample 1 - 84536 reads in 10554 unique sequences.
Sample 1 - 84536 reads in 7658 unique sequences.
Processing: LW25-Extraction57 
Sample 1 - 83711 reads in 9922 unique sequences.
Sample 1 - 83711 reads in 6624 unique sequences.
Processing: LW26-Extraction58 
Sample 1 - 89605 reads in 10207 unique sequences.
Sample 1 - 89605 reads in 6203 unique sequences.
Processing: LW28-Extraction65 
Sample 1 - 50979 reads in 7200 unique sequences.
Sample 1 - 50979 reads in 4529 unique sequences.
Processing: LW29-Extraction66 
Sample 1 - 53093 reads in 10524 unique sequences.
Sample 1 - 53093 reads in 9726 unique sequences.
Processing: LW3-Extraction119 
Sample 1 - 137306 reads in 30163 unique sequences.
Sample 1 - 137306 reads in 23370 unique sequences.
Processing: LW30-Extraction67 
Sample 1 - 109107 reads in 13242 unique sequences.
Sample 1 - 109107 reads in 7955 unique sequences.
Processing: LW31-Extraction73 
Sample 1 - 7583 reads in 1874 unique sequences.
Sample 1 - 7583 reads in 1244 unique sequences.
Processing: LW32-Extraction74 
Sample 1 - 8131 reads in 2227 unique sequences.
Sample 1 - 8131 reads in 1644 unique sequences.
Processing: LW33-Extraction173 
Sample 1 - 16578 reads in 3569 unique sequences.
Sample 1 - 16578 reads in 2559 unique sequences.
Processing: LW34-Extraction71 
Sample 1 - 11296 reads in 2967 unique sequences.
Sample 1 - 11296 reads in 2096 unique sequences.
Processing: LW35-Extraction70 
Sample 1 - 23859 reads in 4067 unique sequences.
Sample 1 - 23859 reads in 2839 unique sequences.
Processing: LW36-Extraction72 
Sample 1 - 10167 reads in 2649 unique sequences.
Sample 1 - 10167 reads in 1899 unique sequences.
Processing: LW37-Extraction20 
Sample 1 - 9003 reads in 2303 unique sequences.
Sample 1 - 9003 reads in 1979 unique sequences.
Processing: LW4-Extraction120 
Sample 1 - 114331 reads in 20514 unique sequences.
Sample 1 - 114331 reads in 16756 unique sequences.
Processing: LW40-Extraction60 
Sample 1 - 8697 reads in 2323 unique sequences.
Sample 1 - 8697 reads in 1826 unique sequences.
Processing: LW41-Extraction61 
Sample 1 - 7330 reads in 2102 unique sequences.
Sample 1 - 7330 reads in 1674 unique sequences.
Processing: LW42-Extraction62 
Sample 1 - 4577 reads in 1321 unique sequences.
Sample 1 - 4577 reads in 1048 unique sequences.
Processing: LW43-Extraction63 
Sample 1 - 9041 reads in 2504 unique sequences.
Sample 1 - 9041 reads in 1995 unique sequences.
Processing: LW44-Extraction64 
Sample 1 - 10243 reads in 2944 unique sequences.
Sample 1 - 10243 reads in 2391 unique sequences.
Processing: LW47-Extraction79 
Sample 1 - 10226 reads in 2912 unique sequences.
Sample 1 - 10226 reads in 2222 unique sequences.
Processing: LW48-Extraction80 
Sample 1 - 6420 reads in 1766 unique sequences.
Sample 1 - 6420 reads in 1375 unique sequences.
Processing: LW5-Extraction121 
Sample 1 - 102655 reads in 17320 unique sequences.
Sample 1 - 102655 reads in 14607 unique sequences.
Processing: LW50-Extraction84 
Sample 1 - 5881 reads in 1663 unique sequences.
Sample 1 - 5881 reads in 1243 unique sequences.
Processing: LW51-Extraction75 
Sample 1 - 9413 reads in 2509 unique sequences.
Sample 1 - 9413 reads in 1956 unique sequences.
Processing: LW52-Extraction77 
Sample 1 - 4453 reads in 1363 unique sequences.
Sample 1 - 4453 reads in 1071 unique sequences.
Processing: LW54-Extraction81 
Sample 1 - 3849 reads in 1136 unique sequences.
Sample 1 - 3849 reads in 852 unique sequences.
Processing: LW56-Extraction86 
Sample 1 - 13984 reads in 3699 unique sequences.
Sample 1 - 13984 reads in 2936 unique sequences.
Processing: LW57-Extraction156 
Sample 1 - 49597 reads in 8003 unique sequences.
Sample 1 - 49597 reads in 5834 unique sequences.
Processing: LW58-Extraction157 
Sample 1 - 47052 reads in 7359 unique sequences.
Sample 1 - 47052 reads in 5310 unique sequences.
Processing: LW59-Extraction158 
Sample 1 - 96273 reads in 11210 unique sequences.
Sample 1 - 96273 reads in 8159 unique sequences.
Processing: LW6-Extraction122 
Sample 1 - 78260 reads in 20167 unique sequences.
Sample 1 - 78260 reads in 13606 unique sequences.
Processing: LW60-Extraction159 
Sample 1 - 81137 reads in 11455 unique sequences.
Sample 1 - 81137 reads in 8631 unique sequences.
Processing: LW61-Extraction160 
Sample 1 - 57193 reads in 9821 unique sequences.
Sample 1 - 57193 reads in 7643 unique sequences.
Processing: LW62-Extraction161 
Sample 1 - 58281 reads in 10441 unique sequences.
Sample 1 - 58281 reads in 7549 unique sequences.
Processing: LW63-Extraction162 
Sample 1 - 58764 reads in 10768 unique sequences.
Sample 1 - 58764 reads in 7818 unique sequences.
Processing: LW64-Extraction163 
Sample 1 - 38082 reads in 8834 unique sequences.
Sample 1 - 38082 reads in 7100 unique sequences.
Processing: LW65-Extraction164 
Sample 1 - 9025 reads in 2333 unique sequences.
Sample 1 - 9025 reads in 1813 unique sequences.
Processing: LW66-Extraction165 
Sample 1 - 12272 reads in 3052 unique sequences.
Sample 1 - 12272 reads in 2373 unique sequences.
Processing: LW67-Extraction166 
Sample 1 - 7963 reads in 2085 unique sequences.
Sample 1 - 7963 reads in 1710 unique sequences.
Processing: LW68-Extraction167 
Sample 1 - 12917 reads in 3099 unique sequences.
Sample 1 - 12917 reads in 2433 unique sequences.
Processing: LW69-Extraction22 
Sample 1 - 6745 reads in 1982 unique sequences.
Sample 1 - 6745 reads in 1600 unique sequences.
Processing: LW7-Extraction123 
Sample 1 - 110579 reads in 14116 unique sequences.
Sample 1 - 110579 reads in 12184 unique sequences.
Processing: LW70-Extraction25 
Sample 1 - 5912 reads in 1782 unique sequences.
Sample 1 - 5912 reads in 1352 unique sequences.
Processing: LW71-Extraction26 
Sample 1 - 5478 reads in 1568 unique sequences.
Sample 1 - 5478 reads in 1270 unique sequences.
Processing: LW72-Extraction99 
Sample 1 - 1318 reads in 435 unique sequences.
Sample 1 - 1318 reads in 357 unique sequences.
Processing: LW73-Extraction100 
Sample 1 - 121605 reads in 12770 unique sequences.
Sample 1 - 121605 reads in 12295 unique sequences.
Processing: LW74-Extraction113 
Sample 1 - 7679 reads in 2282 unique sequences.
Sample 1 - 7679 reads in 1921 unique sequences.
Processing: LW75-Extraction114 
Sample 1 - 120484 reads in 13248 unique sequences.
Sample 1 - 120484 reads in 11545 unique sequences.
Processing: LW76-Extraction115 
Sample 1 - 160055 reads in 13989 unique sequences.
Sample 1 - 160055 reads in 14003 unique sequences.
Processing: LW77-Extraction87 
Sample 1 - 161449 reads in 18812 unique sequences.
Sample 1 - 161449 reads in 12375 unique sequences.
Processing: LW78-Extraction88 
Sample 1 - 167279 reads in 14668 unique sequences.
Sample 1 - 167279 reads in 9321 unique sequences.
Processing: LW79-Extraction89 
Sample 1 - 170387 reads in 19788 unique sequences.
Sample 1 - 170387 reads in 12522 unique sequences.
Processing: LW8-Extraction124 
Sample 1 - 90582 reads in 13113 unique sequences.
Sample 1 - 90582 reads in 11650 unique sequences.
Processing: LW80-Extraction90 
Sample 1 - 134251 reads in 19647 unique sequences.
Sample 1 - 134251 reads in 10579 unique sequences.
Processing: LW81-Extraction91 
Sample 1 - 124006 reads in 15049 unique sequences.
Sample 1 - 124006 reads in 10067 unique sequences.
Processing: LW82-Extraction92 
Sample 1 - 5223 reads in 1494 unique sequences.
Sample 1 - 5223 reads in 1235 unique sequences.
Processing: LW83-Extraction93 
Sample 1 - 126642 reads in 10022 unique sequences.
Sample 1 - 126642 reads in 7538 unique sequences.
Processing: LW84-Extraction94 
Sample 1 - 15953 reads in 2529 unique sequences.
Sample 1 - 15953 reads in 1734 unique sequences.
Processing: LW85-Extraction95 
Sample 1 - 2975 reads in 848 unique sequences.
Sample 1 - 2975 reads in 759 unique sequences.
Processing: LW87-Extraction97 
Sample 1 - 2857 reads in 865 unique sequences.
Sample 1 - 2857 reads in 723 unique sequences.
Processing: LW88-Extraction98 
Sample 1 - 6254 reads in 1801 unique sequences.
Sample 1 - 6254 reads in 1415 unique sequences.
Processing: LW9-Extraction125 
Sample 1 - 77609 reads in 16088 unique sequences.
Sample 1 - 77609 reads in 13235 unique sequences.


errF_round2_filt <- learnErrors(filtFs_round2_filt, nread=1e6, multithread=TRUE)
# Learn reverse error rates
errR_round2_filt <- learnErrors(filtRs_round2_filt, nread=1e6, multithread=TRUE)
# Sample inference and merger of paired-end reads

Initializing error rates to maximum possible estimate.
Sample 1 - 34600 reads in 7444 unique sequences.
Sample 2 - 5917 reads in 1928 unique sequences.
Sample 3 - 26214 reads in 6623 unique sequences.
Sample 4 - 27968 reads in 6810 unique sequences.
Sample 5 - 60984 reads in 9823 unique sequences.
Sample 6 - 368 reads in 255 unique sequences.
Sample 7 - 12142 reads in 3738 unique sequences.
Sample 8 - 1121 reads in 457 unique sequences.
Sample 9 - 61482 reads in 13581 unique sequences.
Sample 10 - 132677 reads in 47863 unique sequences.
Sample 11 - 451 reads in 294 unique sequences.
Sample 12 - 261 reads in 212 unique sequences.
Sample 13 - 5802 reads in 1766 unique sequences.
Sample 14 - 17345 reads in 3942 unique sequences.
Sample 15 - 61607 reads in 11103 unique sequences.
Sample 16 - 95926 reads in 16743 unique sequences.
Sample 17 - 57802 reads in 12132 unique sequences.
Sample 18 - 75990 reads in 10989 unique sequences.
Sample 19 - 65757 reads in 14328 unique sequences.
Sample 20 - 26233 reads in 5601 unique sequences.
Sample 21 - 86404 reads in 23750 unique sequences.
Sample 22 - 84132 reads in 31912 unique sequences.
Sample 23 - 58385 reads in 11528 unique sequences.
Sample 24 - 63327 reads in 13258 unique sequences.
selfConsist step 2 
selfConsist step 3 
selfConsist step 4 
selfConsist step 5 
selfConsist step 6 
Convergence after  6  rounds.
Total reads used:  1062895 
> # Learn reverse error rates
  > errR_round2_filt <- learnErrors(filtRs_round2_filt, nread=1e6, multithread=TRUE)
Initializing error rates to maximum possible estimate.
Sample 1 - 34600 reads in 5739 unique sequences.
Sample 2 - 5917 reads in 1590 unique sequences.
Sample 3 - 26214 reads in 4723 unique sequences.
Sample 4 - 27968 reads in 5176 unique sequences.
Sample 5 - 60984 reads in 8557 unique sequences.
Sample 6 - 368 reads in 245 unique sequences.
Sample 7 - 12142 reads in 3047 unique sequences.
Sample 8 - 1121 reads in 380 unique sequences.
Sample 9 - 61482 reads in 10199 unique sequences.
Sample 10 - 132677 reads in 35712 unique sequences.
Sample 11 - 451 reads in 262 unique sequences.
Sample 12 - 261 reads in 193 unique sequences.
Sample 13 - 5802 reads in 1419 unique sequences.
Sample 14 - 17345 reads in 3666 unique sequences.
Sample 15 - 61607 reads in 9916 unique sequences.
Sample 16 - 95926 reads in 13596 unique sequences.
Sample 17 - 57802 reads in 8426 unique sequences.
Sample 18 - 75990 reads in 10010 unique sequences.
Sample 19 - 65757 reads in 11557 unique sequences.
Sample 20 - 26233 reads in 4819 unique sequences.
Sample 21 - 86404 reads in 15900 unique sequences.
Sample 22 - 84132 reads in 21946 unique sequences.
Sample 23 - 58385 reads in 8490 unique sequences.
Sample 24 - 63327 reads in 9582 unique sequences.
selfConsist step 2 
selfConsist step 3 
selfConsist step 4 
selfConsist step 5 
selfConsist step 6 
Convergence after  6  rounds.
Total reads used:  1062895 
> # Sample inference and merger of paired-end reads
  
  
  
  Processing: LW11-29 
Sample 1 - 34600 reads in 7444 unique sequences.
Sample 1 - 34600 reads in 5739 unique sequences.
Processing: LW116-134 
Sample 1 - 5917 reads in 1928 unique sequences.
Sample 1 - 5917 reads in 1590 unique sequences.
Processing: LW117-135 
Sample 1 - 26214 reads in 6623 unique sequences.
Sample 1 - 26214 reads in 4723 unique sequences.
Processing: LW119-137 
Sample 1 - 27968 reads in 6810 unique sequences.
Sample 1 - 27968 reads in 5176 unique sequences.
Processing: LW12-30 
Sample 1 - 60984 reads in 9823 unique sequences.
Sample 1 - 60984 reads in 8557 unique sequences.
Processing: LW121-140 
Sample 1 - 368 reads in 255 unique sequences.
Sample 1 - 368 reads in 245 unique sequences.
Processing: LW124-143 
Sample 1 - 12142 reads in 3738 unique sequences.
Sample 1 - 12142 reads in 3047 unique sequences.
Processing: LW127-152 
Sample 1 - 1121 reads in 457 unique sequences.
Sample 1 - 1121 reads in 380 unique sequences.
Processing: LW129-154 
Sample 1 - 61482 reads in 13581 unique sequences.
Sample 1 - 61482 reads in 10199 unique sequences.
Processing: LW13-31 
Sample 1 - 132677 reads in 47863 unique sequences.
Sample 1 - 132677 reads in 35712 unique sequences.
Processing: LW130-145 
Sample 1 - 451 reads in 294 unique sequences.
Sample 1 - 451 reads in 262 unique sequences.
Processing: LW131-146 
Sample 1 - 261 reads in 212 unique sequences.
Sample 1 - 261 reads in 193 unique sequences.
Processing: LW134-148 
Sample 1 - 5802 reads in 1766 unique sequences.
Sample 1 - 5802 reads in 1419 unique sequences.
Processing: LW135-150 
Sample 1 - 17345 reads in 3942 unique sequences.
Sample 1 - 17345 reads in 3666 unique sequences.
Processing: LW136-49 
Sample 1 - 61607 reads in 11103 unique sequences.
Sample 1 - 61607 reads in 9916 unique sequences.
Processing: LW137-50 
Sample 1 - 95926 reads in 16743 unique sequences.
Sample 1 - 95926 reads in 13596 unique sequences.
Processing: LW138-51 
Sample 1 - 57802 reads in 12132 unique sequences.
Sample 1 - 57802 reads in 8426 unique sequences.
Processing: LW139-52 
Sample 1 - 75990 reads in 10989 unique sequences.
Sample 1 - 75990 reads in 10010 unique sequences.
Processing: LW14-32 
Sample 1 - 65757 reads in 14328 unique sequences.
Sample 1 - 65757 reads in 11557 unique sequences.
Processing: LW140-85 
Sample 1 - 26233 reads in 5601 unique sequences.
Sample 1 - 26233 reads in 4819 unique sequences.
Processing: LW141-39 
Sample 1 - 86404 reads in 23750 unique sequences.
Sample 1 - 86404 reads in 15900 unique sequences.
Processing: LW142-40 
Sample 1 - 84132 reads in 31912 unique sequences.
Sample 1 - 84132 reads in 21946 unique sequences.
Processing: LW143-41 
Sample 1 - 58385 reads in 11528 unique sequences.
Sample 1 - 58385 reads in 8490 unique sequences.
Processing: LW144-42 
Sample 1 - 63327 reads in 13258 unique sequences.
Sample 1 - 63327 reads in 9582 unique sequences.
Processing: LW145-43 
Sample 1 - 64480 reads in 13553 unique sequences.
Sample 1 - 64480 reads in 10223 unique sequences.
Processing: LW146-44 
Sample 1 - 49165 reads in 8326 unique sequences.
Sample 1 - 49165 reads in 5851 unique sequences.
Processing: LW147-45 
Sample 1 - 62588 reads in 11881 unique sequences.
Sample 1 - 62588 reads in 8666 unique sequences.
Processing: LW148-46 
Sample 1 - 55230 reads in 11398 unique sequences.
Sample 1 - 55230 reads in 8507 unique sequences.
Processing: LW149-47 
Sample 1 - 101762 reads in 24974 unique sequences.
Sample 1 - 101762 reads in 16815 unique sequences.
Processing: LW15-33 
Sample 1 - 53421 reads in 11511 unique sequences.
Sample 1 - 53421 reads in 9429 unique sequences.
Processing: LW150-48 
Sample 1 - 55847 reads in 7260 unique sequences.
Sample 1 - 55847 reads in 6828 unique sequences.
Processing: LW152-169 
Sample 1 - 80026 reads in 14167 unique sequences.
Sample 1 - 80026 reads in 11084 unique sequences.
Processing: LW153-170 
Sample 1 - 51276 reads in 10870 unique sequences.
Sample 1 - 51276 reads in 8310 unique sequences.
Processing: LW16-34 
Sample 1 - 58990 reads in 9302 unique sequences.
Sample 1 - 58990 reads in 7753 unique sequences.
Processing: LW163-138 
Sample 1 - 14120 reads in 3861 unique sequences.
Sample 1 - 14120 reads in 3034 unique sequences.
Processing: LW164-144 
Sample 1 - 22336 reads in 6799 unique sequences.
Sample 1 - 22336 reads in 4790 unique sequences.
Processing: LW17-35 
Sample 1 - 65986 reads in 13795 unique sequences.
Sample 1 - 65986 reads in 9914 unique sequences.
Processing: LW18-36 
Sample 1 - 63690 reads in 12438 unique sequences.
Sample 1 - 63690 reads in 8861 unique sequences.
Processing: LW19-37 
Sample 1 - 66874 reads in 14727 unique sequences.
Sample 1 - 66874 reads in 10865 unique sequences.
Processing: LW20-38 
Sample 1 - 36798 reads in 8352 unique sequences.
Sample 1 - 36798 reads in 5997 unique sequences.
Processing: LW27-69 
Sample 1 - 40992 reads in 9539 unique sequences.
Sample 1 - 40992 reads in 7028 unique sequences.
Processing: LW38-214 
Sample 1 - 70871 reads in 18521 unique sequences.
Sample 1 - 70871 reads in 13136 unique sequences.
Processing: LW39-59 
Sample 1 - 53469 reads in 14736 unique sequences.
Sample 1 - 53469 reads in 11332 unique sequences.
Processing: LW45-68 
Sample 1 - 50214 reads in 15161 unique sequences.
Sample 1 - 50214 reads in 11301 unique sequences.
Processing: LW46-76 
Sample 1 - 21352 reads in 5481 unique sequences.
Sample 1 - 21352 reads in 3478 unique sequences.
Processing: LW49-83 
Sample 1 - 43794 reads in 13283 unique sequences.
Sample 1 - 43794 reads in 8352 unique sequences.
Processing: LW52-77 
Sample 1 - 32769 reads in 9672 unique sequences.
Sample 1 - 32769 reads in 7442 unique sequences.
Processing: LW53-78 
Sample 1 - 13843 reads in 4142 unique sequences.
Sample 1 - 13843 reads in 3076 unique sequences.
Processing: LW54-81 
Sample 1 - 26681 reads in 7020 unique sequences.
Sample 1 - 26681 reads in 5760 unique sequences.
Processing: LW55-82 
Sample 1 - 38184 reads in 10414 unique sequences.
Sample 1 - 38184 reads in 7248 unique sequences.
Processing: LW86-96 
Sample 1 - 329 reads in 225 unique sequences.
Sample 1 - 329 reads in 237 unique sequences.
Processing: LW87-97 
Sample 1 - 285 reads in 198 unique sequences.
Sample 1 - 285 reads in 203 unique sequences.
Processing: LW89-27 
Sample 1 - 76977 reads in 25718 unique sequences.
Sample 1 - 76977 reads in 20165 unique sequences.
Processing: LW90-28 
Sample 1 - 69197 reads in 15563 unique sequences.
Sample 1 - 69197 reads in 11766 unique sequences.
Processing: LW91-21 
Sample 1 - 104492 reads in 36155 unique sequences.
Sample 1 - 104492 reads in 25217 unique sequences.
Processing: LW92-9 
Sample 1 - 91304 reads in 24711 unique sequences.
Sample 1 - 91304 reads in 15348 unique sequences.
Processing: LW93-10 
Sample 1 - 40592 reads in 8659 unique sequences.
Sample 1 - 40592 reads in 7021 unique sequences.
Processing: LW94-11 
Sample 1 - 64667 reads in 9955 unique sequences.
Sample 1 - 64667 reads in 8796 unique sequences.
Processing: LW95-12 
Sample 1 - 78369 reads in 15754 unique sequences.
Sample 1 - 78369 reads in 13636 unique sequences.
Processing: LW97-13 
Sample 1 - 61320 reads in 14052 unique sequences.
Sample 1 - 61320 reads in 10041 unique sequences.
Processing: LW98-14 
Sample 1 - 6386 reads in 1532 unique sequences.
Sample 1 - 6386 reads in 1276 unique sequences.
Processing: LW99-15 
Sample 1 - 57383 reads in 15854 unique sequences.
Sample 1 - 57383 reads in 11983 unique sequences.


###########################################################################
# Filthy:
errF_unclean_R1 <- learnErrors(filtFs_unclean_R1, nread=1e6, multithread=TRUE)
# Learn reverse error rates
errR_unclean_R1 <- learnErrors(filtRs_unclean_R1, nread=1e6, multithread=TRUE)
# Sample inference and merger of paired-end reads


Initializing error rates to maximum possible estimate.
Sample 1 - 156882 reads in 37140 unique sequences.
Sample 2 - 144558 reads in 40774 unique sequences.
Sample 3 - 84280 reads in 24011 unique sequences.
Sample 4 - 91022 reads in 28247 unique sequences.
Sample 5 - 49382 reads in 16731 unique sequences.
Sample 6 - 63679 reads in 18893 unique sequences.
Sample 7 - 56934 reads in 17265 unique sequences.
Sample 8 - 71077 reads in 19677 unique sequences.
Sample 9 - 23886 reads in 8379 unique sequences.
Sample 10 - 91230 reads in 23407 unique sequences.
Sample 11 - 81636 reads in 22643 unique sequences.
Sample 12 - 152854 reads in 43936 unique sequences.
selfConsist step 2 
selfConsist step 3 
selfConsist step 4 
Convergence after  4  rounds.
Total reads used:  1067420 
> # Learn reverse error rates
  > errR_unclean_R1 <- learnErrors(filtRs_unclean_R1, nread=1e6, multithread=TRUE)
Initializing error rates to maximum possible estimate.
Sample 1 - 156882 reads in 34729 unique sequences.
Sample 2 - 144558 reads in 35717 unique sequences.
Sample 3 - 84280 reads in 15991 unique sequences.
Sample 4 - 91022 reads in 18445 unique sequences.
Sample 5 - 49382 reads in 11689 unique sequences.
Sample 6 - 63679 reads in 13151 unique sequences.
Sample 7 - 56934 reads in 12203 unique sequences.
Sample 8 - 71077 reads in 13923 unique sequences.
Sample 9 - 23886 reads in 5922 unique sequences.
Sample 10 - 91230 reads in 15406 unique sequences.
Sample 11 - 81636 reads in 14808 unique sequences.
Sample 12 - 152854 reads in 27201 unique sequences.
selfConsist step 2 
selfConsist step 3 
selfConsist step 4 
selfConsist step 5 
Convergence after  5  rounds.
Total reads used:  1067420 


Processing: LW1-Extraction117 
Sample 1 - 156882 reads in 37140 unique sequences.
Sample 1 - 156882 reads in 34729 unique sequences.
Processing: LW10-Extraction126 
Sample 1 - 144558 reads in 40774 unique sequences.
Sample 1 - 144558 reads in 35717 unique sequences.
Processing: LW100-Extraction101 
Sample 1 - 84280 reads in 24011 unique sequences.
Sample 1 - 84280 reads in 15991 unique sequences.
Processing: LW101-Extraction102 
Sample 1 - 91022 reads in 28247 unique sequences.
Sample 1 - 91022 reads in 18445 unique sequences.
Processing: LW102-Extraction105 
Sample 1 - 49382 reads in 16731 unique sequences.
Sample 1 - 49382 reads in 11689 unique sequences.
Processing: LW103-Extraction106 
Sample 1 - 63679 reads in 18893 unique sequences.
Sample 1 - 63679 reads in 13151 unique sequences.
Processing: LW104-Extraction108 
Sample 1 - 56934 reads in 17265 unique sequences.
Sample 1 - 56934 reads in 12203 unique sequences.
Processing: LW105-Extraction116 
Sample 1 - 71077 reads in 19677 unique sequences.
Sample 1 - 71077 reads in 13923 unique sequences.
Processing: LW106-Extraction103 
Sample 1 - 23886 reads in 8379 unique sequences.
Sample 1 - 23886 reads in 5922 unique sequences.
Processing: LW107-Extraction104 
Sample 1 - 91230 reads in 23407 unique sequences.
Sample 1 - 91230 reads in 15406 unique sequences.
Processing: LW108-Extraction107 
Sample 1 - 81636 reads in 22643 unique sequences.
Sample 1 - 81636 reads in 14808 unique sequences.
Processing: LW109-Extraction109 
Sample 1 - 152854 reads in 43936 unique sequences.
Sample 1 - 152854 reads in 27201 unique sequences.
Processing: LW110-Extraction127 
Sample 1 - 101518 reads in 31332 unique sequences.
Sample 1 - 101518 reads in 21056 unique sequences.
Processing: LW111-Extraction128 
Sample 1 - 43213 reads in 14996 unique sequences.
Sample 1 - 43213 reads in 9905 unique sequences.
Processing: LW112-Extraction129 
Sample 1 - 87461 reads in 28233 unique sequences.
Sample 1 - 87461 reads in 17705 unique sequences.
Processing: LW113-Extraction130 
Sample 1 - 44016 reads in 13286 unique sequences.
Sample 1 - 44016 reads in 9669 unique sequences.
Processing: LW114-Extraction131 
Sample 1 - 14706 reads in 5766 unique sequences.
Sample 1 - 14706 reads in 4222 unique sequences.
Processing: LW115-Extraction112 
Sample 1 - 24694 reads in 10025 unique sequences.
Sample 1 - 24694 reads in 8608 unique sequences.
Processing: LW118-Extraction136 
Sample 1 - 9321 reads in 4139 unique sequences.
Sample 1 - 9321 reads in 3472 unique sequences.
Processing: LW119-Extraction137 
Sample 1 - 4620 reads in 2241 unique sequences.
Sample 1 - 4620 reads in 1944 unique sequences.
Processing: LW120-Extraction139 
Sample 1 - 48170 reads in 20663 unique sequences.
Sample 1 - 48170 reads in 16432 unique sequences.
Processing: LW122-Extraction141 
Sample 1 - 6416 reads in 2959 unique sequences.
Sample 1 - 6416 reads in 2387 unique sequences.
Processing: LW123-Extraction142 
Sample 1 - 23204 reads in 9411 unique sequences.
Sample 1 - 23204 reads in 7702 unique sequences.
Processing: LW125-Extraction133 
Sample 1 - 19108 reads in 7776 unique sequences.
Sample 1 - 19108 reads in 6192 unique sequences.
Processing: LW126-Extraction151 
Sample 1 - 9556 reads in 4225 unique sequences.
Sample 1 - 9556 reads in 3480 unique sequences.
Processing: LW127-Extraction152 
Sample 1 - 5720 reads in 2617 unique sequences.
Sample 1 - 5720 reads in 2161 unique sequences.
Processing: LW128-Extraction153 
Sample 1 - 18659 reads in 8204 unique sequences.
Sample 1 - 18659 reads in 6680 unique sequences.
Processing: LW129-Extraction154 
Sample 1 - 6097 reads in 2619 unique sequences.
Sample 1 - 6097 reads in 2235 unique sequences.
Processing: LW132-Extraction149 
Sample 1 - 43615 reads in 13927 unique sequences.
Sample 1 - 43615 reads in 9772 unique sequences.
Processing: LW133-Extraction147 
Sample 1 - 5627 reads in 2721 unique sequences.
Sample 1 - 5627 reads in 2352 unique sequences.
Processing: LW151-Extraction172 
Sample 1 - 23362 reads in 9723 unique sequences.
Sample 1 - 23362 reads in 7392 unique sequences.
Processing: LW154-Extraction176 
Sample 1 - 114433 reads in 39795 unique sequences.
Sample 1 - 114433 reads in 33753 unique sequences.
Processing: LW155-Extraction178 
Sample 1 - 204237 reads in 43322 unique sequences.
Sample 1 - 204237 reads in 42941 unique sequences.
Processing: LW156-Extraction180 
Sample 1 - 172382 reads in 48201 unique sequences.
Sample 1 - 172382 reads in 43819 unique sequences.
Processing: LW157-Extraction175 
Sample 1 - 134318 reads in 43392 unique sequences.
Sample 1 - 134318 reads in 38420 unique sequences.
Processing: LW158-Extraction177 
Sample 1 - 262816 reads in 47162 unique sequences.
Sample 1 - 262816 reads in 47130 unique sequences.
Processing: LW159-Extraction179 
Sample 1 - 224196 reads in 42499 unique sequences.
Sample 1 - 224196 reads in 42214 unique sequences.
Processing: LW160-Extraction132 
Sample 1 - 86488 reads in 24920 unique sequences.
Sample 1 - 86488 reads in 18079 unique sequences.
Processing: LW161-Extraction110 
Sample 1 - 43331 reads in 13351 unique sequences.
Sample 1 - 43331 reads in 10044 unique sequences.
Processing: LW162-Extraction111 
Sample 1 - 54107 reads in 16691 unique sequences.
Sample 1 - 54107 reads in 11833 unique sequences.
Processing: LW163-Extraction138 
Sample 1 - 5782 reads in 2527 unique sequences.
Sample 1 - 5782 reads in 2309 unique sequences.
Processing: LW165-Extraction155 
Sample 1 - 10311 reads in 4924 unique sequences.
Sample 1 - 10311 reads in 4354 unique sequences.
Processing: LW166-Extraction1 
Sample 1 - 64842 reads in 27368 unique sequences.
Sample 1 - 64842 reads in 22814 unique sequences.
Processing: LW167-Extraction2 
Sample 1 - 45393 reads in 19253 unique sequences.
Sample 1 - 45393 reads in 16460 unique sequences.
Processing: LW168-Extraction3 
Sample 1 - 28716 reads in 12398 unique sequences.
Sample 1 - 28716 reads in 10948 unique sequences.
Processing: LW169-Extraction4 
Sample 1 - 26918 reads in 11685 unique sequences.
Sample 1 - 26918 reads in 10081 unique sequences.
Processing: LW170-Extraction19 
Sample 1 - 105792 reads in 45181 unique sequences.
Sample 1 - 105792 reads in 35680 unique sequences.
Processing: LW171-Extraction6 
Sample 1 - 89052 reads in 28201 unique sequences.
Sample 1 - 89052 reads in 24077 unique sequences.
Processing: LW172-Extraction181 
Sample 1 - 143138 reads in 54569 unique sequences.
Sample 1 - 143138 reads in 43492 unique sequences.
Processing: LW173-Extraction182 
Sample 1 - 133413 reads in 44428 unique sequences.
Sample 1 - 133413 reads in 36467 unique sequences.
Processing: LW174-Extraction183 
Sample 1 - 145495 reads in 47560 unique sequences.
Sample 1 - 145495 reads in 38260 unique sequences.
Processing: LW175-Extraction184 
Sample 1 - 148662 reads in 43516 unique sequences.
Sample 1 - 148662 reads in 36582 unique sequences.
Processing: LW176-Extraction185 
Sample 1 - 134315 reads in 46492 unique sequences.
Sample 1 - 134315 reads in 40961 unique sequences.
Processing: LW177-Extraction186 
Sample 1 - 97924 reads in 30119 unique sequences.
Sample 1 - 97924 reads in 26354 unique sequences.
Processing: LW178-Extraction187 
Sample 1 - 121417 reads in 34547 unique sequences.
Sample 1 - 121417 reads in 29813 unique sequences.
Processing: LW179-Extraction188 
Sample 1 - 141863 reads in 35907 unique sequences.
Sample 1 - 141863 reads in 32244 unique sequences.
Processing: LW180-Extraction189 
Sample 1 - 70027 reads in 24399 unique sequences.
Sample 1 - 70027 reads in 18061 unique sequences.
Processing: LW181-Extraction190 
Sample 1 - 121640 reads in 30417 unique sequences.
Sample 1 - 121640 reads in 27802 unique sequences.
Processing: LW182-Extraction191 
Sample 1 - 54186 reads in 17234 unique sequences.
Sample 1 - 54186 reads in 14525 unique sequences.
Processing: LW183-Extraction192 
Sample 1 - 38563 reads in 14355 unique sequences.
Sample 1 - 38563 reads in 10277 unique sequences.
Processing: LW184-Extraction208 
Sample 1 - 21512 reads in 9297 unique sequences.
Sample 1 - 21512 reads in 7698 unique sequences.
Processing: LW185-Extraction209 
Sample 1 - 15865 reads in 5655 unique sequences.
Sample 1 - 15865 reads in 4240 unique sequences.
Processing: LW186-Extraction210 
Sample 1 - 22688 reads in 8103 unique sequences.
Sample 1 - 22688 reads in 5909 unique sequences.
Processing: LW187-Extraction211 
Sample 1 - 54208 reads in 15693 unique sequences.
Sample 1 - 54208 reads in 10420 unique sequences.
Processing: LW188-Extraction212 
Sample 1 - 40103 reads in 13880 unique sequences.
Sample 1 - 40103 reads in 9869 unique sequences.
Processing: LW189-Extraction213 
Sample 1 - 17636 reads in 6647 unique sequences.
Sample 1 - 17636 reads in 4762 unique sequences.
Processing: LW190-Extraction17 
Sample 1 - 123416 reads in 52258 unique sequences.
Sample 1 - 123416 reads in 39436 unique sequences.
Processing: LW191-Extraction18 
Sample 1 - 127551 reads in 51839 unique sequences.
Sample 1 - 127551 reads in 40510 unique sequences.
Processing: LW2-Extraction118 
Sample 1 - 143138 reads in 51769 unique sequences.
Sample 1 - 143138 reads in 42642 unique sequences.
Processing: LW21-Extraction53 
Sample 1 - 27579 reads in 9997 unique sequences.
Sample 1 - 27579 reads in 7501 unique sequences.
Processing: LW22-Extraction54 
Sample 1 - 102345 reads in 28475 unique sequences.
Sample 1 - 102345 reads in 20406 unique sequences.
Processing: LW23-Extraction55 
Sample 1 - 13808 reads in 5685 unique sequences.
Sample 1 - 13808 reads in 4739 unique sequences.
Processing: LW24-Extraction56 
Sample 1 - 105045 reads in 28622 unique sequences.
Sample 1 - 105045 reads in 21340 unique sequences.
Processing: LW25-Extraction57 
Sample 1 - 105742 reads in 29469 unique sequences.
Sample 1 - 105742 reads in 20702 unique sequences.
Processing: LW26-Extraction58 
Sample 1 - 113778 reads in 31604 unique sequences.
Sample 1 - 113778 reads in 20339 unique sequences.
Processing: LW28-Extraction65 
Sample 1 - 64780 reads in 19558 unique sequences.
Sample 1 - 64780 reads in 12903 unique sequences.
Processing: LW29-Extraction66 
Sample 1 - 86475 reads in 40357 unique sequences.
Sample 1 - 86475 reads in 32194 unique sequences.
Processing: LW3-Extraction119 
Sample 1 - 175233 reads in 65507 unique sequences.
Sample 1 - 175233 reads in 53115 unique sequences.
Processing: LW30-Extraction67 
Sample 1 - 139866 reads in 40570 unique sequences.
Sample 1 - 139866 reads in 26665 unique sequences.
Processing: LW31-Extraction73 
Sample 1 - 10031 reads in 4178 unique sequences.
Sample 1 - 10031 reads in 3103 unique sequences.
Processing: LW32-Extraction74 
Sample 1 - 10918 reads in 4872 unique sequences.
Sample 1 - 10918 reads in 3970 unique sequences.
Processing: LW33-Extraction173 
Sample 1 - 22096 reads in 8855 unique sequences.
Sample 1 - 22096 reads in 6989 unique sequences.
Processing: LW34-Extraction71 
Sample 1 - 16616 reads in 8125 unique sequences.
Sample 1 - 16616 reads in 6629 unique sequences.
Processing: LW35-Extraction70 
Sample 1 - 30317 reads in 9936 unique sequences.
Sample 1 - 30317 reads in 7406 unique sequences.
Processing: LW36-Extraction72 
Sample 1 - 13413 reads in 5725 unique sequences.
Sample 1 - 13413 reads in 4432 unique sequences.
Processing: LW37-Extraction20 
Sample 1 - 12972 reads in 6136 unique sequences.
Sample 1 - 12972 reads in 5422 unique sequences.
Processing: LW4-Extraction120 
Sample 1 - 144708 reads in 48323 unique sequences.
Sample 1 - 144708 reads in 40566 unique sequences.
Processing: LW40-Extraction60 
Sample 1 - 11753 reads in 5256 unique sequences.
Sample 1 - 11753 reads in 4441 unique sequences.
Processing: LW41-Extraction61 
Sample 1 - 9627 reads in 4296 unique sequences.
Sample 1 - 9627 reads in 3633 unique sequences.
Processing: LW42-Extraction62 
Sample 1 - 6458 reads in 3145 unique sequences.
Sample 1 - 6458 reads in 2687 unique sequences.
Processing: LW43-Extraction63 
Sample 1 - 11789 reads in 5121 unique sequences.
Sample 1 - 11789 reads in 4335 unique sequences.
Processing: LW44-Extraction64 
Sample 1 - 13615 reads in 6174 unique sequences.
Sample 1 - 13615 reads in 5240 unique sequences.
Processing: LW47-Extraction79 
Sample 1 - 13508 reads in 6046 unique sequences.
Sample 1 - 13508 reads in 4946 unique sequences.
Processing: LW48-Extraction80 
Sample 1 - 8641 reads in 3903 unique sequences.
Sample 1 - 8641 reads in 3291 unique sequences.
Processing: LW5-Extraction121 
Sample 1 - 128383 reads in 40564 unique sequences.
Sample 1 - 128383 reads in 34464 unique sequences.
Processing: LW50-Extraction84 
Sample 1 - 8285 reads in 3973 unique sequences.
Sample 1 - 8285 reads in 3328 unique sequences.
Processing: LW51-Extraction75 
Sample 1 - 12404 reads in 5356 unique sequences.
Sample 1 - 12404 reads in 4378 unique sequences.
Processing: LW52-Extraction77 
Sample 1 - 6037 reads in 2867 unique sequences.
Sample 1 - 6037 reads in 2433 unique sequences.
Processing: LW54-Extraction81 
Sample 1 - 5522 reads in 2736 unique sequences.
Sample 1 - 5522 reads in 2311 unique sequences.
Processing: LW56-Extraction86 
Sample 1 - 19629 reads in 9089 unique sequences.
Sample 1 - 19629 reads in 7923 unique sequences.
Processing: LW57-Extraction156 
Sample 1 - 64830 reads in 21992 unique sequences.
Sample 1 - 64830 reads in 16946 unique sequences.
Processing: LW58-Extraction157 
Sample 1 - 60628 reads in 19716 unique sequences.
Sample 1 - 60628 reads in 14492 unique sequences.
Processing: LW59-Extraction158 
Sample 1 - 120496 reads in 32367 unique sequences.
Sample 1 - 120496 reads in 23345 unique sequences.
Processing: LW6-Extraction122 
Sample 1 - 105110 reads in 45648 unique sequences.
Sample 1 - 105110 reads in 34373 unique sequences.
Processing: LW60-Extraction159 
Sample 1 - 104578 reads in 32573 unique sequences.
Sample 1 - 104578 reads in 25608 unique sequences.
Processing: LW61-Extraction160 
Sample 1 - 74347 reads in 25455 unique sequences.
Sample 1 - 74347 reads in 20093 unique sequences.
Processing: LW62-Extraction161 
Sample 1 - 76041 reads in 26789 unique sequences.
Sample 1 - 76041 reads in 20310 unique sequences.
Processing: LW63-Extraction162 
Sample 1 - 75322 reads in 26057 unique sequences.
Sample 1 - 75322 reads in 20077 unique sequences.
Processing: LW64-Extraction163 
Sample 1 - 50663 reads in 20802 unique sequences.
Sample 1 - 50663 reads in 17598 unique sequences.
Processing: LW65-Extraction164 
Sample 1 - 12106 reads in 5304 unique sequences.
Sample 1 - 12106 reads in 4443 unique sequences.
Processing: LW66-Extraction165 
Sample 1 - 16437 reads in 7036 unique sequences.
Sample 1 - 16437 reads in 5873 unique sequences.
Processing: LW67-Extraction166 
Sample 1 - 10533 reads in 4526 unique sequences.
Sample 1 - 10533 reads in 3822 unique sequences.
Processing: LW68-Extraction167 
Sample 1 - 17220 reads in 7183 unique sequences.
Sample 1 - 17220 reads in 5974 unique sequences.
Processing: LW69-Extraction22 
Sample 1 - 8858 reads in 3980 unique sequences.
Sample 1 - 8858 reads in 3336 unique sequences.
Processing: LW7-Extraction123 
Sample 1 - 136165 reads in 36628 unique sequences.
Sample 1 - 136165 reads in 31839 unique sequences.
Processing: LW70-Extraction25 
Sample 1 - 8160 reads in 3944 unique sequences.
Sample 1 - 8160 reads in 3319 unique sequences.
Processing: LW71-Extraction26 
Sample 1 - 7220 reads in 3226 unique sequences.
Sample 1 - 7220 reads in 2728 unique sequences.
Processing: LW72-Extraction99 
Sample 1 - 3968 reads in 3058 unique sequences.
Sample 1 - 3968 reads in 2953 unique sequences.
Processing: LW73-Extraction100 
Sample 1 - 155404 reads in 42514 unique sequences.
Sample 1 - 155404 reads in 39447 unique sequences.
Processing: LW74-Extraction113 
Sample 1 - 10924 reads in 5377 unique sequences.
Sample 1 - 10924 reads in 4700 unique sequences.
Processing: LW75-Extraction114 
Sample 1 - 153086 reads in 41509 unique sequences.
Sample 1 - 153086 reads in 36309 unique sequences.
Processing: LW76-Extraction115 
Sample 1 - 205100 reads in 52794 unique sequences.
Sample 1 - 205100 reads in 48529 unique sequences.
Processing: LW77-Extraction87 
Sample 1 - 206491 reads in 58250 unique sequences.
Sample 1 - 206491 reads in 39484 unique sequences.
Processing: LW78-Extraction88 
Sample 1 - 211708 reads in 53009 unique sequences.
Sample 1 - 211708 reads in 34941 unique sequences.
Processing: LW79-Extraction89 
Sample 1 - 215711 reads in 59602 unique sequences.
Sample 1 - 215711 reads in 40194 unique sequences.
Processing: LW8-Extraction124 
Sample 1 - 112697 reads in 33001 unique sequences.
Sample 1 - 112697 reads in 29628 unique sequences.
Processing: LW80-Extraction90 
Sample 1 - 178814 reads in 59788 unique sequences.
Sample 1 - 178814 reads in 38120 unique sequences.
Processing: LW81-Extraction91 
Sample 1 - 156119 reads in 43490 unique sequences.
Sample 1 - 156119 reads in 31032 unique sequences.
Processing: LW82-Extraction92 
Sample 1 - 7389 reads in 3594 unique sequences.
Sample 1 - 7389 reads in 3143 unique sequences.
Processing: LW83-Extraction93 
Sample 1 - 159740 reads in 38384 unique sequences.
Sample 1 - 159740 reads in 29819 unique sequences.
Processing: LW84-Extraction94 
Sample 1 - 21737 reads in 7905 unique sequences.
Sample 1 - 21737 reads in 6217 unique sequences.
Processing: LW85-Extraction95 
Sample 1 - 4872 reads in 2688 unique sequences.
Sample 1 - 4872 reads in 2493 unique sequences.
Processing: LW87-Extraction97 
Sample 1 - 4494 reads in 2447 unique sequences.
Sample 1 - 4494 reads in 2229 unique sequences.
Processing: LW88-Extraction98 
Sample 1 - 8503 reads in 3951 unique sequences.
Sample 1 - 8503 reads in 3360 unique sequences.
Processing: LW9-Extraction125 
Sample 1 - 99095 reads in 36252 unique sequences.
Sample 1 - 99095 reads in 31011 unique sequences.


Initializing error rates to maximum possible estimate.
Sample 1 - 41902 reads in 14187 unique sequences.
Sample 2 - 10020 reads in 5928 unique sequences.
Sample 3 - 33347 reads in 13247 unique sequences.
Sample 4 - 34014 reads in 12338 unique sequences.
Sample 5 - 72038 reads in 19686 unique sequences.
Sample 6 - 3318 reads in 3154 unique sequences.
Sample 7 - 17403 reads in 8754 unique sequences.
Sample 8 - 3684 reads in 2967 unique sequences.
Sample 9 - 72380 reads in 23380 unique sequences.
Sample 10 - 154855 reads in 68316 unique sequences.
Sample 11 - 3437 reads in 3237 unique sequences.
Sample 12 - 2994 reads in 2929 unique sequences.
Sample 13 - 8989 reads in 4864 unique sequences.
Sample 14 - 22575 reads in 8851 unique sequences.
Sample 15 - 72930 reads in 21131 unique sequences.
Sample 16 - 112455 reads in 31176 unique sequences.
Sample 17 - 69219 reads in 22266 unique sequences.
Sample 18 - 87752 reads in 21199 unique sequences.
Sample 19 - 78467 reads in 25778 unique sequences.
Sample 20 - 31608 reads in 10438 unique sequences.
Sample 21 - 100596 reads in 36665 unique sequences.
selfConsist step 2 
selfConsist step 3 
selfConsist step 4 
selfConsist step 5 
Convergence after  5  rounds.
Total reads used:  1033983 
> # Learn reverse error rates
  > errR_unclean_R2 <- learnErrors(filtRs_unclean_R2, nread=1e6, multithread=TRUE)
Initializing error rates to maximum possible estimate.
Sample 1 - 41902 reads in 11378 unique sequences.
Sample 2 - 10020 reads in 5486 unique sequences.
Sample 3 - 33347 reads in 10388 unique sequences.
Sample 4 - 34014 reads in 10001 unique sequences.
Sample 5 - 72038 reads in 16676 unique sequences.
Sample 6 - 3318 reads in 3184 unique sequences.
Sample 7 - 17403 reads in 7759 unique sequences.
Sample 8 - 3684 reads in 2899 unique sequences.
Sample 9 - 72380 reads in 18278 unique sequences.
Sample 10 - 154855 reads in 52590 unique sequences.
Sample 11 - 3437 reads in 3238 unique sequences.
Sample 12 - 2994 reads in 2918 unique sequences.
Sample 13 - 8989 reads in 4372 unique sequences.
Sample 14 - 22575 reads in 8086 unique sequences.
Sample 15 - 72930 reads in 18120 unique sequences.
Sample 16 - 112455 reads in 25243 unique sequences.
Sample 17 - 69219 reads in 15968 unique sequences.
Sample 18 - 87752 reads in 18685 unique sequences.
Sample 19 - 78467 reads in 21146 unique sequences.
Sample 20 - 31608 reads in 9025 unique sequences.
Sample 21 - 100596 reads in 26098 unique sequences.
selfConsist step 2 
selfConsist step 3 
selfConsist step 4 
selfConsist step 5 
selfConsist step 6 
Convergence after  6  rounds.
Total reads used:  1033983 
> # Sample inference and merger of paired-end reads
  > 
  > 
  
  
  Processing: LW11-29 

Sample 1 - 41902 reads in 14187 unique sequences.
Sample 1 - 41902 reads in 11378 unique sequences.
Processing: LW116-134 
Sample 1 - 10020 reads in 5928 unique sequences.
Sample 1 - 10020 reads in 5486 unique sequences.
Processing: LW117-135 
Sample 1 - 33347 reads in 13247 unique sequences.
Sample 1 - 33347 reads in 10388 unique sequences.
Processing: LW119-137 
Sample 1 - 34014 reads in 12338 unique sequences.
Sample 1 - 34014 reads in 10001 unique sequences.
Processing: LW12-30 
Sample 1 - 72038 reads in 19686 unique sequences.
Sample 1 - 72038 reads in 16676 unique sequences.
Processing: LW121-140 
Sample 1 - 3318 reads in 3154 unique sequences.
Sample 1 - 3318 reads in 3184 unique sequences.
Processing: LW124-143 
Sample 1 - 17403 reads in 8754 unique sequences.
Sample 1 - 17403 reads in 7759 unique sequences.
Processing: LW127-152 
Sample 1 - 3684 reads in 2967 unique sequences.
Sample 1 - 3684 reads in 2899 unique sequences.
Processing: LW129-154 
Sample 1 - 72380 reads in 23380 unique sequences.
Sample 1 - 72380 reads in 18278 unique sequences.
Processing: LW13-31 
Sample 1 - 154855 reads in 68316 unique sequences.
Sample 1 - 154855 reads in 52590 unique sequences.
Processing: LW130-145 
Sample 1 - 3437 reads in 3237 unique sequences.
Sample 1 - 3437 reads in 3238 unique sequences.
Processing: LW131-146 
Sample 1 - 2994 reads in 2929 unique sequences.
Sample 1 - 2994 reads in 2918 unique sequences.
Processing: LW134-148 
Sample 1 - 8989 reads in 4864 unique sequences.
Sample 1 - 8989 reads in 4372 unique sequences.
Processing: LW135-150 
Sample 1 - 22575 reads in 8851 unique sequences.
Sample 1 - 22575 reads in 8086 unique sequences.
Processing: LW136-49 
Sample 1 - 72930 reads in 21131 unique sequences.
Sample 1 - 72930 reads in 18120 unique sequences.
Processing: LW137-50 
Sample 1 - 112455 reads in 31176 unique sequences.
Sample 1 - 112455 reads in 25243 unique sequences.
Processing: LW138-51 
Sample 1 - 69219 reads in 22266 unique sequences.
Sample 1 - 69219 reads in 15968 unique sequences.
Processing: LW139-52 
Sample 1 - 87752 reads in 21199 unique sequences.
Sample 1 - 87752 reads in 18685 unique sequences.
Processing: LW14-32 
Sample 1 - 78467 reads in 25778 unique sequences.
Sample 1 - 78467 reads in 21146 unique sequences.
Processing: LW140-85 
Sample 1 - 31608 reads in 10438 unique sequences.
Sample 1 - 31608 reads in 9025 unique sequences.
Processing: LW141-39 
Sample 1 - 100596 reads in 36665 unique sequences.
Sample 1 - 100596 reads in 26098 unique sequences.
Processing: LW142-40 
Sample 1 - 100281 reads in 46998 unique sequences.
Sample 1 - 100281 reads in 33888 unique sequences.
Processing: LW143-41 
Sample 1 - 67809 reads in 19888 unique sequences.
Sample 1 - 67809 reads in 15161 unique sequences.
Processing: LW144-42 
Sample 1 - 74160 reads in 22959 unique sequences.
Sample 1 - 74160 reads in 17065 unique sequences.
Processing: LW145-43 
Sample 1 - 75319 reads in 23144 unique sequences.
Sample 1 - 75319 reads in 17781 unique sequences.
Processing: LW146-44 
Sample 1 - 58091 reads in 16145 unique sequences.
Sample 1 - 58091 reads in 11654 unique sequences.
Processing: LW147-45 
Sample 1 - 72660 reads in 20723 unique sequences.
Sample 1 - 72660 reads in 15659 unique sequences.
Processing: LW148-46 
Sample 1 - 64946 reads in 20025 unique sequences.
Sample 1 - 64946 reads in 15476 unique sequences.
Processing: LW149-47 
Sample 1 - 118711 reads in 40221 unique sequences.
Sample 1 - 118711 reads in 29082 unique sequences.
Processing: LW15-33 
Sample 1 - 63174 reads in 20287 unique sequences.
Sample 1 - 63174 reads in 16537 unique sequences.
Processing: LW150-48 
Sample 1 - 65558 reads in 15766 unique sequences.
Sample 1 - 65558 reads in 13977 unique sequences.
Processing: LW152-169 
Sample 1 - 95051 reads in 27247 unique sequences.
Sample 1 - 95051 reads in 21695 unique sequences.
Processing: LW153-170 
Sample 1 - 61236 reads in 19781 unique sequences.
Sample 1 - 61236 reads in 15504 unique sequences.
Processing: LW16-34 
Sample 1 - 69659 reads in 18736 unique sequences.
Sample 1 - 69659 reads in 15517 unique sequences.
Processing: LW163-138 
Sample 1 - 19234 reads in 8751 unique sequences.
Sample 1 - 19234 reads in 7565 unique sequences.
Processing: LW164-144 
Sample 1 - 28539 reads in 12636 unique sequences.
Sample 1 - 28539 reads in 9863 unique sequences.
Processing: LW17-35 
Sample 1 - 77590 reads in 24179 unique sequences.
Sample 1 - 77590 reads in 18022 unique sequences.
Processing: LW18-36 
Sample 1 - 75650 reads in 23171 unique sequences.
Sample 1 - 75650 reads in 17219 unique sequences.
Processing: LW19-37 
Sample 1 - 78540 reads in 25302 unique sequences.
Sample 1 - 78540 reads in 19476 unique sequences.
Processing: LW20-38 
Sample 1 - 44522 reads in 15447 unique sequences.
Sample 1 - 44522 reads in 11496 unique sequences.
Processing: LW27-69 
Sample 1 - 51239 reads in 18991 unique sequences.
Sample 1 - 51239 reads in 14443 unique sequences.
Processing: LW38-214 
Sample 1 - 83993 reads in 30471 unique sequences.
Sample 1 - 83993 reads in 22747 unique sequences.
Processing: LW39-59 
Sample 1 - 64095 reads in 24420 unique sequences.
Sample 1 - 64095 reads in 19257 unique sequences.
Processing: LW45-68 
Sample 1 - 60547 reads in 24661 unique sequences.
Sample 1 - 60547 reads in 18950 unique sequences.
Processing: LW46-76 
Sample 1 - 26766 reads in 10453 unique sequences.
Sample 1 - 26766 reads in 7468 unique sequences.
Processing: LW49-83 
Sample 1 - 57380 reads in 25509 unique sequences.
Sample 1 - 57380 reads in 16940 unique sequences.
Processing: LW52-77 
Sample 1 - 41391 reads in 17769 unique sequences.
Sample 1 - 41391 reads in 14528 unique sequences.
Processing: LW53-78 
Sample 1 - 19010 reads in 9092 unique sequences.
Sample 1 - 19010 reads in 7405 unique sequences.
Processing: LW54-81 
Sample 1 - 34403 reads in 14242 unique sequences.
Sample 1 - 34403 reads in 12303 unique sequences.
Processing: LW55-82 
Sample 1 - 47106 reads in 18631 unique sequences.
Sample 1 - 47106 reads in 13957 unique sequences.
Processing: LW86-96 
Sample 1 - 5068 reads in 4911 unique sequences.
Sample 1 - 5068 reads in 4966 unique sequences.
Processing: LW87-97 
Sample 1 - 3058 reads in 2936 unique sequences.
Sample 1 - 3058 reads in 2964 unique sequences.
Processing: LW89-27 
Sample 1 - 92870 reads in 40118 unique sequences.
Sample 1 - 92870 reads in 31598 unique sequences.
Processing: LW90-28 
Sample 1 - 80682 reads in 25861 unique sequences.
Sample 1 - 80682 reads in 20132 unique sequences.
Processing: LW91-21 
Sample 1 - 122349 reads in 52572 unique sequences.
Sample 1 - 122349 reads in 38637 unique sequences.
Processing: LW92-9 
Sample 1 - 110046 reads in 41796 unique sequences.
Sample 1 - 110046 reads in 27849 unique sequences.
Processing: LW93-10 
Sample 1 - 48961 reads in 16237 unique sequences.
Sample 1 - 48961 reads in 13032 unique sequences.
Processing: LW94-11 
Sample 1 - 75678 reads in 19557 unique sequences.
Sample 1 - 75678 reads in 16652 unique sequences.
Processing: LW95-12 
Sample 1 - 92260 reads in 27971 unique sequences.
Sample 1 - 92260 reads in 23514 unique sequences.
Processing: LW97-13 
Sample 1 - 73197 reads in 24711 unique sequences.
Sample 1 - 73197 reads in 18193 unique sequences.
Processing: LW98-14 
Sample 1 - 7906 reads in 2928 unique sequences.
Sample 1 - 7906 reads in 2513 unique sequences.
Processing: LW99-15 
Sample 1 - 68615 reads in 26107 unique sequences.
Sample 1 - 68615 reads in 20190 unique sequences.
> 

