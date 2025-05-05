// IC Compiler II Version S-2021.06-SP4 Verilog Writer
// Generated on 5/3/2025 at 3:43:16
// Library Name: cic
// Block Name: CIC_ADPCM_Wrapper
// User Label: 
// Write Command: write_verilog -include { all } ../results/cic_compiled.v
module CIC_ADPCM_Wrapper ( clk , slow_clk , block_enable , pdm_in , outValid , 
    encPcm , VDD , VSS ) ;
input  clk ;
input  slow_clk ;
input  block_enable ;
input  pdm_in ;
output outValid ;
output [3:0] encPcm ;
input  VDD ;
input  VSS ;

wire inValid ;
wire oldValue ;
wire N44 ;
wire N45 ;
wire N46 ;
wire N47 ;
wire N48 ;
wire N49 ;
wire N50 ;
wire \enc/N1106 ;
wire \enc/N1105 ;
wire \enc/N1104 ;
wire \enc/N1097 ;
wire \enc/N1096 ;
wire \enc/N1095 ;
wire \enc/N1094 ;
wire \enc/N1093 ;
wire \enc/N1092 ;
wire \enc/N178 ;
wire \enc/doneCounter ;
wire \enc/n1 ;
wire \enc/n2 ;
wire \enc/n3 ;
wire \enc/n4 ;
wire \enc/n5 ;
wire \enc/n6 ;
wire \enc/n7 ;
wire \C40/DATA2_0 ;
wire \C40/DATA2_1 ;
wire \C40/DATA2_2 ;
wire \C40/DATA2_3 ;
wire \C40/DATA2_4 ;
wire \C40/DATA2_5 ;
wire \C40/DATA2_6 ;
wire \C40/DATA2_7 ;
wire \C40/DATA2_8 ;
wire \C40/DATA2_9 ;
wire \C40/DATA2_10 ;
wire \C40/DATA2_11 ;
wire \C40/DATA2_12 ;
wire \C40/DATA2_13 ;
wire \C40/DATA2_14 ;
wire \C40/DATA2_15 ;
wire \C40/DATA2_16 ;
wire \C40/DATA2_17 ;
wire n544 ;
wire n545 ;
wire n546 ;
wire n547 ;
wire n548 ;
wire n549 ;
wire n550 ;
wire n551 ;
wire n552 ;
wire n553 ;
wire n554 ;
wire n555 ;
wire n556 ;
wire n557 ;
wire n558 ;
wire n559 ;
wire n560 ;
wire n561 ;
wire n562 ;
wire n563 ;
wire n564 ;
wire n565 ;
wire n566 ;
wire n567 ;
wire n568 ;
wire n569 ;
wire n570 ;
wire n571 ;
wire n572 ;
wire n573 ;
wire n574 ;
wire n575 ;
wire n576 ;
wire n577 ;
wire n578 ;
wire n579 ;
wire n580 ;
wire n581 ;
wire n582 ;
wire n583 ;
wire n584 ;
wire n585 ;
wire n586 ;
wire n587 ;
wire n588 ;
wire n589 ;
wire n590 ;
wire n591 ;
wire n592 ;
wire n593 ;
wire n594 ;
wire n595 ;
wire n596 ;
wire n597 ;
wire n598 ;
wire n599 ;
wire n600 ;
wire n601 ;
wire n602 ;
wire n603 ;
wire n604 ;
wire n605 ;
wire n606 ;
wire n607 ;
wire n608 ;
wire n609 ;
wire n610 ;
wire n611 ;
wire n612 ;
wire n613 ;
wire n614 ;
wire n615 ;
wire n616 ;
wire n617 ;
wire n618 ;
wire n619 ;
wire n620 ;
wire n621 ;
wire n622 ;
wire n623 ;
wire n624 ;
wire n625 ;
wire n626 ;
wire n627 ;
wire n628 ;
wire n629 ;
wire n630 ;
wire n631 ;
wire n632 ;
wire n633 ;
wire n634 ;
wire n635 ;
wire n636 ;
wire n637 ;
wire n638 ;
wire n639 ;
wire n640 ;
wire n641 ;
wire n642 ;
wire n643 ;
wire n644 ;
wire n645 ;
wire n646 ;
wire n647 ;
wire n648 ;
wire n649 ;
wire n650 ;
wire n651 ;
wire n652 ;
wire n653 ;
wire n654 ;
wire n655 ;
wire n656 ;
wire n657 ;
wire n658 ;
wire n659 ;
wire n660 ;
wire n661 ;
wire n662 ;
wire n663 ;
wire n664 ;
wire n665 ;
wire n666 ;
wire n667 ;
wire n668 ;
wire n669 ;
wire n670 ;
wire n671 ;
wire n672 ;
wire n673 ;
wire n674 ;
wire n675 ;
wire n676 ;
wire n677 ;
wire n678 ;
wire n679 ;
wire n680 ;
wire n681 ;
wire n682 ;
wire n683 ;
wire n684 ;
wire n685 ;
wire n686 ;
wire n687 ;
wire n688 ;
wire n689 ;
wire n690 ;
wire n691 ;
wire n692 ;
wire n693 ;
wire n694 ;
wire n695 ;
wire n696 ;
wire n697 ;
wire n699 ;
wire n700 ;
wire n701 ;
wire n702 ;
wire n703 ;
wire n704 ;
wire n705 ;
wire n706 ;
wire n707 ;
wire n708 ;
wire n709 ;
wire n710 ;
wire n711 ;
wire n712 ;
wire n713 ;
wire n714 ;
wire n715 ;
wire n716 ;
wire n717 ;
wire n718 ;
wire n719 ;
wire n720 ;
wire n721 ;
wire n722 ;
wire n723 ;
wire n724 ;
wire n725 ;
wire n726 ;
wire n727 ;
wire n728 ;
wire n729 ;
wire n730 ;
wire n731 ;
wire n732 ;
wire n733 ;
wire n734 ;
wire n735 ;
wire n736 ;
wire n737 ;
wire n738 ;
wire n739 ;
wire n740 ;
wire n741 ;
wire n742 ;
wire n743 ;
wire n744 ;
wire n745 ;
wire n746 ;
wire n747 ;
wire n748 ;
wire n749 ;
wire n750 ;
wire n751 ;
wire n752 ;
wire n753 ;
wire n754 ;
wire n755 ;
wire n756 ;
wire n757 ;
wire n758 ;
wire n759 ;
wire n760 ;
wire n761 ;
wire n762 ;
wire n763 ;
wire n764 ;
wire n765 ;
wire n766 ;
wire n767 ;
wire n768 ;
wire n769 ;
wire n770 ;
wire n771 ;
wire n772 ;
wire n773 ;
wire n774 ;
wire \C1/Z_17 ;
wire \C1/Z_16 ;
wire \C1/Z_15 ;
wire \C1/Z_14 ;
wire \C1/Z_13 ;
wire \C1/Z_12 ;
wire \C1/Z_11 ;
wire \C1/Z_10 ;
wire \C1/Z_9 ;
wire \C1/Z_8 ;
wire \C1/Z_7 ;
wire \C1/Z_6 ;
wire \C1/Z_5 ;
wire \C1/Z_4 ;
wire \C1/Z_3 ;
wire \C1/Z_2 ;
wire \C1/Z_1 ;
wire \DP_OP_52J1_123_6716/n43 ;
wire \DP_OP_52J1_123_6716/n42 ;
wire \DP_OP_52J1_123_6716/n41 ;
wire \DP_OP_52J1_123_6716/n40 ;
wire \DP_OP_52J1_123_6716/n39 ;
wire \DP_OP_52J1_123_6716/n38 ;
wire \DP_OP_52J1_123_6716/n37 ;
wire \DP_OP_52J1_123_6716/n36 ;
wire \DP_OP_52J1_123_6716/n35 ;
wire \DP_OP_52J1_123_6716/n34 ;
wire \DP_OP_52J1_123_6716/n33 ;
wire \DP_OP_52J1_123_6716/n32 ;
wire \DP_OP_52J1_123_6716/n31 ;
wire \DP_OP_52J1_123_6716/n30 ;
wire \DP_OP_52J1_123_6716/n29 ;
wire \DP_OP_52J1_123_6716/n28 ;
wire \DP_OP_52J1_123_6716/n27 ;
wire \DP_OP_52J1_123_6716/n26 ;
wire \DP_OP_52J1_123_6716/n25 ;
wire \DP_OP_52J1_123_6716/n20 ;
wire \DP_OP_52J1_123_6716/n19 ;
wire \DP_OP_52J1_123_6716/n18 ;
wire \DP_OP_52J1_123_6716/n17 ;
wire \DP_OP_52J1_123_6716/n16 ;
wire \DP_OP_52J1_123_6716/n15 ;
wire \DP_OP_52J1_123_6716/n14 ;
wire \DP_OP_52J1_123_6716/n13 ;
wire \DP_OP_52J1_123_6716/n12 ;
wire \DP_OP_52J1_123_6716/n11 ;
wire \DP_OP_52J1_123_6716/n10 ;
wire \DP_OP_52J1_123_6716/n9 ;
wire \DP_OP_52J1_123_6716/n8 ;
wire \DP_OP_52J1_123_6716/n7 ;
wire \DP_OP_52J1_123_6716/n6 ;
wire \DP_OP_52J1_123_6716/n5 ;
wire \DP_OP_52J1_123_6716/n4 ;
wire \DP_OP_52J1_123_6716/n3 ;
wire \DP_OP_52J1_123_6716/n2 ;
wire \DP_OP_85J1_126_8300/n17 ;
wire \DP_OP_85J1_126_8300/n16 ;
wire \DP_OP_85J1_126_8300/n15 ;
wire \DP_OP_85J1_126_8300/n14 ;
wire \DP_OP_85J1_126_8300/n13 ;
wire \DP_OP_85J1_126_8300/n12 ;
wire \DP_OP_85J1_126_8300/n11 ;
wire \DP_OP_85J1_126_8300/n10 ;
wire \DP_OP_85J1_126_8300/n9 ;
wire \DP_OP_85J1_126_8300/n8 ;
wire \DP_OP_85J1_126_8300/n7 ;
wire \DP_OP_85J1_126_8300/n6 ;
wire \DP_OP_85J1_126_8300/n5 ;
wire \DP_OP_85J1_126_8300/n4 ;
wire \DP_OP_85J1_126_8300/n3 ;
wire \DP_OP_85J1_126_8300/n2 ;
wire \DP_OP_85J1_126_8300/n1 ;
wire \intadd_0/B[17] ;
wire \intadd_0/B[16] ;
wire \intadd_0/B[15] ;
wire \intadd_0/B[14] ;
wire \intadd_0/B[13] ;
wire \intadd_0/B[12] ;
wire \intadd_0/B[11] ;
wire \intadd_0/B[10] ;
wire \intadd_0/B[9] ;
wire \intadd_0/B[8] ;
wire \intadd_0/B[7] ;
wire \intadd_0/B[6] ;
wire \intadd_0/B[5] ;
wire \intadd_0/B[4] ;
wire \intadd_0/B[3] ;
wire \intadd_0/B[2] ;
wire \intadd_0/B[1] ;
wire \intadd_0/B[0] ;
wire \intadd_0/CI ;
wire \intadd_0/SUM[17] ;
wire \intadd_0/SUM[16] ;
wire \intadd_0/SUM[15] ;
wire \intadd_0/SUM[14] ;
wire \intadd_0/SUM[13] ;
wire \intadd_0/SUM[12] ;
wire \intadd_0/SUM[11] ;
wire \intadd_0/SUM[10] ;
wire \intadd_0/SUM[9] ;
wire \intadd_0/SUM[8] ;
wire \intadd_0/SUM[7] ;
wire \intadd_0/SUM[6] ;
wire \intadd_0/SUM[5] ;
wire \intadd_0/SUM[4] ;
wire \intadd_0/SUM[3] ;
wire \intadd_0/SUM[2] ;
wire \intadd_0/SUM[1] ;
wire \intadd_0/SUM[0] ;
wire \intadd_0/n18 ;
wire \intadd_0/n17 ;
wire \intadd_0/n16 ;
wire \intadd_0/n15 ;
wire \intadd_0/n14 ;
wire \intadd_0/n13 ;
wire \intadd_0/n12 ;
wire \intadd_0/n11 ;
wire \intadd_0/n10 ;
wire \intadd_0/n9 ;
wire \intadd_0/n8 ;
wire \intadd_0/n7 ;
wire \intadd_0/n6 ;
wire gre_net_849 ;
wire \intadd_0/n4 ;
wire \intadd_0/n3 ;
wire gre_d_INV_14_0 ;
wire gre_net_850 ;
wire \intadd_1/B[17] ;
wire \intadd_1/B[16] ;
wire \intadd_1/B[15] ;
wire \intadd_1/B[14] ;
wire \intadd_1/B[13] ;
wire \intadd_1/B[12] ;
wire \intadd_1/B[11] ;
wire \intadd_1/B[10] ;
wire \intadd_1/B[9] ;
wire \intadd_1/B[8] ;
wire \intadd_1/B[7] ;
wire \intadd_1/B[6] ;
wire \intadd_1/B[5] ;
wire \intadd_1/B[4] ;
wire \intadd_1/B[3] ;
wire \intadd_1/B[2] ;
wire \intadd_1/B[1] ;
wire \intadd_1/B[0] ;
wire \intadd_1/CI ;
wire gre_net_851 ;
wire \intadd_1/n17 ;
wire \intadd_1/n16 ;
wire \intadd_1/n15 ;
wire gre_net_852 ;
wire \intadd_1/n13 ;
wire \intadd_1/n12 ;
wire \intadd_1/n11 ;
wire \intadd_1/n10 ;
wire gre_net_853 ;
wire \intadd_1/n8 ;
wire \intadd_1/n7 ;
wire gre_net_854 ;
wire \intadd_1/n5 ;
wire gre_net_855 ;
wire \intadd_1/n3 ;
wire gre_net_856 ;
wire \intadd_1/n1 ;
wire \intadd_2/A[1] ;
wire \intadd_2/A[0] ;
wire \intadd_2/B[4] ;
wire \intadd_2/B[3] ;
wire \intadd_2/B[2] ;
wire \intadd_2/B[1] ;
wire \intadd_2/B[0] ;
wire \intadd_2/CI ;
wire \intadd_2/SUM[4] ;
wire \intadd_2/SUM[3] ;
wire \intadd_2/SUM[2] ;
wire \intadd_2/SUM[1] ;
wire \intadd_2/SUM[0] ;
wire \intadd_2/n5 ;
wire \intadd_2/n4 ;
wire \intadd_2/n3 ;
wire \intadd_2/n2 ;
wire \intadd_2/n1 ;
wire copt_net_680 ;
wire n782 ;
wire gre_a_INV_63_1 ;
wire n784 ;
wire n785 ;
wire n786 ;
wire n787 ;
wire n788 ;
wire n789 ;
wire n790 ;
wire n791 ;
wire n792 ;
wire n793 ;
wire n794 ;
wire n795 ;
wire n796 ;
wire n797 ;
wire n798 ;
wire gre_net_857 ;
wire n800 ;
wire n801 ;
wire n802 ;
wire n803 ;
wire n804 ;
wire n805 ;
wire n806 ;
wire n807 ;
wire n808 ;
wire n809 ;
wire n810 ;
wire n811 ;
wire n812 ;
wire n813 ;
wire n814 ;
wire n815 ;
wire n816 ;
wire n817 ;
wire n818 ;
wire n819 ;
wire n820 ;
wire n821 ;
wire n822 ;
wire n823 ;
wire n824 ;
wire n825 ;
wire n826 ;
wire n827 ;
wire n828 ;
wire n829 ;
wire n830 ;
wire n831 ;
wire n832 ;
wire n833 ;
wire n834 ;
wire n836 ;
wire n837 ;
wire n838 ;
wire n839 ;
wire n840 ;
wire n841 ;
wire n842 ;
wire n843 ;
wire n844 ;
wire n845 ;
wire n846 ;
wire n847 ;
wire n848 ;
wire n849 ;
wire n850 ;
wire n851 ;
wire n852 ;
wire n854 ;
wire n855 ;
wire n856 ;
wire n857 ;
wire n858 ;
wire n859 ;
wire n860 ;
wire n861 ;
wire n862 ;
wire n863 ;
wire n864 ;
wire n865 ;
wire n866 ;
wire n867 ;
wire n868 ;
wire n869 ;
wire n871 ;
wire n872 ;
wire n873 ;
wire n874 ;
wire n875 ;
wire n876 ;
wire n877 ;
wire n878 ;
wire n879 ;
wire n880 ;
wire n881 ;
wire n882 ;
wire n883 ;
wire n884 ;
wire n885 ;
wire n886 ;
wire n887 ;
wire n888 ;
wire n889 ;
wire n890 ;
wire n891 ;
wire n892 ;
wire n893 ;
wire n894 ;
wire n895 ;
wire n896 ;
wire n897 ;
wire n898 ;
wire n899 ;
wire n900 ;
wire n902 ;
wire n903 ;
wire n904 ;
wire n905 ;
wire n906 ;
wire n907 ;
wire n908 ;
wire n909 ;
wire n910 ;
wire n911 ;
wire n912 ;
wire n913 ;
wire n914 ;
wire n915 ;
wire n916 ;
wire n917 ;
wire n918 ;
wire n919 ;
wire n920 ;
wire n921 ;
wire n922 ;
wire n923 ;
wire n924 ;
wire n925 ;
wire n926 ;
wire n927 ;
wire n928 ;
wire n929 ;
wire n930 ;
wire n931 ;
wire n932 ;
wire n933 ;
wire n934 ;
wire n935 ;
wire n936 ;
wire n937 ;
wire n938 ;
wire n939 ;
wire n940 ;
wire n941 ;
wire n942 ;
wire n943 ;
wire n944 ;
wire n945 ;
wire n946 ;
wire n947 ;
wire n948 ;
wire n949 ;
wire n950 ;
wire n951 ;
wire n952 ;
wire n953 ;
wire n954 ;
wire n955 ;
wire n956 ;
wire n957 ;
wire n958 ;
wire n959 ;
wire n960 ;
wire n961 ;
wire n962 ;
wire n964 ;
wire n965 ;
wire n966 ;
wire n967 ;
wire n968 ;
wire n969 ;
wire n970 ;
wire n971 ;
wire n972 ;
wire n973 ;
wire n974 ;
wire n975 ;
wire n976 ;
wire n977 ;
wire n978 ;
wire n979 ;
wire n980 ;
wire n981 ;
wire n982 ;
wire n983 ;
wire n984 ;
wire n985 ;
wire n986 ;
wire n987 ;
wire n988 ;
wire n989 ;
wire n990 ;
wire n991 ;
wire n992 ;
wire n993 ;
wire n994 ;
wire n995 ;
wire n996 ;
wire n997 ;
wire n998 ;
wire n999 ;
wire n1000 ;
wire n1001 ;
wire n1002 ;
wire n1003 ;
wire n1004 ;
wire n1005 ;
wire n1006 ;
wire n1007 ;
wire n1008 ;
wire n1009 ;
wire n1010 ;
wire n1011 ;
wire n1012 ;
wire n1013 ;
wire n1014 ;
wire n1015 ;
wire n1016 ;
wire n1017 ;
wire n1018 ;
wire n1019 ;
wire n1020 ;
wire n1021 ;
wire n1022 ;
wire n1023 ;
wire n1024 ;
wire n1025 ;
wire n1026 ;
wire n1027 ;
wire n1029 ;
wire n1030 ;
wire n1033 ;
wire n1034 ;
wire n1035 ;
wire n1036 ;
wire n1037 ;
wire n1038 ;
wire n1039 ;
wire n1040 ;
wire n1041 ;
wire n1042 ;
wire n1043 ;
wire n1044 ;
wire n1045 ;
wire n1046 ;
wire n1047 ;
wire n1048 ;
wire n1049 ;
wire n1050 ;
wire n1051 ;
wire n1052 ;
wire n1055 ;
wire n1058 ;
wire n1059 ;
wire n1060 ;
wire n1061 ;
wire n1062 ;
wire n1063 ;
wire n1064 ;
wire n1065 ;
wire n1066 ;
wire n1067 ;
wire n1068 ;
wire n1069 ;
wire n1070 ;
wire n1071 ;
wire n1072 ;
wire n1073 ;
wire n1074 ;
wire n1075 ;
wire n1076 ;
wire n1077 ;
wire n1078 ;
wire n1079 ;
wire n1080 ;
wire n1081 ;
wire n1082 ;
wire n1083 ;
wire n1084 ;
wire n1085 ;
wire n1086 ;
wire n1087 ;
wire n1088 ;
wire n1089 ;
wire n1090 ;
wire n1091 ;
wire n1092 ;
wire n1093 ;
wire n1094 ;
wire n1095 ;
wire n1096 ;
wire n1097 ;
wire n1098 ;
wire n1099 ;
wire n1100 ;
wire n1101 ;
wire n1102 ;
wire n1103 ;
wire n1104 ;
wire n1105 ;
wire n1106 ;
wire n1107 ;
wire n1108 ;
wire n1109 ;
wire n1110 ;
wire n1111 ;
wire n1112 ;
wire n1113 ;
wire n1114 ;
wire n1117 ;
wire n1118 ;
wire n1119 ;
wire n1120 ;
wire n1121 ;
wire n1122 ;
wire n1125 ;
wire n1126 ;
wire n1128 ;
wire n1129 ;
wire n1132 ;
wire n1133 ;
wire n1134 ;
wire n1135 ;
wire n1136 ;
wire n1137 ;
wire n1138 ;
wire n1141 ;
wire n1142 ;
wire n1143 ;
wire n1144 ;
wire n1145 ;
wire n1146 ;
wire n1147 ;
wire n1149 ;
wire n1150 ;
wire n1151 ;
wire n1152 ;
wire n1153 ;
wire n1154 ;
wire n1155 ;
wire n1156 ;
wire n1159 ;
wire n1160 ;
wire n1161 ;
wire n1162 ;
wire n1163 ;
wire n1164 ;
wire n1166 ;
wire n1167 ;
wire n1168 ;
wire n1169 ;
wire n1170 ;
wire n1172 ;
wire n1175 ;
wire n1176 ;
wire n1177 ;
wire n1178 ;
wire n1179 ;
wire n1180 ;
wire n1183 ;
wire n1184 ;
wire n1185 ;
wire n1186 ;
wire n1187 ;
wire n1188 ;
wire n1189 ;
wire n1190 ;
wire n1191 ;
wire n1192 ;
wire n1193 ;
wire n1195 ;
wire n1196 ;
wire n1197 ;
wire n1199 ;
wire n1200 ;
wire n1201 ;
wire n1202 ;
wire n1203 ;
wire n1204 ;
wire n1205 ;
wire n1207 ;
wire n1208 ;
wire n1209 ;
wire n1210 ;
wire n1211 ;
wire n1212 ;
wire n1213 ;
wire n1214 ;
wire n1215 ;
wire n1216 ;
wire n1217 ;
wire n1218 ;
wire n1219 ;
wire n1220 ;
wire n1221 ;
wire n1222 ;
wire n1223 ;
wire n1225 ;
wire n1226 ;
wire n1227 ;
wire n1228 ;
wire n1229 ;
wire n1230 ;
wire n1231 ;
wire n1232 ;
wire n1233 ;
wire n1234 ;
wire n1235 ;
wire n1236 ;
wire n1237 ;
wire n1238 ;
wire n1239 ;
wire n1240 ;
wire n1241 ;
wire n1242 ;
wire n1243 ;
wire n1244 ;
wire n1245 ;
wire n1246 ;
wire n1247 ;
wire n1248 ;
wire n1249 ;
wire n1250 ;
wire n1251 ;
wire n1252 ;
wire n1253 ;
wire n1254 ;
wire n1255 ;
wire n1256 ;
wire n1259 ;
wire n1260 ;
wire n1261 ;
wire n1262 ;
wire n1263 ;
wire n1264 ;
wire n1265 ;
wire n1266 ;
wire n1267 ;
wire n1268 ;
wire n1269 ;
wire n1270 ;
wire n1271 ;
wire n1272 ;
wire n1273 ;
wire n1274 ;
wire n1275 ;
wire n1276 ;
wire n1277 ;
wire n1278 ;
wire n1279 ;
wire n1281 ;
wire n1282 ;
wire n1285 ;
wire n1286 ;
wire n1287 ;
wire n1288 ;
wire n1289 ;
wire n1290 ;
wire n1291 ;
wire n1292 ;
wire n1293 ;
wire n1295 ;
wire n1296 ;
wire n1297 ;
wire n1298 ;
wire n1299 ;
wire n1300 ;
wire n1301 ;
wire n1302 ;
wire n1303 ;
wire n1304 ;
wire n1305 ;
wire n1306 ;
wire n1307 ;
wire n1308 ;
wire n1309 ;
wire n1310 ;
wire n1311 ;
wire n1312 ;
wire n1313 ;
wire n1314 ;
wire n1315 ;
wire n1316 ;
wire n1317 ;
wire n1318 ;
wire n1319 ;
wire n1321 ;
wire n1322 ;
wire n1323 ;
wire n1324 ;
wire n1325 ;
wire n1326 ;
wire n1327 ;
wire n1328 ;
wire n1329 ;
wire n1330 ;
wire n1331 ;
wire n1332 ;
wire n1333 ;
wire n1334 ;
wire n1335 ;
wire n1336 ;
wire n1337 ;
wire n1338 ;
wire n1340 ;
wire n1341 ;
wire n1342 ;
wire n1343 ;
wire n1344 ;
wire n1345 ;
wire n1346 ;
wire n1347 ;
wire n1348 ;
wire n1349 ;
wire n1350 ;
wire n1351 ;
wire n1352 ;
wire n1353 ;
wire n1354 ;
wire n1355 ;
wire n1356 ;
wire n1357 ;
wire n1358 ;
wire n1359 ;
wire n1360 ;
wire n1361 ;
wire n1362 ;
wire n1363 ;
wire n1365 ;
wire n1366 ;
wire n1367 ;
wire n1368 ;
wire n1370 ;
wire n1371 ;
wire n1372 ;
wire n1373 ;
wire n1374 ;
wire n1375 ;
wire n1376 ;
wire n1377 ;
wire n1378 ;
wire n1379 ;
wire n1380 ;
wire n1381 ;
wire n1382 ;
wire n1383 ;
wire n1384 ;
wire n1385 ;
wire n1386 ;
wire n1387 ;
wire n1388 ;
wire n1389 ;
wire n1390 ;
wire n1391 ;
wire n1392 ;
wire n1393 ;
wire n1394 ;
wire n1395 ;
wire n1396 ;
wire n1397 ;
wire n1398 ;
wire n1399 ;
wire n1400 ;
wire n1401 ;
wire n1402 ;
wire n1403 ;
wire n1404 ;
wire n1405 ;
wire n1406 ;
wire n1407 ;
wire n1408 ;
wire n1409 ;
wire n1410 ;
wire n1411 ;
wire n1412 ;
wire n1413 ;
wire n1414 ;
wire n1415 ;
wire n1416 ;
wire n1417 ;
wire n1418 ;
wire n1419 ;
wire n1420 ;
wire n1421 ;
wire n1422 ;
wire n1423 ;
wire n1424 ;
wire n1425 ;
wire n1426 ;
wire n1427 ;
wire n1428 ;
wire n1429 ;
wire n1430 ;
wire n1431 ;
wire n1433 ;
wire n1434 ;
wire n1435 ;
wire n1436 ;
wire n1437 ;
wire n1438 ;
wire n1439 ;
wire n1440 ;
wire n1441 ;
wire n1442 ;
wire n1443 ;
wire n1444 ;
wire n1445 ;
wire n1446 ;
wire n1447 ;
wire n1448 ;
wire n1449 ;
wire n1450 ;
wire n1451 ;
wire n1452 ;
wire n1453 ;
wire n1454 ;
wire n1455 ;
wire n1456 ;
wire n1457 ;
wire n1458 ;
wire n1459 ;
wire n1460 ;
wire n1461 ;
wire n1462 ;
wire n1463 ;
wire n1464 ;
wire n1465 ;
wire n1466 ;
wire n1467 ;
wire n1468 ;
wire n1469 ;
wire n1470 ;
wire n1471 ;
wire n1472 ;
wire n1473 ;
wire n1474 ;
wire n1475 ;
wire n1476 ;
wire n1477 ;
wire n1478 ;
wire n1479 ;
wire n1480 ;
wire n1481 ;
wire n1482 ;
wire n1483 ;
wire n1484 ;
wire n1485 ;
wire n1486 ;
wire n1487 ;
wire n1488 ;
wire n1490 ;
wire n1491 ;
wire n1492 ;
wire n1493 ;
wire n1494 ;
wire n1495 ;
wire n1496 ;
wire n1497 ;
wire n1498 ;
wire n1499 ;
wire n1500 ;
wire n1502 ;
wire n1503 ;
wire n1505 ;
wire n1506 ;
wire n1507 ;
wire n1508 ;
wire n1509 ;
wire n1510 ;
wire n1511 ;
wire n1512 ;
wire n1514 ;
wire n1515 ;
wire n1516 ;
wire n1517 ;
wire n1519 ;
wire n1520 ;
wire n1521 ;
wire n1522 ;
wire n1523 ;
wire n1524 ;
wire n1526 ;
wire n1527 ;
wire n1528 ;
wire n1529 ;
wire n1530 ;
wire n1531 ;
wire n1532 ;
wire n1533 ;
wire n1534 ;
wire n1535 ;
wire n1536 ;
wire n1537 ;
wire n1538 ;
wire n1539 ;
wire n1540 ;
wire n1541 ;
wire n1542 ;
wire n1543 ;
wire n1544 ;
wire n1545 ;
wire n1546 ;
wire n1547 ;
wire n1548 ;
wire n1549 ;
wire n1550 ;
wire n1551 ;
wire n1552 ;
wire n1553 ;
wire n1554 ;
wire n1555 ;
wire n1556 ;
wire n1557 ;
wire n1558 ;
wire n1559 ;
wire n1560 ;
wire n1561 ;
wire n1562 ;
wire n1563 ;
wire n1564 ;
wire n1565 ;
wire n1566 ;
wire n1567 ;
wire n1569 ;
wire n1570 ;
wire n1571 ;
wire n1572 ;
wire n1574 ;
wire n1575 ;
wire n1576 ;
wire n1577 ;
wire n1578 ;
wire n1579 ;
wire n1580 ;
wire n1581 ;
wire n1582 ;
wire n1583 ;
wire n1584 ;
wire n1586 ;
wire n1587 ;
wire n1588 ;
wire n1589 ;
wire n1590 ;
wire n1592 ;
wire n1593 ;
wire n1594 ;
wire n1595 ;
wire n1596 ;
wire n1597 ;
wire n1598 ;
wire n1599 ;
wire n1600 ;
wire n1601 ;
wire n1602 ;
wire n1603 ;
wire n1604 ;
wire n1605 ;
wire n1606 ;
wire n1607 ;
wire n1608 ;
wire n1609 ;
wire n1610 ;
wire n1611 ;
wire n1612 ;
wire n1613 ;
wire n1614 ;
wire n1615 ;
wire n1616 ;
wire n1617 ;
wire n1618 ;
wire n1619 ;
wire n1620 ;
wire n1621 ;
wire n1622 ;
wire n1623 ;
wire n1624 ;
wire n1625 ;
wire n1626 ;
wire n1627 ;
wire n1628 ;
wire n1629 ;
wire n1631 ;
wire n1632 ;
wire n1633 ;
wire n1634 ;
wire n1635 ;
wire n1636 ;
wire n1637 ;
wire n1638 ;
wire n1639 ;
wire n1640 ;
wire n1641 ;
wire n1642 ;
wire n1643 ;
wire n1644 ;
wire n1645 ;
wire n1646 ;
wire n1647 ;
wire n1648 ;
wire n1649 ;
wire n1650 ;
wire n1651 ;
wire n1652 ;
wire n1653 ;
wire n1654 ;
wire n1655 ;
wire n1656 ;
wire n1657 ;
wire n1658 ;
wire n1659 ;
wire n1660 ;
wire n1661 ;
wire n1662 ;
wire n1663 ;
wire n1664 ;
wire n1665 ;
wire n1667 ;
wire n1668 ;
wire n1670 ;
wire n1671 ;
wire n1672 ;
wire n1673 ;
wire n1674 ;
wire n1675 ;
wire n1676 ;
wire n1677 ;
wire n1678 ;
wire n1679 ;
wire n1680 ;
wire n1681 ;
wire n1682 ;
wire n1683 ;
wire n1684 ;
wire n1685 ;
wire n1686 ;
wire n1687 ;
wire n1688 ;
wire n1689 ;
wire n1690 ;
wire n1691 ;
wire n1692 ;
wire n1693 ;
wire n1694 ;
wire n1695 ;
wire n1696 ;
wire n1697 ;
wire n1698 ;
wire n1699 ;
wire n1700 ;
wire n1701 ;
wire n1702 ;
wire n1703 ;
wire n1704 ;
wire n1705 ;
wire n1706 ;
wire n1707 ;
wire n1708 ;
wire n1709 ;
wire n1710 ;
wire n1711 ;
wire n1712 ;
wire n1714 ;
wire n1715 ;
wire n1716 ;
wire n1717 ;
wire n1718 ;
wire n1719 ;
wire n1720 ;
wire n1721 ;
wire n1722 ;
wire n1723 ;
wire n1724 ;
wire n1725 ;
wire n1726 ;
wire n1727 ;
wire n1728 ;
wire n1729 ;
wire n1730 ;
wire n1731 ;
wire n1732 ;
wire n1733 ;
wire n1734 ;
wire n1735 ;
wire n1736 ;
wire n1737 ;
wire n1738 ;
wire n1739 ;
wire n1741 ;
wire n1742 ;
wire n1743 ;
wire n1744 ;
wire n1745 ;
wire n1746 ;
wire n1747 ;
wire n1748 ;
wire n1749 ;
wire n1750 ;
wire n1751 ;
wire n1752 ;
wire n1753 ;
wire n1754 ;
wire n1755 ;
wire n1756 ;
wire n1757 ;
wire n1758 ;
wire n1759 ;
wire n1761 ;
wire n1762 ;
wire n1763 ;
wire n1764 ;
wire n1765 ;
wire n1766 ;
wire n1767 ;
wire n1768 ;
wire n1769 ;
wire n1770 ;
wire n1771 ;
wire n1772 ;
wire n1773 ;
wire n1774 ;
wire n1775 ;
wire n1777 ;
wire n1778 ;
wire n1779 ;
wire n1780 ;
wire n1781 ;
wire n1782 ;
wire n1783 ;
wire n1784 ;
wire n1785 ;
wire n1787 ;
wire n1789 ;
wire n1790 ;
wire n1791 ;
wire n1792 ;
wire n1793 ;
wire n1794 ;
wire n1795 ;
wire n1796 ;
wire n1797 ;
wire n1800 ;
wire n1801 ;
wire n1802 ;
wire n1803 ;
wire n1804 ;
wire n1805 ;
wire n1806 ;
wire n1809 ;
wire n1810 ;
wire n1811 ;
wire n1812 ;
wire n1813 ;
wire n1814 ;
wire n1815 ;
wire n1816 ;
wire n1817 ;
wire n1818 ;
wire n1819 ;
wire n1820 ;
wire n1821 ;
wire n1822 ;
wire n1823 ;
wire n1824 ;
wire n1825 ;
wire n1826 ;
wire n1827 ;
wire n1828 ;
wire n1829 ;
wire n1830 ;
wire n1831 ;
wire n1832 ;
wire n1834 ;
wire n1835 ;
wire n1836 ;
wire n1837 ;
wire n1838 ;
wire n1839 ;
wire n1840 ;
wire n1841 ;
wire n1842 ;
wire n1844 ;
wire n1845 ;
wire n1846 ;
wire n1847 ;
wire n1849 ;
wire n1851 ;
wire n1852 ;
wire n1853 ;
wire n1854 ;
wire n1855 ;
wire n1856 ;
wire n1857 ;
wire n1858 ;
wire n1859 ;
wire n1860 ;
wire n1861 ;
wire n1862 ;
wire n1863 ;
wire n1864 ;
wire n1865 ;
wire n1866 ;
wire n1867 ;
wire n1868 ;
wire n1869 ;
wire n1870 ;
wire n1871 ;
wire n1872 ;
wire n1873 ;
wire n1874 ;
wire n1875 ;
wire n1876 ;
wire n1877 ;
wire n1878 ;
wire n1879 ;
wire n1880 ;
wire n1881 ;
wire n1882 ;
wire n1883 ;
wire n1884 ;
wire n1885 ;
wire n1887 ;
wire n1888 ;
wire n1889 ;
wire n1890 ;
wire n1891 ;
wire n1892 ;
wire n1893 ;
wire n1894 ;
wire n1895 ;
wire n1896 ;
wire n1897 ;
wire n1898 ;
wire n1899 ;
wire n1900 ;
wire n1901 ;
wire n1903 ;
wire n1904 ;
wire n1906 ;
wire n1907 ;
wire n1908 ;
wire n1909 ;
wire n1911 ;
wire n1912 ;
wire n1913 ;
wire n1914 ;
wire n1915 ;
wire n1919 ;
wire n1920 ;
wire n1921 ;
wire n1922 ;
wire n1923 ;
wire n1924 ;
wire n1925 ;
wire n1926 ;
wire n1927 ;
wire n1928 ;
wire n1929 ;
wire n1931 ;
wire n1932 ;
wire n1933 ;
wire n1934 ;
wire n1936 ;
wire n1937 ;
wire n1938 ;
wire n1939 ;
wire n1941 ;
wire n1942 ;
wire n1943 ;
wire n1944 ;
wire n1946 ;
wire n1947 ;
wire n1948 ;
wire n1949 ;
wire n1951 ;
wire n1952 ;
wire n1953 ;
wire n1954 ;
wire n1956 ;
wire n1958 ;
wire n1961 ;
wire n1962 ;
wire n1963 ;
wire n1964 ;
wire n1965 ;
wire n1968 ;
wire n1971 ;
wire n1972 ;
wire n1973 ;
wire n1974 ;
wire n1978 ;
wire n1979 ;
wire n1981 ;
wire n1982 ;
wire n1983 ;
wire n1984 ;
wire n1985 ;
wire n1987 ;
wire n1989 ;
wire n1990 ;
wire n1991 ;
wire n1994 ;
wire n1995 ;
wire n1996 ;
wire n1998 ;
wire n1999 ;
wire n2000 ;
wire n2001 ;
wire n2002 ;
wire n2003 ;
wire n2004 ;
wire n2005 ;
wire n2006 ;
wire n2007 ;
wire n2008 ;
wire n2009 ;
wire n2010 ;
wire n2011 ;
wire n2012 ;
wire n2013 ;
wire n2014 ;
wire n2015 ;
wire n2016 ;
wire n2017 ;
wire n2018 ;
wire n2019 ;
wire n2020 ;
wire n2021 ;
wire n2022 ;
wire n2024 ;
wire n2025 ;
wire n2026 ;
wire n2027 ;
wire [1:0] state ;
wire [15:0] filter_out ;
wire [6:0] counter ;
wire [19:0] \cic/sub_cast_5 ;
wire [19:0] \cic/sub_cast_3 ;
wire [19:0] \cic/sub_cast_1 ;
wire [19:0] \cic/add_cast_5 ;
wire [19:0] \cic/add_cast_3 ;
wire [19:0] \cic/add_cast_1 ;
wire [1:0] \cic/input_register ;
wire [5:0] \cic/cur_count ;
wire [3:0] \enc/prePCM ;
wire [18:0] \enc/prePredSamp ;
wire [18:1] \enc/dequantSamp ;
wire [14:0] \enc/stepSize ;
wire [19:1] \enc/sampDiff ;
wire [2:0] \enc/pcmSq ;
wire [18:0] \enc/predictorSamp ;
supply0 VSS ;
supply1 VDD ;
wire ZBUF_3972_0 ;
wire ZBUF_4058_0 ;
wire ZBUF_3936_0 ;
wire ZBUF_3910_0 ;
wire ZBUF_6889_0 ;
wire ZBUF_7033_0 ;
wire ZBUF_2257_0 ;
wire ZBUF_3647_0 ;
wire ZBUF_859_0 ;
wire copt_net_787 ;
wire ZBUF_4408_0 ;
wire ZBUF_6565_0 ;
wire ZBUF_24119_0 ;
wire ZBUF_300_0 ;
wire ZBUF_736_0 ;
wire ZBUF_457_0 ;
wire ZBUF_3254_0 ;
wire ZBUF_4803_0 ;
wire copt_net_788 ;
wire ZBUF_229_0 ;
wire copt_net_683 ;
wire ZBUF_38_0 ;
wire ZBUF_1666_0 ;
wire ZBUF_28_0 ;
wire copt_net_684 ;
wire copt_net_685 ;
wire ZBUF_1627_0 ;
wire ZBUF_2091_0 ;
wire ZBUF_5_0 ;
wire copt_net_686 ;
wire copt_net_789 ;
wire ZBUF_125_0 ;
wire ZBUF_9_0 ;
wire copt_net_688 ;
wire ZBUF_2_1 ;
wire copt_net_689 ;
wire ZBUF_53_2 ;
wire ZBUF_106_2 ;
wire copt_net_690 ;
wire ZBUF_78_3 ;
wire copt_net_692 ;
wire ZBUF_9_4 ;
wire ZBUF_5_4 ;
wire copt_net_694 ;
wire ZBUF_2_5 ;
wire ZBUF_9_5 ;
wire copt_net_695 ;
wire copt_net_696 ;
wire copt_net_697 ;
wire ZBUF_9_6 ;
wire copt_net_698 ;
wire copt_net_699 ;
wire copt_net_700 ;
wire ZBUF_8_8 ;
wire ZBUF_137_8 ;
wire copt_net_701 ;
wire ZBUF_46_8 ;
wire ZBUF_9_9 ;
wire copt_net_702 ;
wire copt_net_790 ;
wire copt_net_791 ;
wire copt_net_705 ;
wire copt_net_706 ;
wire ZBUF_2_12 ;
wire ZBUF_9_13 ;
wire copt_net_707 ;
wire ZBUF_32_14 ;
wire copt_net_708 ;
wire ZBUF_2_15 ;
wire ZBUF_2_16 ;
wire ZBUF_47_16 ;
wire ZBUF_56_16 ;
wire copt_net_709 ;
wire copt_net_710 ;
wire copt_net_711 ;
wire ZBUF_2_19 ;
wire copt_net_0 ;
wire copt_net_1 ;
wire copt_net_2 ;
wire copt_net_3 ;
wire copt_net_4 ;
wire copt_net_5 ;
wire copt_net_6 ;
wire copt_net_8 ;
wire copt_net_9 ;
wire copt_net_10 ;
wire copt_net_11 ;
wire copt_net_12 ;
wire copt_net_13 ;
wire copt_net_14 ;
wire copt_net_15 ;
wire copt_net_16 ;
wire copt_net_17 ;
wire copt_net_18 ;
wire copt_net_19 ;
wire copt_net_20 ;
wire copt_net_21 ;
wire copt_net_22 ;
wire copt_net_23 ;
wire copt_net_24 ;
wire copt_net_25 ;
wire copt_net_26 ;
wire copt_net_27 ;
wire copt_net_28 ;
wire copt_net_30 ;
wire copt_net_31 ;
wire copt_net_32 ;
wire copt_net_33 ;
wire copt_net_34 ;
wire copt_net_36 ;
wire copt_net_37 ;
wire copt_net_38 ;
wire copt_net_39 ;
wire copt_net_40 ;
wire copt_net_41 ;
wire copt_net_42 ;
wire copt_net_43 ;
wire copt_net_45 ;
wire copt_net_46 ;
wire copt_net_93 ;
wire copt_net_48 ;
wire copt_net_49 ;
wire copt_net_50 ;
wire copt_net_51 ;
wire copt_net_52 ;
wire copt_net_53 ;
wire copt_net_54 ;
wire copt_net_55 ;
wire copt_net_56 ;
wire copt_net_57 ;
wire copt_net_59 ;
wire copt_net_60 ;
wire copt_net_61 ;
wire copt_net_62 ;
wire copt_net_63 ;
wire copt_net_64 ;
wire copt_net_65 ;
wire copt_net_66 ;
wire copt_net_70 ;
wire copt_net_71 ;
wire copt_net_73 ;
wire copt_net_74 ;
wire copt_net_75 ;
wire copt_net_76 ;
wire copt_net_77 ;
wire copt_net_78 ;
wire copt_net_108 ;
wire copt_net_95 ;
wire copt_net_96 ;
wire copt_net_99 ;
wire copt_net_100 ;
wire copt_net_109 ;
wire copt_net_111 ;
wire copt_net_113 ;
wire copt_net_114 ;
wire copt_net_115 ;
wire copt_net_116 ;
wire copt_net_118 ;
wire copt_net_119 ;
wire copt_net_120 ;
wire copt_net_121 ;
wire copt_net_122 ;
wire copt_net_123 ;
wire copt_net_134 ;
wire copt_net_135 ;
wire copt_net_136 ;
wire copt_net_130 ;
wire copt_net_137 ;
wire copt_net_149 ;
wire copt_net_150 ;
wire copt_net_151 ;
wire copt_net_155 ;
wire copt_net_156 ;
wire copt_net_157 ;
wire copt_net_158 ;
wire copt_net_159 ;
wire copt_net_160 ;
wire copt_net_161 ;
wire copt_net_162 ;
wire copt_net_163 ;
wire copt_net_164 ;
wire copt_net_165 ;
wire copt_net_166 ;
wire copt_net_168 ;
wire copt_net_176 ;
wire copt_net_177 ;
wire copt_net_181 ;
wire copt_net_182 ;
wire copt_net_183 ;
wire copt_net_184 ;
wire copt_net_185 ;
wire copt_net_190 ;
wire copt_net_191 ;
wire copt_net_193 ;
wire copt_net_199 ;
wire copt_net_200 ;
wire copt_net_201 ;
wire copt_net_202 ;
wire copt_net_204 ;
wire copt_net_205 ;
wire copt_net_207 ;
wire copt_net_223 ;
wire copt_net_224 ;
wire copt_net_225 ;
wire copt_net_232 ;
wire copt_net_215 ;
wire copt_net_216 ;
wire copt_net_217 ;
wire copt_net_220 ;
wire copt_net_221 ;
wire copt_net_227 ;
wire copt_net_229 ;
wire copt_net_233 ;
wire copt_net_234 ;
wire copt_net_235 ;
wire copt_net_236 ;
wire copt_net_237 ;
wire copt_net_238 ;
wire copt_net_239 ;
wire copt_net_240 ;
wire copt_net_241 ;
wire copt_net_243 ;
wire copt_net_245 ;
wire copt_net_247 ;
wire copt_net_248 ;
wire copt_net_249 ;
wire copt_net_250 ;
wire copt_net_251 ;
wire copt_net_256 ;
wire copt_net_259 ;
wire copt_net_260 ;
wire copt_net_261 ;
wire copt_net_262 ;
wire copt_net_263 ;
wire copt_net_267 ;
wire copt_net_268 ;
wire copt_net_274 ;
wire copt_net_275 ;
wire copt_net_281 ;
wire copt_net_287 ;
wire copt_net_288 ;
wire copt_net_289 ;
wire copt_net_290 ;
wire copt_net_291 ;
wire copt_net_292 ;
wire copt_net_306 ;
wire copt_net_307 ;
wire copt_net_308 ;
wire copt_net_309 ;
wire copt_net_297 ;
wire copt_net_298 ;
wire copt_net_299 ;
wire copt_net_300 ;
wire copt_net_302 ;
wire copt_net_303 ;
wire copt_net_305 ;
wire copt_net_310 ;
wire copt_net_333 ;
wire copt_net_712 ;
wire copt_net_327 ;
wire copt_net_314 ;
wire copt_net_315 ;
wire copt_net_316 ;
wire copt_net_317 ;
wire copt_net_328 ;
wire copt_net_322 ;
wire copt_net_323 ;
wire copt_net_334 ;
wire copt_net_335 ;
wire copt_net_346 ;
wire copt_net_347 ;
wire copt_net_348 ;
wire copt_net_349 ;
wire copt_net_351 ;
wire copt_net_352 ;
wire copt_net_353 ;
wire copt_net_354 ;
wire copt_net_362 ;
wire copt_net_363 ;
wire copt_net_364 ;
wire copt_net_365 ;
wire copt_net_360 ;
wire copt_net_361 ;
wire copt_net_366 ;
wire copt_net_369 ;
wire copt_net_370 ;
wire copt_net_371 ;
wire copt_net_372 ;
wire copt_net_393 ;
wire copt_net_379 ;
wire copt_net_380 ;
wire copt_net_381 ;
wire copt_net_404 ;
wire copt_net_406 ;
wire copt_net_407 ;
wire copt_net_409 ;
wire copt_net_410 ;
wire copt_net_412 ;
wire copt_net_413 ;
wire copt_net_414 ;
wire copt_net_420 ;
wire copt_net_423 ;
wire copt_net_424 ;
wire copt_net_427 ;
wire copt_net_428 ;
wire copt_net_431 ;
wire copt_net_435 ;
wire copt_net_436 ;
wire copt_net_437 ;
wire copt_net_438 ;
wire copt_net_441 ;
wire copt_net_444 ;
wire copt_net_445 ;
wire copt_net_446 ;
wire copt_net_447 ;
wire copt_net_448 ;
wire copt_net_449 ;
wire copt_net_450 ;
wire copt_net_451 ;
wire copt_net_452 ;
wire copt_net_455 ;
wire copt_net_456 ;
wire copt_net_459 ;
wire copt_net_461 ;
wire copt_net_462 ;
wire copt_net_463 ;
wire copt_net_713 ;
wire copt_net_465 ;
wire copt_net_493 ;
wire copt_net_494 ;
wire copt_net_487 ;
wire copt_net_470 ;
wire copt_net_476 ;
wire copt_net_477 ;
wire copt_net_478 ;
wire copt_net_479 ;
wire copt_net_488 ;
wire copt_net_489 ;
wire copt_net_490 ;
wire copt_net_495 ;
wire copt_net_497 ;
wire copt_net_498 ;
wire copt_net_499 ;
wire copt_net_500 ;
wire copt_net_502 ;
wire copt_net_508 ;
wire copt_net_509 ;
wire copt_net_510 ;
wire copt_net_511 ;
wire copt_net_512 ;
wire copt_net_513 ;
wire copt_net_518 ;
wire copt_net_519 ;
wire copt_net_520 ;
wire copt_net_521 ;
wire copt_net_792 ;
wire copt_net_523 ;
wire copt_net_535 ;
wire copt_net_527 ;
wire copt_net_528 ;
wire copt_net_529 ;
wire copt_net_536 ;
wire copt_net_537 ;
wire tmp_net538 ;
wire tmp_net539 ;
wire tmp_net542 ;
wire tmp_net544 ;
wire tmp_net546 ;
wire tmp_net547 ;
wire tmp_net548 ;
wire tmp_net549 ;
wire tmp_net550 ;
wire tmp_net551 ;
wire tmp_net552 ;
wire tmp_net554 ;
wire tmp_net555 ;
wire tmp_net556 ;
wire tmp_net557 ;
wire tmp_net558 ;
wire tmp_net559 ;
wire tmp_net560 ;
wire tmp_net561 ;
wire tmp_net562 ;
wire tmp_net563 ;
wire tmp_net565 ;
wire tmp_net566 ;
wire tmp_net567 ;
wire tmp_net568 ;
wire tmp_net569 ;
wire tmp_net570 ;
wire tmp_net571 ;
wire tmp_net572 ;
wire tmp_net573 ;
wire tmp_net574 ;
wire tmp_net575 ;
wire tmp_net576 ;
wire tmp_net577 ;
wire tmp_net578 ;
wire tmp_net579 ;
wire tmp_net581 ;
wire tmp_net582 ;
wire tmp_net583 ;
wire tmp_net584 ;
wire tmp_net585 ;
wire tmp_net586 ;
wire tmp_net587 ;
wire tmp_net588 ;
wire tmp_net589 ;
wire tmp_net590 ;
wire tmp_net591 ;
wire tmp_net592 ;
wire tmp_net593 ;
wire tmp_net594 ;
wire tmp_net595 ;
wire tmp_net596 ;
wire tmp_net597 ;
wire tmp_net598 ;
wire tmp_net600 ;
wire tmp_net601 ;
wire tmp_net602 ;
wire tmp_net603 ;
wire tmp_net604 ;
wire tmp_net605 ;
wire tmp_net606 ;
wire tmp_net607 ;
wire tmp_net608 ;
wire tmp_net609 ;
wire tmp_net610 ;
wire tmp_net611 ;
wire tmp_net612 ;
wire tmp_net613 ;
wire tmp_net614 ;
wire tmp_net615 ;
wire tmp_net616 ;
wire tmp_net617 ;
wire tmp_net618 ;
wire tmp_net619 ;
wire tmp_net620 ;
wire tmp_net621 ;
wire tmp_net622 ;
wire tmp_net623 ;
wire tmp_net624 ;
wire tmp_net625 ;
wire tmp_net626 ;
wire tmp_net627 ;
wire tmp_net628 ;
wire tmp_net629 ;
wire tmp_net630 ;
wire tmp_net631 ;
wire tmp_net632 ;
wire tmp_net633 ;
wire tmp_net634 ;
wire tmp_net635 ;
wire tmp_net636 ;
wire tmp_net637 ;
wire tmp_net638 ;
wire tmp_net639 ;
wire tmp_net640 ;
wire tmp_net641 ;
wire tmp_net642 ;
wire tmp_net643 ;
wire tmp_net644 ;
wire tmp_net645 ;
wire tmp_net646 ;
wire tmp_net647 ;
wire tmp_net648 ;
wire tmp_net649 ;
wire tmp_net650 ;
wire tmp_net651 ;
wire tmp_net652 ;
wire tmp_net653 ;
wire tmp_net654 ;
wire tmp_net655 ;
wire tmp_net656 ;
wire tmp_net657 ;
wire tmp_net658 ;
wire tmp_net659 ;
wire tmp_net660 ;
wire tmp_net661 ;
wire tmp_net662 ;
wire tmp_net663 ;
wire tmp_net664 ;
wire tmp_net665 ;
wire tmp_net666 ;
wire tmp_net667 ;
wire tmp_net668 ;
wire tmp_net669 ;
wire tmp_net670 ;
wire tmp_net671 ;
wire tmp_net672 ;
wire tmp_net673 ;
wire tmp_net674 ;
wire tmp_net675 ;
wire tmp_net676 ;
wire tmp_net677 ;
wire tmp_net678 ;
wire tmp_net679 ;
wire copt_net_793 ;
wire copt_net_716 ;
wire copt_net_717 ;
wire copt_net_719 ;
wire copt_net_721 ;
wire copt_net_722 ;
wire copt_net_723 ;
wire copt_net_724 ;
wire copt_net_725 ;
wire copt_net_726 ;
wire copt_net_728 ;
wire copt_net_729 ;
wire copt_net_730 ;
wire copt_net_731 ;
wire copt_net_732 ;
wire copt_net_733 ;
wire copt_net_734 ;
wire copt_net_735 ;
wire copt_net_736 ;
wire copt_net_737 ;
wire copt_net_738 ;
wire copt_net_739 ;
wire copt_net_740 ;
wire copt_net_742 ;
wire copt_net_743 ;
wire copt_net_744 ;
wire copt_net_745 ;
wire copt_net_746 ;
wire copt_net_747 ;
wire copt_net_748 ;
wire copt_net_749 ;
wire copt_net_750 ;
wire copt_net_751 ;
wire copt_net_752 ;
wire copt_net_753 ;
wire copt_net_794 ;
wire copt_net_755 ;
wire copt_net_756 ;
wire copt_net_758 ;
wire copt_net_759 ;
wire copt_net_760 ;
wire copt_net_761 ;
wire copt_net_763 ;
wire copt_net_764 ;
wire copt_net_765 ;
wire copt_net_767 ;
wire copt_net_768 ;
wire copt_net_769 ;
wire copt_net_809 ;
wire copt_net_771 ;
wire copt_net_810 ;
wire copt_net_773 ;
wire copt_net_774 ;
wire copt_net_775 ;
wire copt_net_776 ;
wire copt_net_777 ;
wire copt_net_778 ;
wire copt_net_797 ;
wire copt_net_780 ;
wire copt_net_781 ;
wire copt_net_782 ;
wire copt_net_783 ;
wire copt_net_784 ;
wire copt_net_785 ;
wire copt_net_786 ;
wire copt_net_811 ;
wire copt_net_799 ;
wire copt_net_800 ;
wire copt_net_801 ;
wire copt_net_802 ;
wire copt_net_804 ;
wire copt_net_812 ;
wire copt_net_813 ;
wire copt_net_807 ;
wire copt_net_808 ;
wire copt_net_814 ;
wire copt_net_815 ;
wire copt_net_816 ;
wire copt_net_817 ;
wire copt_net_818 ;
wire copt_net_819 ;
wire copt_net_820 ;
wire copt_net_822 ;
wire copt_net_823 ;
wire copt_net_824 ;
wire copt_net_825 ;
wire copt_net_826 ;
wire copt_net_827 ;
wire copt_net_829 ;
wire copt_net_830 ;
wire copt_net_831 ;
wire copt_net_832 ;
wire copt_net_833 ;
wire copt_net_834 ;
wire copt_net_835 ;
wire copt_net_836 ;
wire copt_net_837 ;
wire copt_net_838 ;
wire copt_net_839 ;
wire copt_net_840 ;
wire copt_net_841 ;
wire copt_net_842 ;
wire copt_net_843 ;
wire copt_net_844 ;
wire copt_net_845 ;
wire copt_net_846 ;
wire copt_net_847 ;
wire copt_net_848 ;

SAEDRVT14_FDP_V2LP_1 \state_reg[1] ( .D ( copt_net_685 ) , .CK ( clk ) , 
    .Q ( state[1] ) , .QN ( n2016 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDP_V2LP_2 \enc/stepSize_reg[14] ( .D ( \enc/N1106 ) , 
    .CK ( slow_clk ) , .Q ( \enc/stepSize [14] ) , .QN ( n2019 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDP_V2LP_2 \enc/stepSize_reg[13] ( .D ( \enc/N1105 ) , 
    .CK ( slow_clk ) , .Q ( \enc/stepSize [13] ) , .QN ( n2007 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDP_V2LP_2 \enc/stepSize_reg[4] ( .D ( \enc/N1096 ) , 
    .CK ( slow_clk ) , .Q ( \enc/stepSize [4] ) , .QN ( n2015 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDP_V2LP_2 \enc/stepSize_reg[12] ( .D ( \enc/N1104 ) , 
    .CK ( slow_clk ) , .Q ( \enc/stepSize [12] ) , .QN ( n2011 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDP_V2LP_2 \enc/stepSize_reg[9] ( .D ( n772 ) , .CK ( slow_clk ) , 
    .Q ( \enc/stepSize [9] ) , .QN ( n2018 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDP_V2LP_2 \enc/stepSize_reg[10] ( .D ( n771 ) , .CK ( slow_clk ) , 
    .Q ( \enc/stepSize [10] ) , .QN ( n2017 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDP_V2LP_2 \enc/stepSize_reg[1] ( .D ( \enc/N1093 ) , 
    .CK ( slow_clk ) , .Q ( \enc/stepSize [1] ) , .QN ( n2006 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDP_V2LP_2 \enc/stepSize_reg[0] ( .D ( \enc/N1092 ) , 
    .CK ( slow_clk ) , .Q ( \enc/stepSize [0] ) , .QN ( n2020 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDP_V2LP_2 \enc/stepSize_reg[11] ( .D ( n773 ) , .CK ( slow_clk ) , 
    .Q ( \enc/stepSize [11] ) , .QN ( n2012 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDP_V2LP_2 \enc/stepSize_reg[7] ( .D ( n770 ) , .CK ( slow_clk ) , 
    .Q ( \enc/stepSize [7] ) , .QN ( n2013 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDP_V2LP_2 \enc/stepSize_reg[8] ( .D ( n774 ) , .CK ( slow_clk ) , 
    .Q ( \enc/stepSize [8] ) , .QN ( n2009 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDP_V2LP_2 \enc/stepSize_reg[2] ( .D ( \enc/N1094 ) , 
    .CK ( slow_clk ) , .Q ( \enc/stepSize [2] ) , .QN ( n2010 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDP_V2LP_2 \enc/stepSize_reg[6] ( .D ( n769 ) , .CK ( slow_clk ) , 
    .Q ( \enc/stepSize [6] ) , .QN ( n2008 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ADDF_V1_0P5 \DP_OP_85J1_126_8300/U4 ( 
    .A ( \DP_OP_85J1_126_8300/n4 ) , .B ( \enc/dequantSamp [15] ) , 
    .CI ( \C1/Z_15 ) , .CO ( \DP_OP_85J1_126_8300/n3 ) , 
    .S ( \C40/DATA2_15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ADDF_V1_0P5 \DP_OP_85J1_126_8300/U3 ( 
    .A ( \DP_OP_85J1_126_8300/n3 ) , .B ( \enc/dequantSamp [16] ) , 
    .CI ( \C1/Z_16 ) , .CO ( \DP_OP_85J1_126_8300/n2 ) , 
    .S ( \C40/DATA2_16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ADDF_V1_0P5 \DP_OP_85J1_126_8300/U2 ( 
    .A ( \DP_OP_85J1_126_8300/n2 ) , .B ( \enc/dequantSamp [17] ) , 
    .CI ( \C1/Z_17 ) , .CO ( \DP_OP_85J1_126_8300/n1 ) , 
    .S ( \C40/DATA2_17 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ADDF_V1_0P5 \intadd_2/U4 ( .A ( \intadd_2/n4 ) , 
    .B ( \enc/prePCM [2] ) , .CI ( \intadd_2/B[2] ) , .CO ( \intadd_2/n3 ) , 
    .S ( \intadd_2/SUM[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ADDF_V1_0P5 \intadd_2/U3 ( .A ( \intadd_2/n3 ) , 
    .B ( \enc/prePCM [2] ) , .CI ( \intadd_2/B[3] ) , .CO ( \intadd_2/n2 ) , 
    .S ( \intadd_2/SUM[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ADDF_V1_0P5 \DP_OP_52J1_123_6716/U20 ( 
    .A ( \DP_OP_52J1_123_6716/n20 ) , .B ( \DP_OP_52J1_123_6716/n42 ) , 
    .CI ( \enc/predictorSamp [1] ) , .CO ( \DP_OP_52J1_123_6716/n19 ) , 
    .S ( \enc/prePredSamp [1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ADDF_V1_0P5 \DP_OP_52J1_123_6716/U19 ( 
    .A ( \DP_OP_52J1_123_6716/n19 ) , .B ( \DP_OP_52J1_123_6716/n41 ) , 
    .CI ( \enc/predictorSamp [2] ) , .CO ( \DP_OP_52J1_123_6716/n18 ) , 
    .S ( \enc/prePredSamp [2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ADDF_V1_0P5 \DP_OP_52J1_123_6716/U18 ( 
    .A ( \DP_OP_52J1_123_6716/n18 ) , .B ( \DP_OP_52J1_123_6716/n40 ) , 
    .CI ( \enc/predictorSamp [3] ) , .CO ( \DP_OP_52J1_123_6716/n17 ) , 
    .S ( \enc/prePredSamp [3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ADDF_V1_0P5 \DP_OP_52J1_123_6716/U17 ( 
    .A ( \DP_OP_52J1_123_6716/n17 ) , .B ( \DP_OP_52J1_123_6716/n39 ) , 
    .CI ( \enc/predictorSamp [4] ) , .CO ( \DP_OP_52J1_123_6716/n16 ) , 
    .S ( \enc/prePredSamp [4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ADDF_V1_0P5 \DP_OP_52J1_123_6716/U16 ( 
    .A ( \DP_OP_52J1_123_6716/n16 ) , .B ( \DP_OP_52J1_123_6716/n38 ) , 
    .CI ( \enc/predictorSamp [5] ) , .CO ( \DP_OP_52J1_123_6716/n15 ) , 
    .S ( \enc/prePredSamp [5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ADDF_V1_0P5 \DP_OP_52J1_123_6716/U15 ( 
    .A ( \DP_OP_52J1_123_6716/n15 ) , .B ( \DP_OP_52J1_123_6716/n37 ) , 
    .CI ( \enc/predictorSamp [6] ) , .CO ( \DP_OP_52J1_123_6716/n14 ) , 
    .S ( \enc/prePredSamp [6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ADDF_V1_0P5 \DP_OP_52J1_123_6716/U14 ( 
    .A ( \DP_OP_52J1_123_6716/n14 ) , .B ( \DP_OP_52J1_123_6716/n36 ) , 
    .CI ( \enc/predictorSamp [7] ) , .CO ( \DP_OP_52J1_123_6716/n13 ) , 
    .S ( \enc/prePredSamp [7] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ADDF_V1_0P5 \DP_OP_52J1_123_6716/U13 ( 
    .A ( \DP_OP_52J1_123_6716/n13 ) , .B ( \DP_OP_52J1_123_6716/n35 ) , 
    .CI ( \enc/predictorSamp [8] ) , .CO ( \DP_OP_52J1_123_6716/n12 ) , 
    .S ( \enc/prePredSamp [8] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ADDF_V1_0P5 \DP_OP_52J1_123_6716/U12 ( 
    .A ( \DP_OP_52J1_123_6716/n12 ) , .B ( \DP_OP_52J1_123_6716/n34 ) , 
    .CI ( \enc/predictorSamp [9] ) , .CO ( \DP_OP_52J1_123_6716/n11 ) , 
    .S ( \enc/prePredSamp [9] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ADDF_V1_0P5 \DP_OP_52J1_123_6716/U11 ( 
    .A ( \DP_OP_52J1_123_6716/n11 ) , .B ( \DP_OP_52J1_123_6716/n33 ) , 
    .CI ( \enc/predictorSamp [10] ) , .CO ( \DP_OP_52J1_123_6716/n10 ) , 
    .S ( \enc/prePredSamp [10] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ADDF_V1_0P5 \DP_OP_52J1_123_6716/U10 ( 
    .A ( \DP_OP_52J1_123_6716/n10 ) , .B ( \DP_OP_52J1_123_6716/n32 ) , 
    .CI ( \enc/predictorSamp [11] ) , .CO ( \DP_OP_52J1_123_6716/n9 ) , 
    .S ( \enc/prePredSamp [11] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ADDF_V1_0P5 \DP_OP_52J1_123_6716/U9 ( 
    .A ( \DP_OP_52J1_123_6716/n9 ) , .B ( \DP_OP_52J1_123_6716/n31 ) , 
    .CI ( \enc/predictorSamp [12] ) , .CO ( \DP_OP_52J1_123_6716/n8 ) , 
    .S ( \enc/prePredSamp [12] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ADDF_V1_0P5 \DP_OP_52J1_123_6716/U8 ( 
    .A ( \DP_OP_52J1_123_6716/n8 ) , .B ( \DP_OP_52J1_123_6716/n30 ) , 
    .CI ( \enc/predictorSamp [13] ) , .CO ( \DP_OP_52J1_123_6716/n7 ) , 
    .S ( \enc/prePredSamp [13] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ADDF_V1_0P5 \DP_OP_52J1_123_6716/U7 ( 
    .A ( \DP_OP_52J1_123_6716/n7 ) , .B ( \DP_OP_52J1_123_6716/n29 ) , 
    .CI ( \enc/predictorSamp [14] ) , .CO ( \DP_OP_52J1_123_6716/n6 ) , 
    .S ( \enc/prePredSamp [14] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ADDF_V1_0P5 \DP_OP_52J1_123_6716/U6 ( 
    .A ( \DP_OP_52J1_123_6716/n6 ) , .B ( \DP_OP_52J1_123_6716/n28 ) , 
    .CI ( \enc/predictorSamp [15] ) , .CO ( \DP_OP_52J1_123_6716/n5 ) , 
    .S ( \enc/prePredSamp [15] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ADDF_V1_0P5 \DP_OP_52J1_123_6716/U5 ( 
    .A ( \DP_OP_52J1_123_6716/n5 ) , .B ( \DP_OP_52J1_123_6716/n27 ) , 
    .CI ( \enc/predictorSamp [16] ) , .CO ( \DP_OP_52J1_123_6716/n4 ) , 
    .S ( \enc/prePredSamp [16] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ADDF_V1_0P5 \DP_OP_52J1_123_6716/U4 ( 
    .A ( \DP_OP_52J1_123_6716/n4 ) , .B ( \DP_OP_52J1_123_6716/n26 ) , 
    .CI ( \enc/predictorSamp [17] ) , .CO ( \DP_OP_52J1_123_6716/n3 ) , 
    .S ( \enc/prePredSamp [17] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ADDF_V1_0P5 \DP_OP_52J1_123_6716/U3 ( 
    .A ( \DP_OP_52J1_123_6716/n3 ) , .B ( \DP_OP_52J1_123_6716/n25 ) , 
    .CI ( \enc/predictorSamp [18] ) , .CO ( \DP_OP_52J1_123_6716/n2 ) , 
    .S ( \enc/prePredSamp [18] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ADDF_V1_0P5 \DP_OP_85J1_126_8300/U16 ( 
    .A ( \DP_OP_85J1_126_8300/n16 ) , .B ( \enc/dequantSamp [3] ) , 
    .CI ( \C1/Z_3 ) , .CO ( \DP_OP_85J1_126_8300/n15 ) , .S ( \C40/DATA2_3 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ADDF_V1_0P5 \DP_OP_85J1_126_8300/U15 ( 
    .A ( \DP_OP_85J1_126_8300/n15 ) , .B ( \enc/dequantSamp [4] ) , 
    .CI ( \C1/Z_4 ) , .CO ( \DP_OP_85J1_126_8300/n14 ) , .S ( \C40/DATA2_4 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ADDF_V1_0P5 \DP_OP_85J1_126_8300/U14 ( 
    .A ( \DP_OP_85J1_126_8300/n14 ) , .B ( \enc/dequantSamp [5] ) , 
    .CI ( \C1/Z_5 ) , .CO ( \DP_OP_85J1_126_8300/n13 ) , .S ( \C40/DATA2_5 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ADDF_V1_0P5 \DP_OP_85J1_126_8300/U13 ( 
    .A ( \DP_OP_85J1_126_8300/n13 ) , .B ( \enc/dequantSamp [6] ) , 
    .CI ( \C1/Z_6 ) , .CO ( \DP_OP_85J1_126_8300/n12 ) , .S ( \C40/DATA2_6 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ADDF_V1_0P5 \DP_OP_85J1_126_8300/U12 ( 
    .A ( \DP_OP_85J1_126_8300/n12 ) , .B ( \enc/dequantSamp [7] ) , 
    .CI ( \C1/Z_7 ) , .CO ( \DP_OP_85J1_126_8300/n11 ) , .S ( \C40/DATA2_7 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ADDF_V1_0P5 \DP_OP_85J1_126_8300/U11 ( 
    .A ( \DP_OP_85J1_126_8300/n11 ) , .B ( \enc/dequantSamp [8] ) , 
    .CI ( \C1/Z_8 ) , .CO ( \DP_OP_85J1_126_8300/n10 ) , .S ( \C40/DATA2_8 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ADDF_V1_0P5 \DP_OP_85J1_126_8300/U10 ( 
    .A ( \DP_OP_85J1_126_8300/n10 ) , .B ( \enc/dequantSamp [9] ) , 
    .CI ( \C1/Z_9 ) , .CO ( \DP_OP_85J1_126_8300/n9 ) , .S ( \C40/DATA2_9 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ADDF_V1_0P5 \DP_OP_85J1_126_8300/U9 ( 
    .A ( \DP_OP_85J1_126_8300/n9 ) , .B ( \enc/dequantSamp [10] ) , 
    .CI ( \C1/Z_10 ) , .CO ( \DP_OP_85J1_126_8300/n8 ) , 
    .S ( \C40/DATA2_10 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ADDF_V1_0P5 \DP_OP_85J1_126_8300/U8 ( 
    .A ( \DP_OP_85J1_126_8300/n8 ) , .B ( \enc/dequantSamp [11] ) , 
    .CI ( \C1/Z_11 ) , .CO ( \DP_OP_85J1_126_8300/n7 ) , 
    .S ( \C40/DATA2_11 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ADDF_V1_0P5 \DP_OP_85J1_126_8300/U7 ( 
    .A ( \DP_OP_85J1_126_8300/n7 ) , .B ( \enc/dequantSamp [12] ) , 
    .CI ( \C1/Z_12 ) , .CO ( \DP_OP_85J1_126_8300/n6 ) , 
    .S ( \C40/DATA2_12 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ADDF_V1_0P5 \DP_OP_85J1_126_8300/U6 ( 
    .A ( \DP_OP_85J1_126_8300/n6 ) , .B ( \enc/dequantSamp [13] ) , 
    .CI ( \C1/Z_13 ) , .CO ( \DP_OP_85J1_126_8300/n5 ) , 
    .S ( \C40/DATA2_13 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ADDF_V1_0P5 \DP_OP_85J1_126_8300/U5 ( 
    .A ( \DP_OP_85J1_126_8300/n5 ) , .B ( \enc/dequantSamp [14] ) , 
    .CI ( \C1/Z_14 ) , .CO ( \DP_OP_85J1_126_8300/n4 ) , 
    .S ( \C40/DATA2_14 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \counter_reg[1] ( .D ( N45 ) , .CK ( clk ) , 
    .RD ( ZBUF_38_0 ) , .Q ( counter[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/prePCM_reg[1] ( .D ( n739 ) , 
    .CK ( slow_clk ) , .RD ( n2024 ) , .Q ( \enc/prePCM [1] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/predictorSamp_reg[12] ( .D ( n706 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_859_0 ) , .Q ( \enc/predictorSamp [12] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/dequantSamp_reg[5] ( .D ( n733 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_4408_0 ) , .Q ( \enc/dequantSamp [5] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/sampDiff_reg[7] ( .D ( n755 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_1666_0 ) , .Q ( \enc/sampDiff [7] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out3_reg[2] ( .D ( copt_net_811 ) , 
    .CK ( clk ) , .RD ( ZBUF_6565_0 ) , .Q ( \cic/add_cast_5 [2] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out3_reg[17] ( .D ( n680 ) , 
    .CK ( clk ) , .RD ( ZBUF_3647_0 ) , .Q ( \cic/add_cast_5 [17] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out2_reg[12] ( .D ( n665 ) , 
    .CK ( clk ) , .RD ( n2024 ) , .Q ( \cic/add_cast_3 [12] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out1_reg[7] ( .D ( n650 ) , 
    .CK ( clk ) , .RD ( ZBUF_6565_0 ) , .Q ( \cic/add_cast_1 [7] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/cur_count_reg[1] ( .D ( copt_net_711 ) , 
    .CK ( clk ) , .RD ( ZBUF_3647_0 ) , .Q ( \cic/cur_count [1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_2 \cic/output_register_reg[16] ( .D ( n619 ) , 
    .CK ( clk ) , .RD ( ZBUF_1666_0 ) , .Q ( filter_out[12] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/diff3_reg[11] ( .D ( n604 ) , .CK ( clk ) , 
    .RD ( ZBUF_3647_0 ) , .Q ( \cic/sub_cast_5 [11] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_2 \cic/diff2_reg[6] ( .D ( n589 ) , .CK ( clk ) , 
    .RD ( n2024 ) , .Q ( \cic/sub_cast_3 [6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/diff1_reg[1] ( .D ( copt_net_844 ) , 
    .CK ( clk ) , .RD ( ZBUF_6565_0 ) , .Q ( \cic/sub_cast_1 [1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_1 \cic/diff1_reg[16] ( .D ( n559 ) , .CK ( clk ) , 
    .RD ( ZBUF_1666_0 ) , .Q ( \cic/sub_cast_1 [16] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/sampDiff_reg[9] ( .D ( n753 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_229_0 ) , .Q ( \enc/sampDiff [9] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDP_V2LP_1 \state_reg[0] ( .D ( copt_net_791 ) , .CK ( clk ) , 
    .Q ( n2022 ) , .QN ( state[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/dequantSamp_reg[1] ( .D ( n737 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_4408_0 ) , .Q ( \enc/dequantSamp [1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \counter_reg[2] ( .D ( copt_net_814 ) , 
    .CK ( clk ) , .RD ( ZBUF_38_0 ) , .Q ( counter[2] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \counter_reg[3] ( .D ( copt_net_788 ) , 
    .CK ( clk ) , .RD ( n2024 ) , .Q ( counter[3] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_1 \counter_reg[4] ( .D ( copt_net_810 ) , .CK ( clk ) , 
    .RD ( n2024 ) , .Q ( counter[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_2 \counter_reg[5] ( .D ( copt_net_823 ) , .CK ( clk ) , 
    .RD ( n2024 ) , .Q ( counter[5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_2 \counter_reg[6] ( .D ( copt_net_697 ) , .CK ( clk ) , 
    .RD ( n2024 ) , .Q ( counter[6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \counter_reg[0] ( .D ( copt_net_792 ) , 
    .CK ( clk ) , .RD ( n2024 ) , .Q ( counter[0] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_2 oldValue_reg ( .D ( n767 ) , .CK ( clk ) , 
    .RD ( n2024 ) , .Q ( oldValue ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_2 inValid_reg ( .D ( copt_net_802 ) , .CK ( clk ) , 
    .RD ( n2024 ) , .Q ( inValid ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/input_register_reg[0] ( .D ( n765 ) , 
    .CK ( clk ) , .RD ( n2024 ) , .Q ( \cic/input_register [0] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/pcmSq_reg[2] ( .D ( n764 ) , .CK ( slow_clk ) , 
    .RD ( n2024 ) , .Q ( \enc/pcmSq [2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/pcmSq_reg[1] ( .D ( n761 ) , .CK ( slow_clk ) , 
    .RD ( n2024 ) , .Q ( \enc/pcmSq [1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/prePCM_reg[0] ( .D ( n741 ) , 
    .CK ( slow_clk ) , .RD ( n2024 ) , .Q ( \enc/prePCM [0] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/pcmSq_reg[0] ( .D ( n762 ) , .CK ( slow_clk ) , 
    .RD ( n2024 ) , .Q ( \enc/pcmSq [0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/doneCounter_reg ( .D ( n763 ) , 
    .CK ( slow_clk ) , .RD ( n2024 ) , .Q ( \enc/doneCounter ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/outValid_reg ( .D ( n2025 ) , 
    .CK ( slow_clk ) , .RD ( n2024 ) , .Q ( outValid ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/predictorSamp_reg[18] ( .D ( n719 ) , 
    .CK ( slow_clk ) , .RD ( n2024 ) , .Q ( \enc/predictorSamp [18] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/predictorSamp_reg[0] ( .D ( n718 ) , 
    .CK ( slow_clk ) , .RD ( n2024 ) , .Q ( \enc/predictorSamp [0] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/predictorSamp_reg[1] ( .D ( n717 ) , 
    .CK ( slow_clk ) , .RD ( n2024 ) , .Q ( \enc/predictorSamp [1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/predictorSamp_reg[2] ( .D ( n716 ) , 
    .CK ( slow_clk ) , .RD ( n2024 ) , .Q ( \enc/predictorSamp [2] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/predictorSamp_reg[3] ( .D ( n715 ) , 
    .CK ( slow_clk ) , .RD ( n2024 ) , .Q ( \enc/predictorSamp [3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/predictorSamp_reg[4] ( .D ( n714 ) , 
    .CK ( slow_clk ) , .RD ( n2024 ) , .Q ( \enc/predictorSamp [4] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/predictorSamp_reg[5] ( .D ( n713 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_24119_0 ) , .Q ( \enc/predictorSamp [5] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/predictorSamp_reg[6] ( .D ( n712 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_24119_0 ) , .Q ( \enc/predictorSamp [6] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/predictorSamp_reg[7] ( .D ( n711 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_1666_0 ) , .Q ( \enc/predictorSamp [7] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/predictorSamp_reg[8] ( .D ( n710 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_1666_0 ) , .Q ( \enc/predictorSamp [8] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/predictorSamp_reg[9] ( .D ( n709 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_859_0 ) , .Q ( \enc/predictorSamp [9] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/predictorSamp_reg[10] ( .D ( n708 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_859_0 ) , .Q ( \enc/predictorSamp [10] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/predictorSamp_reg[11] ( .D ( n707 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_859_0 ) , .Q ( \enc/predictorSamp [11] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/predictorSamp_reg[13] ( .D ( n705 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_859_0 ) , .Q ( \enc/predictorSamp [13] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/predictorSamp_reg[14] ( .D ( n704 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_859_0 ) , .Q ( \enc/predictorSamp [14] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/predictorSamp_reg[15] ( .D ( n703 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_1666_0 ) , .Q ( \enc/predictorSamp [15] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/predictorSamp_reg[16] ( .D ( n702 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_24119_0 ) , .Q ( \enc/predictorSamp [16] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/predictorSamp_reg[17] ( .D ( n701 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_24119_0 ) , .Q ( \enc/predictorSamp [17] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/dequantSamp_reg[15] ( .D ( n723 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_4408_0 ) , .Q ( \enc/dequantSamp [15] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/dequantSamp_reg[16] ( .D ( n722 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_4408_0 ) , .Q ( \enc/dequantSamp [16] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/dequantSamp_reg[17] ( .D ( n721 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_4408_0 ) , .Q ( \enc/dequantSamp [17] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/dequantSamp_reg[18] ( .D ( n720 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_4408_0 ) , .Q ( \enc/dequantSamp [18] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/dequantSamp_reg[0] ( .D ( n738 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_4408_0 ) , .Q ( \C40/DATA2_0 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/dequantSamp_reg[2] ( .D ( n736 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_4408_0 ) , .Q ( \enc/dequantSamp [2] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/dequantSamp_reg[3] ( .D ( n735 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_4408_0 ) , .Q ( \enc/dequantSamp [3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/dequantSamp_reg[4] ( .D ( n734 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_4408_0 ) , .Q ( \enc/dequantSamp [4] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/dequantSamp_reg[6] ( .D ( n732 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_4408_0 ) , .Q ( \enc/dequantSamp [6] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/dequantSamp_reg[7] ( .D ( n731 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_4408_0 ) , .Q ( \enc/dequantSamp [7] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/dequantSamp_reg[8] ( .D ( n730 ) , 
    .CK ( slow_clk ) , .RD ( n2024 ) , .Q ( \enc/dequantSamp [8] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/dequantSamp_reg[9] ( .D ( n729 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_859_0 ) , .Q ( \enc/dequantSamp [9] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/dequantSamp_reg[10] ( .D ( n728 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_859_0 ) , .Q ( \enc/dequantSamp [10] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/dequantSamp_reg[11] ( .D ( n727 ) , 
    .CK ( slow_clk ) , .RD ( n2024 ) , .Q ( \enc/dequantSamp [11] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/dequantSamp_reg[12] ( .D ( n726 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_859_0 ) , .Q ( \enc/dequantSamp [12] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/dequantSamp_reg[13] ( .D ( n725 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_859_0 ) , .Q ( \enc/dequantSamp [13] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/dequantSamp_reg[14] ( .D ( n724 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_859_0 ) , .Q ( \enc/dequantSamp [14] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/sampDiff_reg[2] ( .D ( n760 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_4408_0 ) , .Q ( \enc/sampDiff [2] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/sampDiff_reg[3] ( .D ( n759 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_24119_0 ) , .Q ( \enc/sampDiff [3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/sampDiff_reg[4] ( .D ( n758 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_24119_0 ) , .Q ( \enc/sampDiff [4] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/sampDiff_reg[5] ( .D ( n757 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_24119_0 ) , .Q ( \enc/sampDiff [5] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/sampDiff_reg[6] ( .D ( n756 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_229_0 ) , .Q ( \enc/sampDiff [6] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/sampDiff_reg[8] ( .D ( n754 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_229_0 ) , .Q ( \enc/sampDiff [8] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/sampDiff_reg[10] ( .D ( n752 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_859_0 ) , .Q ( \enc/sampDiff [10] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/sampDiff_reg[11] ( .D ( n751 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_229_0 ) , .Q ( \enc/sampDiff [11] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/sampDiff_reg[12] ( .D ( n750 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_859_0 ) , .Q ( \enc/sampDiff [12] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/sampDiff_reg[14] ( .D ( n748 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_229_0 ) , .Q ( \enc/sampDiff [14] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/sampDiff_reg[15] ( .D ( n747 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_1666_0 ) , .Q ( \enc/sampDiff [15] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/sampDiff_reg[16] ( .D ( n746 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_229_0 ) , .Q ( \enc/sampDiff [16] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/sampDiff_reg[17] ( .D ( n745 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_4408_0 ) , .Q ( \enc/sampDiff [17] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/sampDiff_reg[18] ( .D ( n744 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_229_0 ) , .Q ( \enc/sampDiff [18] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/sampDiff_reg[19] ( .D ( n743 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_4408_0 ) , .Q ( \enc/sampDiff [19] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/sampDiff_reg[0] ( .D ( n700 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_4408_0 ) , .Q ( \enc/N178 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/sampDiff_reg[1] ( .D ( n699 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_229_0 ) , .Q ( \enc/sampDiff [1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2_1 \cic/section_out3_reg[0] ( .D ( copt_net_817 ) , 
    .CK ( clk ) , .RD ( ZBUF_38_0 ) , .Q ( \cic/add_cast_5 [0] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2_2 \cic/section_out3_reg[1] ( .D ( copt_net_812 ) , 
    .CK ( clk ) , .RD ( ZBUF_24119_0 ) , .Q ( \cic/add_cast_5 [1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out3_reg[3] ( .D ( copt_net_787 ) , 
    .CK ( clk ) , .RD ( ZBUF_6565_0 ) , .Q ( \cic/add_cast_5 [3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out3_reg[4] ( .D ( copt_net_820 ) , 
    .CK ( clk ) , .RD ( ZBUF_1666_0 ) , .Q ( \cic/add_cast_5 [4] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out3_reg[5] ( .D ( copt_net_837 ) , 
    .CK ( clk ) , .RD ( ZBUF_24119_0 ) , .Q ( \cic/add_cast_5 [5] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out3_reg[6] ( .D ( copt_net_829 ) , 
    .CK ( clk ) , .RD ( ZBUF_6565_0 ) , .Q ( \cic/add_cast_5 [6] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out3_reg[7] ( .D ( n690 ) , 
    .CK ( clk ) , .RD ( ZBUF_3647_0 ) , .Q ( \cic/add_cast_5 [7] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out3_reg[8] ( .D ( copt_net_838 ) , 
    .CK ( clk ) , .RD ( ZBUF_3647_0 ) , .Q ( \cic/add_cast_5 [8] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out3_reg[9] ( .D ( n688 ) , 
    .CK ( clk ) , .RD ( ZBUF_24119_0 ) , .Q ( \cic/add_cast_5 [9] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out3_reg[10] ( .D ( gre_net_856 ) , 
    .CK ( clk ) , .RD ( ZBUF_24119_0 ) , .Q ( \cic/add_cast_5 [10] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out3_reg[11] ( .D ( n686 ) , 
    .CK ( clk ) , .RD ( ZBUF_6565_0 ) , .Q ( \cic/add_cast_5 [11] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out3_reg[12] ( .D ( n685 ) , 
    .CK ( clk ) , .RD ( ZBUF_6565_0 ) , .Q ( \cic/add_cast_5 [12] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out3_reg[13] ( .D ( n684 ) , 
    .CK ( clk ) , .RD ( ZBUF_3647_0 ) , .Q ( \cic/add_cast_5 [13] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out3_reg[14] ( .D ( n683 ) , 
    .CK ( clk ) , .RD ( ZBUF_3647_0 ) , .Q ( \cic/add_cast_5 [14] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out3_reg[15] ( .D ( n682 ) , 
    .CK ( clk ) , .RD ( ZBUF_3647_0 ) , .Q ( \cic/add_cast_5 [15] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_1 \cic/section_out3_reg[16] ( .D ( n681 ) , 
    .CK ( clk ) , .RD ( ZBUF_3647_0 ) , .Q ( \cic/add_cast_5 [16] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out3_reg[18] ( .D ( n679 ) , 
    .CK ( clk ) , .RD ( ZBUF_3647_0 ) , .Q ( \cic/add_cast_5 [18] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out3_reg[19] ( .D ( n678 ) , 
    .CK ( clk ) , .RD ( ZBUF_3647_0 ) , .Q ( \cic/add_cast_5 [19] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2_2 \cic/section_out2_reg[0] ( .D ( n677 ) , .CK ( clk ) , 
    .RD ( n2024 ) , .Q ( \cic/add_cast_3 [0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_2 \cic/section_out2_reg[1] ( .D ( copt_net_816 ) , 
    .CK ( clk ) , .RD ( ZBUF_24119_0 ) , .Q ( \cic/add_cast_3 [1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out2_reg[2] ( .D ( copt_net_790 ) , 
    .CK ( clk ) , .RD ( ZBUF_24119_0 ) , .Q ( \cic/add_cast_3 [2] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out2_reg[3] ( .D ( copt_net_825 ) , 
    .CK ( clk ) , .RD ( n2024 ) , .Q ( \cic/add_cast_3 [3] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out2_reg[4] ( .D ( copt_net_830 ) , 
    .CK ( clk ) , .RD ( ZBUF_6565_0 ) , .Q ( \cic/add_cast_3 [4] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out2_reg[5] ( .D ( copt_net_834 ) , 
    .CK ( clk ) , .RD ( ZBUF_6565_0 ) , .Q ( \cic/add_cast_3 [5] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out2_reg[6] ( .D ( copt_net_824 ) , 
    .CK ( clk ) , .RD ( n2024 ) , .Q ( \cic/add_cast_3 [6] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out2_reg[7] ( .D ( copt_net_717 ) , 
    .CK ( clk ) , .RD ( ZBUF_6565_0 ) , .Q ( \cic/add_cast_3 [7] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out2_reg[8] ( .D ( copt_net_832 ) , 
    .CK ( clk ) , .RD ( ZBUF_6565_0 ) , .Q ( \cic/add_cast_3 [8] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out2_reg[9] ( .D ( n668 ) , 
    .CK ( clk ) , .RD ( ZBUF_1666_0 ) , .Q ( \cic/add_cast_3 [9] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out2_reg[10] ( .D ( n667 ) , 
    .CK ( clk ) , .RD ( n2024 ) , .Q ( \cic/add_cast_3 [10] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out2_reg[11] ( .D ( n666 ) , 
    .CK ( clk ) , .RD ( ZBUF_6565_0 ) , .Q ( \cic/add_cast_3 [11] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out2_reg[13] ( .D ( n664 ) , 
    .CK ( clk ) , .RD ( ZBUF_1666_0 ) , .Q ( \cic/add_cast_3 [13] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out2_reg[14] ( .D ( n663 ) , 
    .CK ( clk ) , .RD ( n2024 ) , .Q ( \cic/add_cast_3 [14] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out2_reg[15] ( .D ( n662 ) , 
    .CK ( clk ) , .RD ( ZBUF_6565_0 ) , .Q ( \cic/add_cast_3 [15] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out2_reg[16] ( .D ( n661 ) , 
    .CK ( clk ) , .RD ( ZBUF_6565_0 ) , .Q ( \cic/add_cast_3 [16] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out2_reg[17] ( .D ( n660 ) , 
    .CK ( clk ) , .RD ( n2024 ) , .Q ( \cic/add_cast_3 [17] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out2_reg[18] ( .D ( n659 ) , 
    .CK ( clk ) , .RD ( ZBUF_3647_0 ) , .Q ( \cic/add_cast_3 [18] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out2_reg[19] ( .D ( n658 ) , 
    .CK ( clk ) , .RD ( ZBUF_3647_0 ) , .Q ( \cic/add_cast_3 [19] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_1 \cic/section_out1_reg[0] ( .D ( copt_net_771 ) , 
    .CK ( clk ) , .RD ( n2024 ) , .Q ( \cic/add_cast_1 [0] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_1 \cic/section_out1_reg[1] ( .D ( n656 ) , .CK ( clk ) , 
    .RD ( ZBUF_6565_0 ) , .Q ( \cic/add_cast_1 [1] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_1 \cic/section_out1_reg[2] ( .D ( copt_net_819 ) , 
    .CK ( clk ) , .RD ( ZBUF_6565_0 ) , .Q ( \cic/add_cast_1 [2] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out1_reg[3] ( .D ( n654 ) , 
    .CK ( clk ) , .RD ( n2024 ) , .Q ( \cic/add_cast_1 [3] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out1_reg[4] ( .D ( copt_net_815 ) , 
    .CK ( clk ) , .RD ( ZBUF_6565_0 ) , .Q ( \cic/add_cast_1 [4] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out1_reg[5] ( .D ( n652 ) , 
    .CK ( clk ) , .RD ( ZBUF_6565_0 ) , .Q ( \cic/add_cast_1 [5] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out1_reg[6] ( .D ( copt_net_826 ) , 
    .CK ( clk ) , .RD ( n2024 ) , .Q ( \cic/add_cast_1 [6] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out1_reg[8] ( .D ( copt_net_831 ) , 
    .CK ( clk ) , .RD ( ZBUF_6565_0 ) , .Q ( \cic/add_cast_1 [8] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out1_reg[9] ( .D ( n648 ) , 
    .CK ( clk ) , .RD ( ZBUF_6565_0 ) , .Q ( \cic/add_cast_1 [9] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out1_reg[10] ( .D ( n647 ) , 
    .CK ( clk ) , .RD ( n2024 ) , .Q ( \cic/add_cast_1 [10] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out1_reg[11] ( .D ( n646 ) , 
    .CK ( clk ) , .RD ( ZBUF_6565_0 ) , .Q ( \cic/add_cast_1 [11] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out1_reg[12] ( .D ( n645 ) , 
    .CK ( clk ) , .RD ( ZBUF_6565_0 ) , .Q ( \cic/add_cast_1 [12] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out1_reg[13] ( .D ( n644 ) , 
    .CK ( clk ) , .RD ( n2024 ) , .Q ( \cic/add_cast_1 [13] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out1_reg[14] ( .D ( n643 ) , 
    .CK ( clk ) , .RD ( ZBUF_6565_0 ) , .Q ( \cic/add_cast_1 [14] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out1_reg[15] ( .D ( n642 ) , 
    .CK ( clk ) , .RD ( ZBUF_6565_0 ) , .Q ( \cic/add_cast_1 [15] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out1_reg[16] ( .D ( n641 ) , 
    .CK ( clk ) , .RD ( ZBUF_6565_0 ) , .Q ( \cic/add_cast_1 [16] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out1_reg[17] ( .D ( n640 ) , 
    .CK ( clk ) , .RD ( ZBUF_6565_0 ) , .Q ( \cic/add_cast_1 [17] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out1_reg[18] ( .D ( n639 ) , 
    .CK ( clk ) , .RD ( ZBUF_6565_0 ) , .Q ( \cic/add_cast_1 [18] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/section_out1_reg[19] ( .D ( n638 ) , 
    .CK ( clk ) , .RD ( ZBUF_3647_0 ) , .Q ( \cic/add_cast_1 [19] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_2 \cic/cur_count_reg[5] ( .D ( copt_net_813 ) , 
    .CK ( clk ) , .RD ( ZBUF_3647_0 ) , .Q ( \cic/cur_count [5] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/cur_count_reg[0] ( .D ( copt_net_818 ) , 
    .CK ( clk ) , .RD ( ZBUF_3647_0 ) , .Q ( \cic/cur_count [0] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/cur_count_reg[2] ( .D ( n633 ) , .CK ( clk ) , 
    .RD ( ZBUF_3647_0 ) , .Q ( \cic/cur_count [2] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/cur_count_reg[3] ( .D ( n632 ) , .CK ( clk ) , 
    .RD ( ZBUF_3647_0 ) , .Q ( \cic/cur_count [3] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_1 \cic/cur_count_reg[4] ( .D ( copt_net_694 ) , 
    .CK ( clk ) , .RD ( ZBUF_3647_0 ) , .Q ( \cic/cur_count [4] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_2 \cic/output_register_reg[5] ( .D ( n630 ) , 
    .CK ( clk ) , .RD ( ZBUF_24119_0 ) , .Q ( filter_out[1] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_2 \cic/output_register_reg[6] ( .D ( n629 ) , 
    .CK ( clk ) , .RD ( ZBUF_24119_0 ) , .Q ( filter_out[2] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_2 \cic/output_register_reg[7] ( .D ( n628 ) , 
    .CK ( clk ) , .RD ( ZBUF_24119_0 ) , .Q ( filter_out[3] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_2 \cic/output_register_reg[8] ( .D ( n627 ) , 
    .CK ( clk ) , .RD ( ZBUF_24119_0 ) , .Q ( filter_out[4] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_2 \cic/output_register_reg[9] ( .D ( n626 ) , 
    .CK ( clk ) , .RD ( ZBUF_24119_0 ) , .Q ( filter_out[5] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/output_register_reg[10] ( .D ( n625 ) , 
    .CK ( clk ) , .RD ( ZBUF_1666_0 ) , .Q ( filter_out[6] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_2 \cic/output_register_reg[11] ( .D ( n624 ) , 
    .CK ( clk ) , .RD ( ZBUF_1666_0 ) , .Q ( filter_out[7] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/output_register_reg[12] ( .D ( n623 ) , 
    .CK ( clk ) , .RD ( ZBUF_1666_0 ) , .Q ( filter_out[8] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/output_register_reg[13] ( .D ( n622 ) , 
    .CK ( clk ) , .RD ( ZBUF_1666_0 ) , .Q ( filter_out[9] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/output_register_reg[14] ( .D ( n621 ) , 
    .CK ( clk ) , .RD ( ZBUF_1666_0 ) , .Q ( filter_out[10] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_2 \cic/output_register_reg[15] ( .D ( n620 ) , 
    .CK ( clk ) , .RD ( ZBUF_1666_0 ) , .Q ( filter_out[11] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/output_register_reg[17] ( .D ( n618 ) , 
    .CK ( clk ) , .RD ( ZBUF_24119_0 ) , .Q ( filter_out[13] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/output_register_reg[18] ( .D ( n617 ) , 
    .CK ( clk ) , .RD ( ZBUF_24119_0 ) , .Q ( filter_out[14] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_2 \cic/output_register_reg[19] ( .D ( n616 ) , 
    .CK ( clk ) , .RD ( ZBUF_1666_0 ) , .Q ( filter_out[15] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_2 \cic/output_register_reg[4] ( .D ( n615 ) , 
    .CK ( clk ) , .RD ( ZBUF_24119_0 ) , .Q ( filter_out[0] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_2 \cic/diff3_reg[1] ( .D ( n614 ) , .CK ( clk ) , 
    .RD ( ZBUF_24119_0 ) , .Q ( \cic/sub_cast_5 [1] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_2 \cic/diff3_reg[2] ( .D ( n613 ) , .CK ( clk ) , 
    .RD ( ZBUF_24119_0 ) , .Q ( \cic/sub_cast_5 [2] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_2 \cic/diff3_reg[3] ( .D ( n612 ) , .CK ( clk ) , 
    .RD ( ZBUF_24119_0 ) , .Q ( \cic/sub_cast_5 [3] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_2 \cic/diff3_reg[4] ( .D ( copt_net_845 ) , 
    .CK ( clk ) , .RD ( ZBUF_24119_0 ) , .Q ( \cic/sub_cast_5 [4] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_2 \cic/diff3_reg[5] ( .D ( n610 ) , .CK ( clk ) , 
    .RD ( ZBUF_24119_0 ) , .Q ( \cic/sub_cast_5 [5] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/diff3_reg[6] ( .D ( copt_net_827 ) , 
    .CK ( clk ) , .RD ( ZBUF_24119_0 ) , .Q ( \cic/sub_cast_5 [6] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_2 \cic/diff3_reg[7] ( .D ( n608 ) , .CK ( clk ) , 
    .RD ( ZBUF_24119_0 ) , .Q ( \cic/sub_cast_5 [7] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/diff3_reg[8] ( .D ( n607 ) , .CK ( clk ) , 
    .RD ( ZBUF_3647_0 ) , .Q ( \cic/sub_cast_5 [8] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/diff3_reg[9] ( .D ( n606 ) , .CK ( clk ) , 
    .RD ( n2024 ) , .Q ( \cic/sub_cast_5 [9] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/diff3_reg[10] ( .D ( n605 ) , .CK ( clk ) , 
    .RD ( ZBUF_3647_0 ) , .Q ( \cic/sub_cast_5 [10] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/diff3_reg[12] ( .D ( n603 ) , .CK ( clk ) , 
    .RD ( ZBUF_3647_0 ) , .Q ( \cic/sub_cast_5 [12] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/diff3_reg[13] ( .D ( n602 ) , .CK ( clk ) , 
    .RD ( n2024 ) , .Q ( \cic/sub_cast_5 [13] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/diff3_reg[14] ( .D ( n601 ) , .CK ( clk ) , 
    .RD ( n2024 ) , .Q ( \cic/sub_cast_5 [14] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/diff3_reg[15] ( .D ( n600 ) , .CK ( clk ) , 
    .RD ( ZBUF_3647_0 ) , .Q ( \cic/sub_cast_5 [15] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/diff3_reg[16] ( .D ( n599 ) , .CK ( clk ) , 
    .RD ( ZBUF_1666_0 ) , .Q ( \cic/sub_cast_5 [16] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_1 \cic/diff3_reg[17] ( .D ( n598 ) , .CK ( clk ) , 
    .RD ( ZBUF_1666_0 ) , .Q ( \cic/sub_cast_5 [17] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_1 \cic/diff3_reg[18] ( .D ( n597 ) , .CK ( clk ) , 
    .RD ( n2024 ) , .Q ( \cic/sub_cast_5 [18] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/diff3_reg[19] ( .D ( n596 ) , .CK ( clk ) , 
    .RD ( ZBUF_1666_0 ) , .Q ( \cic/sub_cast_5 [19] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_2 \cic/diff3_reg[0] ( .D ( n595 ) , .CK ( clk ) , 
    .RD ( ZBUF_24119_0 ) , .Q ( \cic/sub_cast_5 [0] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_2 \cic/diff2_reg[1] ( .D ( n594 ) , .CK ( clk ) , 
    .RD ( ZBUF_24119_0 ) , .Q ( \cic/sub_cast_3 [1] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/diff2_reg[2] ( .D ( n593 ) , .CK ( clk ) , 
    .RD ( n2024 ) , .Q ( \cic/sub_cast_3 [2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/diff2_reg[3] ( .D ( copt_net_841 ) , 
    .CK ( clk ) , .RD ( n2024 ) , .Q ( \cic/sub_cast_3 [3] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_2 \cic/diff2_reg[4] ( .D ( n591 ) , .CK ( clk ) , 
    .RD ( ZBUF_24119_0 ) , .Q ( \cic/sub_cast_3 [4] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/diff2_reg[5] ( .D ( n590 ) , .CK ( clk ) , 
    .RD ( ZBUF_24119_0 ) , .Q ( \cic/sub_cast_3 [5] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/diff2_reg[7] ( .D ( n588 ) , .CK ( clk ) , 
    .RD ( n2024 ) , .Q ( \cic/sub_cast_3 [7] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/diff2_reg[8] ( .D ( n587 ) , .CK ( clk ) , 
    .RD ( ZBUF_3647_0 ) , .Q ( \cic/sub_cast_3 [8] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/diff2_reg[9] ( .D ( n586 ) , .CK ( clk ) , 
    .RD ( ZBUF_24119_0 ) , .Q ( \cic/sub_cast_3 [9] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_2 \cic/diff2_reg[10] ( .D ( n585 ) , .CK ( clk ) , 
    .RD ( ZBUF_24119_0 ) , .Q ( \cic/sub_cast_3 [10] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_2 \cic/diff2_reg[11] ( .D ( n584 ) , .CK ( clk ) , 
    .RD ( n2024 ) , .Q ( \cic/sub_cast_3 [11] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_2 \cic/diff2_reg[12] ( .D ( n583 ) , .CK ( clk ) , 
    .RD ( ZBUF_3647_0 ) , .Q ( \cic/sub_cast_3 [12] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_2 \cic/diff2_reg[13] ( .D ( n582 ) , .CK ( clk ) , 
    .RD ( n2024 ) , .Q ( \cic/sub_cast_3 [13] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_1 \cic/diff2_reg[14] ( .D ( n581 ) , .CK ( clk ) , 
    .RD ( ZBUF_3647_0 ) , .Q ( \cic/sub_cast_3 [14] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/diff2_reg[15] ( .D ( n580 ) , .CK ( clk ) , 
    .RD ( ZBUF_3647_0 ) , .Q ( \cic/sub_cast_3 [15] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/diff2_reg[16] ( .D ( n579 ) , .CK ( clk ) , 
    .RD ( ZBUF_3647_0 ) , .Q ( \cic/sub_cast_3 [16] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_2 \cic/diff2_reg[17] ( .D ( n578 ) , .CK ( clk ) , 
    .RD ( ZBUF_3647_0 ) , .Q ( \cic/sub_cast_3 [17] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_2 \cic/diff2_reg[18] ( .D ( n577 ) , .CK ( clk ) , 
    .RD ( ZBUF_3647_0 ) , .Q ( \cic/sub_cast_3 [18] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_2 \cic/diff2_reg[19] ( .D ( n576 ) , .CK ( clk ) , 
    .RD ( ZBUF_3647_0 ) , .Q ( \cic/sub_cast_3 [19] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_2 \cic/diff2_reg[0] ( .D ( copt_net_684 ) , 
    .CK ( clk ) , .RD ( n2024 ) , .Q ( \cic/sub_cast_3 [0] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/diff1_reg[2] ( .D ( copt_net_833 ) , 
    .CK ( clk ) , .RD ( ZBUF_24119_0 ) , .Q ( \cic/sub_cast_1 [2] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_2 \cic/diff1_reg[3] ( .D ( copt_net_809 ) , 
    .CK ( clk ) , .RD ( ZBUF_6565_0 ) , .Q ( \cic/sub_cast_1 [3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_2 \cic/diff1_reg[4] ( .D ( copt_net_789 ) , 
    .CK ( clk ) , .RD ( ZBUF_6565_0 ) , .Q ( \cic/sub_cast_1 [4] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/diff1_reg[5] ( .D ( copt_net_840 ) , 
    .CK ( clk ) , .RD ( ZBUF_1666_0 ) , .Q ( \cic/sub_cast_1 [5] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/diff1_reg[6] ( .D ( copt_net_836 ) , 
    .CK ( clk ) , .RD ( ZBUF_1666_0 ) , .Q ( \cic/sub_cast_1 [6] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_2 \cic/diff1_reg[7] ( .D ( n568 ) , .CK ( clk ) , 
    .RD ( ZBUF_1666_0 ) , .Q ( \cic/sub_cast_1 [7] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/diff1_reg[8] ( .D ( copt_net_822 ) , 
    .CK ( clk ) , .RD ( ZBUF_1666_0 ) , .Q ( \cic/sub_cast_1 [8] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/diff1_reg[9] ( .D ( gre_net_852 ) , 
    .CK ( clk ) , .RD ( ZBUF_1666_0 ) , .Q ( \cic/sub_cast_1 [9] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/diff1_reg[10] ( .D ( n565 ) , .CK ( clk ) , 
    .RD ( ZBUF_1666_0 ) , .Q ( \cic/sub_cast_1 [10] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_1 \cic/diff1_reg[11] ( .D ( copt_net_839 ) , 
    .CK ( clk ) , .RD ( ZBUF_1666_0 ) , .Q ( \cic/sub_cast_1 [11] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/diff1_reg[12] ( .D ( copt_net_843 ) , 
    .CK ( clk ) , .RD ( ZBUF_1666_0 ) , .Q ( \cic/sub_cast_1 [12] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/diff1_reg[13] ( .D ( n562 ) , .CK ( clk ) , 
    .RD ( ZBUF_1666_0 ) , .Q ( \cic/sub_cast_1 [13] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \cic/diff1_reg[14] ( .D ( n561 ) , .CK ( clk ) , 
    .RD ( ZBUF_1666_0 ) , .Q ( \cic/sub_cast_1 [14] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_1 \cic/diff1_reg[15] ( .D ( n560 ) , .CK ( clk ) , 
    .RD ( ZBUF_1666_0 ) , .Q ( \cic/sub_cast_1 [15] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_2 \cic/diff1_reg[17] ( .D ( n558 ) , .CK ( clk ) , 
    .RD ( ZBUF_3647_0 ) , .Q ( \cic/sub_cast_1 [17] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_2 \cic/diff1_reg[18] ( .D ( n557 ) , .CK ( clk ) , 
    .RD ( ZBUF_3647_0 ) , .Q ( \cic/sub_cast_1 [18] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_1 \cic/diff1_reg[19] ( .D ( copt_net_842 ) , 
    .CK ( clk ) , .RD ( ZBUF_3647_0 ) , .Q ( \cic/sub_cast_1 [19] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2_2 \cic/diff1_reg[0] ( .D ( copt_net_846 ) , .CK ( clk ) , 
    .RD ( ZBUF_6565_0 ) , .Q ( \cic/sub_cast_1 [0] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/stepIndex_reg[5] ( .D ( n552 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_4408_0 ) , .Q ( \enc/n2 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/outPCM_reg[1] ( .D ( n547 ) , 
    .CK ( slow_clk ) , .RD ( n2024 ) , .Q ( encPcm[1] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/outPCM_reg[2] ( .D ( n546 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_4408_0 ) , .Q ( encPcm[2] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/outPCM_reg[0] ( .D ( n545 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_4408_0 ) , .Q ( encPcm[0] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/outPCM_reg[3] ( .D ( n544 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_4408_0 ) , .Q ( encPcm[3] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/prePCM_reg[3] ( .D ( n742 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_4408_0 ) , .Q ( \enc/prePCM [3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2_1 \cic/input_register_reg[1] ( .D ( n637 ) , .CK ( clk ) , 
    .RD ( ZBUF_6565_0 ) , .Q ( \cic/input_register [1] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDP_V2LP_2 \enc/stepSize_reg[5] ( .D ( \enc/N1097 ) , 
    .CK ( slow_clk ) , .Q ( \enc/stepSize [5] ) , .QN ( n2021 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDP_V2LP_2 \enc/stepSize_reg[3] ( .D ( \enc/N1095 ) , 
    .CK ( slow_clk ) , .Q ( \enc/stepSize [3] ) , .QN ( n2014 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/sampDiff_reg[13] ( .D ( n749 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_859_0 ) , .Q ( \enc/sampDiff [13] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/stepIndex_reg[0] ( .D ( n554 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_4408_0 ) , .Q ( \enc/n7 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/stepIndex_reg[4] ( .D ( n551 ) , 
    .CK ( slow_clk ) , .RD ( n2024 ) , .Q ( \enc/n3 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/stepIndex_reg[3] ( .D ( n550 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_4408_0 ) , .Q ( \enc/n4 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/stepIndex_reg[6] ( .D ( n553 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_4408_0 ) , .Q ( \enc/n1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/stepIndex_reg[2] ( .D ( n549 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_4408_0 ) , .Q ( \enc/n5 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/prePCM_reg[2] ( .D ( n740 ) , 
    .CK ( slow_clk ) , .RD ( n2024 ) , .Q ( \enc/prePCM [2] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 \enc/stepIndex_reg[1] ( .D ( n548 ) , 
    .CK ( slow_clk ) , .RD ( ZBUF_4408_0 ) , .Q ( \enc/n6 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_ADDF_V1_0P5 \DP_OP_52J1_123_6716/U21 ( 
    .A ( \DP_OP_52J1_123_6716/n43 ) , .B ( \enc/predictorSamp [0] ) , 
    .CI ( gre_net_849 ) , .CO ( \DP_OP_52J1_123_6716/n20 ) , 
    .S ( \enc/prePredSamp [0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OR2_4 ctmTdsLR_1_2380 ( .A1 ( tmp_net539 ) , .A2 ( n1736 ) , 
    .X ( n1738 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_1_1311 ( .A1 ( copt_net_335 ) , 
    .A2 ( copt_net_334 ) , .X ( copt_net_9 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_4 ctmTdsLR_1_1187 ( .A1 ( copt_net_306 ) , 
    .A2 ( copt_net_307 ) , .B ( copt_net_308 ) , .X ( \intadd_1/n15 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ADDF_V1_0P5 \intadd_2/U6 ( .A ( \intadd_2/CI ) , 
    .B ( \intadd_2/A[0] ) , .CI ( \intadd_2/B[0] ) , .CO ( \intadd_2/n5 ) , 
    .S ( \intadd_2/SUM[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_2 ctmTdsLR_2_1312 ( .A1 ( copt_net_333 ) , 
    .A2 ( copt_net_308 ) , .X ( copt_net_334 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ADDF_V1_0P5 \intadd_2/U5 ( .A ( \intadd_2/n5 ) , 
    .B ( \intadd_2/A[1] ) , .CI ( \intadd_2/B[1] ) , .CO ( \intadd_2/n4 ) , 
    .S ( \intadd_2/SUM[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_1_2150 ( .A1 ( copt_net_519 ) , 
    .A2 ( copt_net_520 ) , .X ( n1137 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AN2_4 ctmTdsLR_1_1461 ( .A1 ( n1189 ) , 
    .A2 ( \cic/sub_cast_5 [18] ) , .X ( n1193 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_4 ctmTdsLR_1_689 ( .A1 ( \cic/sub_cast_5 [7] ) , 
    .A2 ( n1098 ) , .X ( n1103 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_2 ctmTdsLR_1_996 ( .A1 ( \intadd_1/n13 ) , 
    .A2 ( \cic/sub_cast_1 [7] ) , .B ( \intadd_1/B[6] ) , 
    .X ( copt_net_223 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_1 ctmTdsLR_1_617 ( .A1 ( n1059 ) , .A2 ( copt_net_46 ) , 
    .X ( n1061 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_1P5 ctmTdsLR_2_1029 ( .A ( n1177 ) , .X ( copt_net_245 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ADDF_V1_0P5 \DP_OP_85J1_126_8300/U17 ( 
    .A ( \DP_OP_85J1_126_8300/n17 ) , .B ( \enc/dequantSamp [2] ) , 
    .CI ( \C1/Z_2 ) , .CO ( \DP_OP_85J1_126_8300/n16 ) , .S ( \C40/DATA2_2 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_0P5 ctmTdsLR_2_618 ( .A1 ( n1060 ) , 
    .A2 ( \cic/sub_cast_5 [3] ) , .X ( copt_net_46 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_4 ctmTdsLR_1_1507 ( .A1 ( \cic/sub_cast_5 [17] ) , 
    .A2 ( n1180 ) , .X ( n1186 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_1 ctmTdsLR_1_1928 ( .A1 ( n1121 ) , .A2 ( n1120 ) , 
    .B ( n1119 ) , .X ( n1122 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ADDF_V1_1 \intadd_0/U13 ( .A ( \intadd_0/n13 ) , 
    .B ( \cic/sub_cast_3 [7] ) , .CI ( \intadd_0/B[6] ) , 
    .CO ( \intadd_0/n12 ) , .S ( \intadd_0/SUM[6] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_ADDF_V1_1 \intadd_1/U12 ( .A ( \intadd_1/n12 ) , 
    .B ( \cic/sub_cast_1 [8] ) , .CI ( \intadd_1/B[7] ) , 
    .CO ( \intadd_1/n11 ) , .S ( \intadd_0/B[7] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_ADDF_V1_2 \intadd_0/U12 ( .A ( \intadd_0/n12 ) , 
    .B ( \cic/sub_cast_3 [8] ) , .CI ( \intadd_0/B[7] ) , 
    .CO ( \intadd_0/n11 ) , .S ( \intadd_0/SUM[7] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_ADDF_V1_2 \intadd_1/U11 ( .A ( \intadd_1/n11 ) , 
    .B ( \cic/sub_cast_1 [9] ) , .CI ( \intadd_1/B[8] ) , 
    .CO ( \intadd_1/n10 ) , .S ( \intadd_0/B[8] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_3_1313 ( .A ( \cic/sub_cast_1 [5] ) , 
    .X ( copt_net_333 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_2 ctmTdsLR_1_691 ( .A1 ( copt_net_4 ) , 
    .A2 ( \cic/sub_cast_3 [18] ) , .B ( \intadd_0/B[17] ) , 
    .X ( copt_net_5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ADDF_V1_1 \intadd_0/U10 ( .A ( \intadd_0/n10 ) , 
    .B ( \cic/sub_cast_3 [10] ) , .CI ( \intadd_0/B[9] ) , 
    .CO ( \intadd_0/n9 ) , .S ( \intadd_0/SUM[9] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_0P5 ctmTdsLR_1_697 ( .A1 ( \cic/sub_cast_1 [11] ) , 
    .A2 ( copt_net_25 ) , .X ( copt_net_27 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_2 ctmTdsLR_1_1411 ( .A1 ( \cic/sub_cast_5 [16] ) , 
    .A2 ( n1172 ) , .X ( n1177 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_2 ctmTdsLR_1_1838 ( .A1 ( \cic/add_cast_3 [15] ) , 
    .A2 ( n1792 ) , .X ( n1794 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_2_1462 ( .A1 ( n1189 ) , 
    .A2 ( \cic/sub_cast_5 [18] ) , .X ( n1192 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_1_1534 ( .A1 ( n1800 ) , 
    .A2 ( \cic/add_cast_3 [17] ) , .X ( n1803 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_1 ctmTdsLR_3_1189 ( .A ( \intadd_1/B[3] ) , 
    .X ( copt_net_307 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_1 ctmTdsLR_4_1190 ( .A1 ( \intadd_1/n16 ) , 
    .A2 ( \cic/sub_cast_1 [4] ) , .X ( copt_net_308 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_1_1020 ( .A1 ( copt_net_243 ) , .A2 ( copt_net_17 ) , 
    .X ( n1810 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_2 ctmTdsLR_1_848 ( .A1 ( n1861 ) , 
    .A2 ( \cic/add_cast_1 [11] ) , .X ( n1863 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_1_622 ( .A1 ( copt_net_49 ) , .A2 ( copt_net_50 ) , 
    .X ( n1146 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_V1_4 ctmTdsLR_1_1191 ( .A1 ( copt_net_309 ) , 
    .A2 ( copt_net_310 ) , .B ( \cic/sub_cast_5 [11] ) , .X ( n1135 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_1P5 ctmTdsLR_2_1192 ( .A ( copt_net_93 ) , .X ( copt_net_309 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ADDF_V1_1 \intadd_0/U4 ( .A ( \intadd_0/n4 ) , 
    .B ( \cic/sub_cast_3 [16] ) , .CI ( \intadd_0/B[15] ) , 
    .CO ( \intadd_0/n3 ) , .S ( \intadd_0/SUM[15] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_2 ctmTdsLR_2_623 ( .A1 ( copt_net_48 ) , .A2 ( n1135 ) , 
    .X ( copt_net_49 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AN2_0P5 ctmTdsLR_1_1999 ( .A1 ( n1784 ) , 
    .A2 ( \cic/add_cast_3 [13] ) , .X ( copt_net_490 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_3_624 ( .A ( \cic/sub_cast_5 [12] ) , 
    .X ( copt_net_48 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OA21_MM_1 ctmTdsLR_1_1907_roptpi_2654 ( .A1 ( n1838 ) , 
    .A2 ( copt_net_437 ) , .B ( copt_net_462 ) , .X ( copt_net_463 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EN3_2 U795 ( .A1 ( copt_net_695 ) , .A2 ( n1196 ) , .A3 ( n1195 ) , 
    .X ( n1197 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_1P5 ctmTdsLR_2_1075 ( .A1 ( ZBUF_125_0 ) , 
    .A2 ( ZBUF_47_16 ) , .B ( \cic/add_cast_3 [1] ) , .X ( copt_net_267 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EO2_1P5 U797 ( .A1 ( ZBUF_8_8 ) , .A2 ( n1190 ) , .X ( n1191 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_1 ctmTdsLR_1_2018 ( .A ( copt_net_256 ) , 
    .X ( copt_net_263 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EO2_V1_0P75 U799 ( .A1 ( copt_net_740 ) , .A2 ( n1903 ) , 
    .X ( n658 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_1 ctmTdsLR_1_980 ( .A1 ( copt_net_223 ) , .A2 ( copt_net_224 ) , 
    .X ( \intadd_1/n12 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_2 ctmTdsLR_1_1077 ( .A1 ( copt_net_251 ) , 
    .A2 ( copt_net_268 ) , .X ( n1195 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EO2_V1_0P75 U802 ( .A1 ( copt_net_733 ) , .A2 ( n1810 ) , 
    .X ( n678 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_0P5 ctmTdsLR_1_1515 ( .A1 ( \cic/add_cast_3 [6] ) , 
    .A2 ( n1756 ) , .X ( n1758 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_MM_1 ctmTdsLR_2_850 ( .A1 ( n1759 ) , .A2 ( \intadd_1/B[5] ) , 
    .X ( copt_net_164 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_1 ctmTdsLR_1_1486 ( .A1 ( copt_net_249 ) , 
    .A2 ( copt_net_393 ) , .X ( copt_net_268 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_MM_1 ctmTdsLR_4_625 ( .A1 ( n1137 ) , .A2 ( n1136 ) , 
    .X ( copt_net_50 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_1_1061 ( .A1 ( copt_net_260 ) , .A2 ( n1193 ) , 
    .X ( n1196 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_1 U808 ( .D0 ( n1899 ) , .D1 ( copt_net_747 ) , .S ( n1897 ) , 
    .X ( n659 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_4 U809 ( .A1 ( n1188 ) , .A2 ( n1187 ) , .B ( n1186 ) , 
    .X ( n1189 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_3_1463 ( .A1 ( n1193 ) , .A2 ( n1192 ) , 
    .X ( n1190 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_2_1062 ( .A1 ( n1192 ) , .A2 ( copt_net_259 ) , 
    .X ( copt_net_260 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_3 ctmTdsLR_1_938 ( .A1 ( copt_net_199 ) , 
    .A2 ( copt_net_200 ) , .X ( \intadd_1/n7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_1_2603 ( .A1 ( n1535 ) , .A2 ( tmp_net648 ) , 
    .B ( tmp_net650 ) , .X ( n758 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_1 U814 ( .D0 ( \intadd_1/B[17] ) , .D1 ( copt_net_710 ) , 
    .S ( n1805 ) , .X ( n679 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AN3_2 ctmTdsLR_1_2392 ( .A1 ( n1914 ) , .A2 ( copt_net_193 ) , 
    .A3 ( n1915 ) , .X ( n1928 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_1P5 ctmTdsLR_4_1314 ( .A1 ( copt_net_306 ) , 
    .A2 ( copt_net_307 ) , .X ( copt_net_335 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_3_1193 ( .A1 ( n1129 ) , .A2 ( n1128 ) , 
    .X ( copt_net_310 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EN3_2 ctmTdsLR_1_2187 ( .A1 ( \intadd_0/B[8] ) , 
    .A2 ( \intadd_0/n11 ) , .A3 ( copt_net_123 ) , .X ( \intadd_0/SUM[8] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_1P5 ctmTdsLR_1_2014 ( .A ( n1186 ) , .X ( copt_net_256 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_1 ctmTdsLR_1_1424 ( .A1 ( copt_net_364 ) , 
    .A2 ( copt_net_365 ) , .X ( copt_net_38 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P75 U821 ( .A ( n1900 ) , .B1 ( ZBUF_7033_0 ) , 
    .B2 ( n1898 ) , .X ( n1897 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_3 ctmTdsLR_1_869 ( .A1 ( copt_net_109 ) , 
    .A2 ( copt_net_108 ) , .X ( \intadd_0/n16 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_1 U823 ( .D0 ( \intadd_0/SUM[14] ) , .D1 ( n1170 ) , 
    .S ( n1166 ) , .X ( n1167 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_3 ctmTdsLR_1_626 ( .A1 ( copt_net_51 ) , .A2 ( copt_net_52 ) , 
    .B ( copt_net_53 ) , .X ( \intadd_0/n6 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_2 U825 ( .A1 ( \cic/add_cast_1 [18] ) , .A2 ( n1896 ) , 
    .X ( n1898 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_MM_0P5 U826 ( .D0 ( n1894 ) , .D1 ( \cic/add_cast_3 [17] ) , 
    .S ( n1892 ) , .X ( n660 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_1 U827 ( .D0 ( \intadd_1/B[16] ) , .D1 ( copt_net_724 ) , 
    .S ( n1801 ) , .X ( n680 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_2_1021 ( .A1 ( n1809 ) , 
    .A2 ( \cic/add_cast_3 [19] ) , .B ( ZBUF_3972_0 ) , .X ( copt_net_243 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_1_1961 ( .A1 ( \intadd_1/n16 ) , 
    .A2 ( \cic/sub_cast_1 [4] ) , .X ( copt_net_306 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_3 ctmTdsLR_1_1035 ( .A1 ( n1137 ) , .A2 ( copt_net_247 ) , 
    .B ( n1135 ) , .X ( n1138 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_1_2507 ( .A1 ( n812 ) , .A2 ( tmp_net594 ) , 
    .B ( tmp_net596 ) , .X ( n800 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_1535 ( .A ( copt_net_724 ) , 
    .X ( \intadd_1/B[16] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_1 ctmTdsLR_1_2034 ( .A1 ( n1856 ) , 
    .A2 ( \cic/add_cast_1 [10] ) , .X ( n1858 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_3 U834 ( .A1 ( n1895 ) , .A2 ( n1894 ) , .B ( n1893 ) , 
    .X ( n1896 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_4 ctmTdsLR_2_2188 ( .A ( \intadd_0/SUM[8] ) , .X ( n1120 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_1 ctmTdsLR_2_1425 ( .A1 ( copt_net_53 ) , 
    .A2 ( copt_net_52 ) , .X ( copt_net_364 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_5_780 ( .A1 ( ZBUF_28_0 ) , .A2 ( ZBUF_125_0 ) , 
    .X ( copt_net_134 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_MM_0P5 U838 ( .D0 ( \intadd_1/B[15] ) , .D1 ( copt_net_683 ) , 
    .S ( n1797 ) , .X ( n681 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_1_1037 ( .A1 ( copt_net_232 ) , 
    .A2 ( copt_net_234 ) , .X ( n1188 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_2 U840 ( .A1 ( \cic/add_cast_1 [17] ) , .A2 ( n1891 ) , 
    .X ( n1893 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 ctmTdsLR_3_1426 ( .CK ( copt_net_51 ) , 
    .EN ( copt_net_111 ) , .X ( copt_net_365 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_1 U842 ( .D0 ( n1889 ) , .D1 ( \cic/add_cast_3 [16] ) , 
    .S ( n1887 ) , .X ( n661 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_3_1549 ( .A1 ( n1775 ) , .A2 ( copt_net_412 ) , 
    .X ( copt_net_413 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_2_627 ( .A1 ( \intadd_0/n7 ) , 
    .A2 ( \cic/sub_cast_3 [13] ) , .X ( copt_net_51 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_1 U845 ( .D0 ( n1162 ) , .D1 ( ZBUF_5_0 ) , .S ( tmp_net572 ) , 
    .X ( n1159 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_2 ctmTdsLR_1_2342 ( .A1 ( copt_net_63 ) , 
    .A2 ( \cic/sub_cast_1 [18] ) , .B ( copt_net_535 ) , .X ( copt_net_64 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_4 ctmTdsLR_1_1315 ( .A1 ( n1743 ) , .A2 ( \intadd_1/B[1] ) , 
    .B ( n1742 ) , .X ( n1744 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_2 ctmTdsLR_3_1536 ( .A1 ( \cic/add_cast_3 [17] ) , 
    .A2 ( n1800 ) , .X ( n1802 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_2_1981 ( .A1 ( n1828 ) , .A2 ( copt_net_456 ) , 
    .X ( copt_net_497 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_2 U850 ( .A1 ( \cic/sub_cast_5 [15] ) , .A2 ( n1164 ) , 
    .X ( n1169 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_1_1427 ( .A1 ( copt_net_366 ) , 
    .A2 ( \intadd_1/B[16] ) , .X ( copt_net_31 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_1 ctmTdsLR_1_1963 ( .A1 ( copt_net_493 ) , 
    .A2 ( copt_net_495 ) , .X ( copt_net_204 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_1 ctmTdsLR_1_2000 ( .A1 ( copt_net_410 ) , .A2 ( n1888 ) , 
    .X ( n1887 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_1 ctmTdsLR_1_2019 ( .A1 ( copt_net_275 ) , .A2 ( n1806 ) , 
    .X ( n1805 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_1 U855 ( .D0 ( ZBUF_9_13 ) , .D1 ( n1154 ) , .S ( n1149 ) , 
    .X ( n1150 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_1P5 ctmTdsLR_2_1000 ( .A1 ( n1179 ) , .A2 ( n1178 ) , 
    .X ( copt_net_232 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_4 U857 ( .A1 ( n1163 ) , .A2 ( n1162 ) , .B ( n1161 ) , 
    .X ( n1164 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_2_1332 ( .A1 ( n1172 ) , 
    .A2 ( \cic/sub_cast_5 [16] ) , .X ( n1179 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_1 U859 ( .D0 ( \intadd_1/B[14] ) , .D1 ( copt_net_699 ) , 
    .S ( n1793 ) , .X ( n682 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_1 ctmTdsLR_3_1001 ( .A1 ( n1177 ) , .A2 ( copt_net_233 ) , 
    .X ( copt_net_234 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_2 ctmTdsLR_1_1283 ( .A1 ( copt_net_327 ) , 
    .A2 ( copt_net_328 ) , .B ( ZBUF_7033_0 ) , .X ( n1901 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_1 U862 ( .D0 ( n1884 ) , .D1 ( copt_net_765 ) , .S ( n1882 ) , 
    .X ( n662 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_2 U863 ( .A1 ( \cic/sub_cast_5 [14] ) , .A2 ( n1156 ) , 
    .X ( n1161 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_2_2604 ( .A1 ( n1524 ) , .A2 ( n1523 ) , 
    .X ( tmp_net648 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P75 U865 ( .A ( n1795 ) , .B1 ( ZBUF_7033_0 ) , 
    .B2 ( n1794 ) , .X ( n1793 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_2 ctmTdsLR_1_1947 ( .A1 ( n1155 ) , .A2 ( n1154 ) , 
    .B ( n1153 ) , .X ( n1156 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_2 U867 ( .A ( n1885 ) , .B1 ( ZBUF_3910_0 ) , .B2 ( n1883 ) , 
    .X ( n1882 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P75 ctmTdsLR_3_628 ( .A ( \intadd_0/B[12] ) , 
    .X ( copt_net_52 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_4 ctmTdsLR_1_1919 ( .A1 ( \cic/add_cast_1 [15] ) , 
    .A2 ( n1881 ) , .X ( n1883 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_1 U870 ( .D0 ( \intadd_1/B[13] ) , .D1 ( copt_net_686 ) , 
    .S ( n1789 ) , .X ( n683 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_1 ctmTdsLR_1_1333 ( .A1 ( \intadd_0/n7 ) , 
    .A2 ( \cic/sub_cast_3 [13] ) , .X ( copt_net_53 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_2 ctmTdsLR_1_1948 ( .A1 ( n1179 ) , .A2 ( n1178 ) , 
    .B ( n1177 ) , .X ( n1180 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_2343 ( .A ( copt_net_710 ) , 
    .X ( copt_net_535 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_0P5 ctmTdsLR_2_1487 ( .A1 ( copt_net_5 ) , .A2 ( copt_net_6 ) , 
    .X ( copt_net_393 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_1 U875 ( .D0 ( n1145 ) , .D1 ( \intadd_0/SUM[11] ) , 
    .S ( tmp_net571 ) , .X ( n1141 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_1 U876 ( .D0 ( n1879 ) , .D1 ( copt_net_776 ) , .S ( n1877 ) , 
    .X ( n663 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_2 ctmTdsLR_2_939 ( .A1 ( \intadd_1/n8 ) , 
    .A2 ( \cic/sub_cast_1 [12] ) , .B ( \intadd_1/B[11] ) , 
    .X ( copt_net_199 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_1 ctmTdsLR_3_982 ( .A1 ( \intadd_1/n13 ) , 
    .A2 ( \cic/sub_cast_1 [7] ) , .X ( copt_net_224 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_MM_3 ctmTdsLR_1_1516 ( .A1 ( copt_net_292 ) , 
    .A2 ( copt_net_290 ) , .X ( n1890 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_4 U880 ( .A1 ( \cic/sub_cast_5 [13] ) , .A2 ( n1147 ) , 
    .X ( n1153 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P75 U881 ( .A ( n1791 ) , .B1 ( ZBUF_7033_0 ) , 
    .B2 ( n1790 ) , .X ( n1789 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_4 ctmTdsLR_1_1384 ( .A1 ( copt_net_351 ) , 
    .A2 ( copt_net_352 ) , .B ( copt_net_353 ) , .X ( \intadd_0/n8 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P75 U883 ( .A ( n1880 ) , .B1 ( ZBUF_6889_0 ) , 
    .B2 ( n1878 ) , .X ( n1877 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_4 U884 ( .CK ( n1147 ) , .EN ( \cic/sub_cast_5 [13] ) , 
    .X ( n1155 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_3_1132 ( .A ( \cic/sub_cast_5 [11] ) , 
    .X ( copt_net_281 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OA21B_1 ctmTdsLR_1_1412 ( .A1 ( n1164 ) , 
    .A2 ( \cic/sub_cast_5 [15] ) , .B ( copt_net_362 ) , .X ( n1166 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_1 U887 ( .D0 ( n1874 ) , .D1 ( \cic/add_cast_3 [13] ) , 
    .S ( n1872 ) , .X ( n664 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EN3_1 ctmTdsLR_5_898 ( .A1 ( \intadd_0/n8 ) , 
    .A2 ( \intadd_0/B[11] ) , .A3 ( copt_net_181 ) , 
    .X ( \intadd_0/SUM[11] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_4_1002 ( .A ( \cic/sub_cast_5 [17] ) , 
    .X ( copt_net_233 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_2_1385 ( .A1 ( \intadd_0/n9 ) , 
    .A2 ( \cic/sub_cast_3 [11] ) , .X ( copt_net_351 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_1 ctmTdsLR_3_1386 ( .A ( \intadd_0/B[10] ) , 
    .X ( copt_net_352 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_1 U892 ( .D0 ( ZBUF_5_4 ) , .D1 ( n1136 ) , .S ( n1132 ) , 
    .X ( n1133 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_4 U893 ( .A1 ( n1146 ) , .A2 ( n1145 ) , .B ( n1144 ) , 
    .X ( n1147 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_1 U894 ( .D0 ( \intadd_1/B[12] ) , .D1 ( gre_net_851 ) , 
    .S ( n1785 ) , .X ( n684 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_4 U895 ( .A1 ( n1875 ) , .A2 ( n1874 ) , .B ( n1873 ) , 
    .X ( n1876 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U896 ( .A1 ( n973 ) , .A2 ( \enc/sampDiff [18] ) , 
    .B ( n972 ) , .X ( n744 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_1 ctmTdsLR_1_1775 ( .A1 ( copt_net_446 ) , 
    .A2 ( copt_net_447 ) , .X ( n1183 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EO2_V1_0P75 ctmTdsLR_1_2648 ( .A1 ( tmp_net678 ) , .A2 ( n1956 ) , 
    .X ( n646 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_2_1428 ( .A1 ( n1800 ) , 
    .A2 ( \cic/add_cast_3 [17] ) , .X ( copt_net_366 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_2 U900 ( .A1 ( \cic/sub_cast_5 [12] ) , .A2 ( n1138 ) , 
    .X ( n1144 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_2 ctmTdsLR_2_2151 ( .A1 ( n1128 ) , .A2 ( n1129 ) , 
    .B ( copt_net_281 ) , .X ( copt_net_519 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_1_1950 ( .A1 ( n1779 ) , 
    .A2 ( \intadd_1/B[10] ) , .B ( n1778 ) , .X ( n1780 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U903 ( .A1 ( \enc/sampDiff [4] ) , .A2 ( n1522 ) , 
    .B1 ( n1521 ) , .B2 ( n1520 ) , .X ( n1526 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_4 ctmTdsLR_2_731 ( .A1 ( \intadd_0/n17 ) , 
    .A2 ( \cic/sub_cast_3 [3] ) , .B ( \intadd_0/B[2] ) , 
    .X ( copt_net_108 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 U905 ( .A1 ( n1871 ) , .A2 ( \cic/add_cast_1 [13] ) , 
    .X ( n1875 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U906 ( .A1 ( n862 ) , .A2 ( n1698 ) , .B ( n861 ) , 
    .X ( n750 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U907 ( .A1 ( \enc/sampDiff [10] ) , .A2 ( n1625 ) , 
    .B1 ( n1624 ) , .B2 ( n1698 ) , .X ( n1632 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_MM_1 U908 ( .D0 ( n1869 ) , .D1 ( copt_net_773 ) , 
    .S ( n1867 ) , .X ( n665 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_1 U909 ( .D0 ( \intadd_1/B[11] ) , .D1 ( copt_net_702 ) , 
    .S ( n1781 ) , .X ( n685 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_1_852 ( .A1 ( n1891 ) , 
    .A2 ( \cic/add_cast_1 [17] ) , .X ( n1895 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U911 ( .A1 ( n1716 ) , .A2 ( n971 ) , .B ( n970 ) , 
    .X ( n972 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_1_2587 ( .A1 ( n1377 ) , .A2 ( tmp_net639 ) , 
    .B ( n1370 ) , .X ( n1371 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 ctmTdsLR_3_2605 ( .CK ( tmp_net649 ) , .EN ( n1527 ) , 
    .X ( tmp_net650 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V2_1 copt_h_inst_2655 ( .A ( oldValue ) , 
    .X ( copt_net_680 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EO2_1P5 ctmTdsLR_1_2417 ( .A1 ( copt_net_4 ) , .A2 ( tmp_net547 ) , 
    .X ( \intadd_0/SUM[17] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_2_2588 ( .A1 ( n1368 ) , .A2 ( n1367 ) , 
    .X ( tmp_net639 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U917 ( .A1 ( n1698 ) , .A2 ( n1219 ) , .B ( n1218 ) , 
    .X ( n747 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U918 ( .A1 ( \enc/sampDiff [7] ) , .A2 ( n1580 ) , 
    .B1 ( n1579 ) , .B2 ( n1698 ) , .X ( n1587 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_2 ctmTdsLR_4_1387 ( .A1 ( \cic/sub_cast_3 [11] ) , 
    .A2 ( \intadd_0/n9 ) , .X ( copt_net_353 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U920 ( .A1 ( n1698 ) , .A2 ( n1236 ) , .B ( n1235 ) , 
    .X ( n753 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_2 ctmTdsLR_1_2523 ( .A ( tmp_net604 ) , .X ( n1949 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_4 U922 ( .A1 ( \cic/add_cast_1 [13] ) , .A2 ( n1871 ) , 
    .X ( n1873 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U923 ( .A1 ( \enc/sampDiff [13] ) , .A2 ( n1661 ) , 
    .B1 ( n1660 ) , .B2 ( n1698 ) , .X ( n1668 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U924 ( .A1 ( n1516 ) , .A2 ( n1708 ) , .B1 ( n2006 ) , 
    .B2 ( n1515 ) , .X ( n1519 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U925 ( .CK ( n1602 ) , .EN ( n1574 ) , .X ( n1580 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U926 ( .A1 ( n1676 ) , .A2 ( n1675 ) , .B ( n1680 ) , 
    .X ( n1690 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U927 ( .A1 ( n1534 ) , .A2 ( n1675 ) , .B ( n1538 ) , 
    .X ( n1548 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 ctmTdsLR_4_2606 ( .A ( n1526 ) , .X ( tmp_net649 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO22_0P5 U929 ( .A1 ( n996 ) , .A2 ( \enc/dequantSamp [18] ) , 
    .B1 ( n995 ) , .B2 ( n990 ) , .X ( n720 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_V1_4 ctmTdsLR_1_783 ( .A1 ( copt_net_135 ) , 
    .A2 ( copt_net_71 ) , .B ( copt_net_73 ) , .X ( \intadd_0/n15 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U931 ( .CK ( n1682 ) , .EN ( n1655 ) , .X ( n1661 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_2649 ( .A ( \cic/add_cast_1 [11] ) , 
    .X ( tmp_net678 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U933 ( .A1 ( n969 ) , .A2 ( n968 ) , .B ( n967 ) , 
    .X ( n970 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U934 ( .A1 ( n1705 ) , .A2 ( n1704 ) , 
    .B ( \enc/sampDiff [16] ) , .X ( n1712 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U935 ( .A1 ( n1638 ) , .A2 ( n1675 ) , .B ( n1641 ) , 
    .X ( n1652 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U936 ( .A1 ( n969 ) , .A2 ( n883 ) , .B ( n882 ) , 
    .X ( n893 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U937 ( .A1 ( n1597 ) , .A2 ( n1675 ) , .B ( n1600 ) , 
    .X ( n1610 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U938 ( .A1 ( n1731 ) , .A2 ( n1730 ) , .B ( n1729 ) , 
    .X ( n1732 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U939 ( .CK ( n1643 ) , .EN ( n1618 ) , .X ( n1625 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U940 ( .A1 ( \enc/stepSize [1] ) , .A2 ( n1515 ) , 
    .B1 ( n1511 ) , .B2 ( n1708 ) , .X ( n1514 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U941 ( .A1 ( n1725 ) , .A2 ( n1724 ) , 
    .B ( \enc/sampDiff [17] ) , .X ( n1733 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR3_4 ctmTdsLR_1_2378 ( .A1 ( copt_net_134 ) , .A2 ( tmp_net538 ) , 
    .A3 ( n1055 ) , .X ( \intadd_0/CI ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EO2_V1_1P5 ctmTdsLR_2_2418 ( .A1 ( \cic/sub_cast_3 [18] ) , 
    .A2 ( \intadd_0/B[17] ) , .X ( tmp_net547 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_4 ctmTdsLR_1_1941 ( .A1 ( copt_net_488 ) , 
    .A2 ( copt_net_487 ) , .B ( \cic/add_cast_1 [16] ) , .X ( n1888 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V1_2 copt_h_inst_2774 ( .A ( n694 ) , .X ( copt_net_787 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P5 U946 ( .A ( n1870 ) , .B1 ( ZBUF_6889_0 ) , .B2 ( n1868 ) , 
    .X ( n1867 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_6_899 ( .A ( \cic/sub_cast_3 [12] ) , 
    .X ( copt_net_181 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO22_0P5 U948 ( .A1 ( n1703 ) , .A2 ( n1626 ) , .B1 ( n1723 ) , 
    .B2 ( n1627 ) , .X ( n1618 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P5 U949 ( .A1 ( n1723 ) , .A2 ( n1598 ) , .B ( n1596 ) , 
    .X ( n1597 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_2 U950 ( .A1 ( \cic/add_cast_3 [12] ) , .A2 ( n1780 ) , 
    .X ( n1782 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO22_0P5 U951 ( .A1 ( n1727 ) , .A2 ( n1723 ) , .B1 ( n1722 ) , 
    .B2 ( n1721 ) , .X ( n1724 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_2502 ( .A1 ( n2017 ) , 
    .A2 ( \enc/sampDiff [12] ) , .B ( tmp_net592 ) , .X ( n836 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U953 ( .A1 ( n1705 ) , .A2 ( n1628 ) , 
    .B ( \enc/sampDiff [10] ) , .X ( n1631 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U954 ( .A1 ( n1607 ) , .A2 ( n1606 ) , .B ( n1605 ) , 
    .X ( n1608 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U955 ( .A1 ( \enc/predictorSamp [9] ) , .A2 ( n1477 ) , 
    .B ( n1476 ) , .X ( n1467 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U956 ( .A1 ( n1649 ) , .A2 ( n1648 ) , .B ( n1647 ) , 
    .X ( n1650 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U957 ( .A1 ( \enc/predictorSamp [8] ) , .A2 ( n1477 ) , 
    .B ( n1476 ) , .X ( n1468 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_1P5 ctmTdsLR_4_1286 ( .A ( n1898 ) , .X ( copt_net_328 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_1 U959 ( .D0 ( n1120 ) , .D1 ( \intadd_0/SUM[8] ) , 
    .S ( tmp_net579 ) , .X ( n1117 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_0P5 ctmTdsLR_3_732 ( .A1 ( \intadd_0/n17 ) , 
    .A2 ( \cic/sub_cast_3 [3] ) , .X ( copt_net_109 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U961 ( .A1 ( \enc/predictorSamp [7] ) , .A2 ( n1477 ) , 
    .B ( n1476 ) , .X ( n1469 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U962 ( .A1 ( \enc/sampDiff [17] ) , .A2 ( n1726 ) , 
    .B1 ( n1728 ) , .B2 ( n962 ) , .X ( n965 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U963 ( .A1 ( \enc/predictorSamp [4] ) , .A2 ( n1477 ) , 
    .B ( n1476 ) , .X ( n1472 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P5 U964 ( .A1 ( n1723 ) , .A2 ( n1639 ) , .B ( n1637 ) , 
    .X ( n1638 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U965 ( .A1 ( \enc/predictorSamp [10] ) , .A2 ( n1477 ) , 
    .B ( n1476 ) , .X ( n1466 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U966 ( .A1 ( \enc/predictorSamp [5] ) , .A2 ( n1477 ) , 
    .B ( n1476 ) , .X ( n1471 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U967 ( .A1 ( \enc/predictorSamp [6] ) , .A2 ( n1477 ) , 
    .B ( n1476 ) , .X ( n1470 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U968 ( .A1 ( n1705 ) , .A2 ( n1583 ) , 
    .B ( \enc/sampDiff [7] ) , .X ( n1586 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U969 ( .A1 ( \enc/predictorSamp [3] ) , .A2 ( n1477 ) , 
    .B ( n1476 ) , .X ( n1473 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U970 ( .A1 ( n1705 ) , .A2 ( n1664 ) , 
    .B ( \enc/sampDiff [13] ) , .X ( n1667 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EO2_V1_0P75 ctmTdsLR_1_2650 ( .A1 ( tmp_net679 ) , .A2 ( n1987 ) , 
    .X ( n640 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U972 ( .A1 ( n1728 ) , .A2 ( n1727 ) , .B ( n1726 ) , 
    .X ( n1730 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U973 ( .A1 ( n1602 ) , .A2 ( n1601 ) , .B ( n1600 ) , 
    .X ( n1609 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U974 ( .A1 ( n1723 ) , .A2 ( n1562 ) , .B ( n1561 ) , 
    .X ( n1563 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 ctmTdsLR_2_1517 ( .A ( ZBUF_7033_0 ) , 
    .X ( ZBUF_3910_0 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U976 ( .A1 ( n1643 ) , .A2 ( n1642 ) , .B ( n1641 ) , 
    .X ( n1651 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U977 ( .A1 ( n1722 ) , .A2 ( n1584 ) , .B ( n1558 ) , 
    .X ( n1565 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U978 ( .A1 ( \enc/predictorSamp [2] ) , .A2 ( n1477 ) , 
    .B ( n1476 ) , .X ( n1474 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_1 U979 ( .D0 ( n1864 ) , .D1 ( copt_net_743 ) , .S ( n1862 ) , 
    .X ( n666 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U980 ( .A1 ( \enc/predictorSamp [11] ) , .A2 ( n1477 ) , 
    .B ( n1476 ) , .X ( n1465 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U981 ( .CK ( n1725 ) , .EN ( n881 ) , .X ( n969 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U982 ( .A1 ( \enc/predictorSamp [0] ) , .A2 ( n1477 ) , 
    .B ( n1476 ) , .X ( n1475 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO22_0P5 U983 ( .A1 ( n1581 ) , .A2 ( n1703 ) , .B1 ( n1723 ) , 
    .B2 ( n1582 ) , .X ( n1574 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_2651 ( .A ( \cic/add_cast_1 [17] ) , 
    .X ( tmp_net679 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO22_0P5 U985 ( .A1 ( n1703 ) , .A2 ( n1662 ) , .B1 ( n1723 ) , 
    .B2 ( n1663 ) , .X ( n1655 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P5 U986 ( .A1 ( n1723 ) , .A2 ( n1211 ) , .B ( n1209 ) , 
    .X ( n1217 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U987 ( .A1 ( n1682 ) , .A2 ( n1681 ) , .B ( n1680 ) , 
    .X ( n1689 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U988 ( .A1 ( n1723 ) , .A2 ( n1537 ) , .B ( n1533 ) , 
    .X ( n1534 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U989 ( .A1 ( n1723 ) , .A2 ( n1231 ) , .B ( n1230 ) , 
    .X ( n1232 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U990 ( .A1 ( \enc/predictorSamp [12] ) , .A2 ( n1477 ) , 
    .B ( n1476 ) , .X ( n1464 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U991 ( .A1 ( \enc/predictorSamp [15] ) , .A2 ( n1477 ) , 
    .B ( n1476 ) , .X ( n1461 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U992 ( .A1 ( n1687 ) , .A2 ( n1686 ) , .B ( n1685 ) , 
    .X ( n1688 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U993 ( .A1 ( \enc/predictorSamp [13] ) , .A2 ( n1477 ) , 
    .B ( n1476 ) , .X ( n1463 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U994 ( .A1 ( n1722 ) , .A2 ( n1629 ) , .B ( n1227 ) , 
    .X ( n1234 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUXI2_U_0P5 ctmTdsLR_1_2589 ( .D0 ( n1502 ) , .D1 ( tmp_net640 ) , 
    .S ( \enc/sampDiff [3] ) , .X ( n1503 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U996 ( .A1 ( n1723 ) , .A2 ( n858 ) , .B ( n857 ) , 
    .X ( n859 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U997 ( .A1 ( n1731 ) , .A2 ( n1710 ) , .B ( n1709 ) , 
    .X ( n1711 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U998 ( .A1 ( n1545 ) , .A2 ( n1544 ) , .B ( n1543 ) , 
    .X ( n1546 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_1 U999 ( .D0 ( \intadd_1/B[10] ) , 
    .D1 ( \cic/add_cast_5 [11] ) , .S ( n1777 ) , .X ( n686 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_AO21_U_0P5 U1000 ( .A1 ( n1479 ) , .A2 ( \enc/prePredSamp [17] ) , 
    .B ( n1013 ) , .X ( n701 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1001 ( .A1 ( n1722 ) , .A2 ( n1214 ) , .B ( n1213 ) , 
    .X ( n1215 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1002 ( .A ( n1731 ) , .X ( n1699 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_0P5 U1003 ( .A1 ( n1512 ) , .A2 ( n1723 ) , .X ( n1515 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1004 ( .A1 ( n1540 ) , .A2 ( n1539 ) , .B ( n1538 ) , 
    .X ( n1547 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_2_784 ( .A1 ( \intadd_0/n16 ) , 
    .A2 ( \cic/sub_cast_3 [4] ) , .X ( copt_net_135 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P5 U1006 ( .A1 ( n1723 ) , .A2 ( n1678 ) , .B ( n1674 ) , 
    .X ( n1676 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1007 ( .A1 ( n1722 ) , .A2 ( n1523 ) , .B ( n1499 ) , 
    .X ( n1500 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO22_0P5 U1008 ( .A1 ( n996 ) , .A2 ( \enc/dequantSamp [17] ) , 
    .B1 ( n995 ) , .B2 ( \C40/DATA2_17 ) , .X ( n721 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1009 ( .A1 ( n1722 ) , .A2 ( n1665 ) , .B ( n855 ) , 
    .X ( n860 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1010 ( .A1 ( \enc/predictorSamp [1] ) , .A2 ( n1477 ) , 
    .B ( n1476 ) , .X ( n1478 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_2_2590 ( .A ( n1705 ) , .B ( n1500 ) , 
    .X ( tmp_net640 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1012 ( .A1 ( \enc/predictorSamp [14] ) , .A2 ( n1477 ) , 
    .B ( n1476 ) , .X ( n1462 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO21_U_0P5 U1013 ( .A1 ( n1479 ) , .A2 ( \enc/prePredSamp [16] ) , 
    .B ( n1017 ) , .X ( n702 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO22_0P5 U1014 ( .A1 ( n1707 ) , .A2 ( n1703 ) , .B1 ( n1706 ) , 
    .B2 ( n1723 ) , .X ( n1704 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO21_U_0P5 U1015 ( .A1 ( n995 ) , .A2 ( \C40/DATA2_13 ) , 
    .B ( n939 ) , .X ( n725 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1016 ( .A1 ( n1557 ) , .A2 ( n1708 ) , .B1 ( n1728 ) , 
    .B2 ( n1556 ) , .X ( n1558 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EO3_2 ctmTdsLR_4_733 ( .A1 ( \intadd_0/n17 ) , 
    .A2 ( \intadd_0/B[2] ) , .A3 ( \cic/sub_cast_3 [3] ) , 
    .X ( \intadd_0/SUM[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO21_U_0P5 U1018 ( .A1 ( n995 ) , .A2 ( \C40/DATA2_3 ) , 
    .B ( n981 ) , .X ( n735 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO21_U_0P5 U1019 ( .A1 ( n995 ) , .A2 ( \C40/DATA2_4 ) , 
    .B ( n979 ) , .X ( n734 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1020 ( .A1 ( n1231 ) , .A2 ( n1728 ) , .B1 ( n1708 ) , 
    .B2 ( n1228 ) , .X ( n1227 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1021 ( .A1 ( n1584 ) , .A2 ( n1691 ) , .B1 ( n1708 ) , 
    .B2 ( n1560 ) , .X ( n1561 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1022 ( .A1 ( n1663 ) , .A2 ( n1728 ) , .B1 ( n1662 ) , 
    .B2 ( n1708 ) , .X ( n1664 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1023 ( .A1 ( n1553 ) , .A2 ( n1552 ) , .B ( n1551 ) , 
    .X ( n1570 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO21_U_0P5 U1024 ( .A1 ( n995 ) , .A2 ( \C40/DATA2_5 ) , 
    .B ( n977 ) , .X ( n733 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1025 ( .A1 ( n1629 ) , .A2 ( n1691 ) , .B1 ( n1229 ) , 
    .B2 ( n1708 ) , .X ( n1230 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO21_U_0P5 U1026 ( .A1 ( n995 ) , .A2 ( \C40/DATA2_6 ) , 
    .B ( n975 ) , .X ( n732 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1027 ( .A1 ( n1582 ) , .A2 ( n1728 ) , .B1 ( n1708 ) , 
    .B2 ( n1581 ) , .X ( n1583 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_1_2591 ( .A1 ( n1996 ) , .A2 ( tmp_net641 ) , 
    .X ( tmp_net581 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1029 ( .A1 ( n2025 ) , .A2 ( n1016 ) , .B ( n1460 ) , 
    .X ( n1017 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO21_U_0P5 U1030 ( .A1 ( n995 ) , .A2 ( \C40/DATA2_12 ) , 
    .B ( n947 ) , .X ( n726 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1031 ( .A1 ( n1719 ) , .A2 ( n1718 ) , .B ( n1717 ) , 
    .X ( n1734 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1032 ( .A1 ( n1708 ) , .A2 ( n1640 ) , .B1 ( n1728 ) , 
    .B2 ( n1639 ) , .X ( n1642 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1033 ( .A1 ( n961 ) , .A2 ( n1728 ) , .B1 ( n1729 ) , 
    .B2 ( n1708 ) , .X ( n881 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P75 U1034 ( .A ( n1865 ) , .B1 ( ZBUF_6889_0 ) , 
    .B2 ( n1863 ) , .X ( n1862 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO21_U_0P5 U1035 ( .A1 ( n995 ) , .A2 ( \C40/DATA2_11 ) , 
    .B ( n949 ) , .X ( n727 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1036 ( .CK ( n1636 ) , .EN ( n1691 ) , .X ( n1643 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1037 ( .A1 ( n1649 ) , .A2 ( n1648 ) , .B ( n1698 ) , 
    .X ( n1647 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1038 ( .A1 ( n1607 ) , .A2 ( n1606 ) , .B ( n1698 ) , 
    .X ( n1605 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1039 ( .A ( n1728 ) , .X ( n1723 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1040 ( .CK ( n1595 ) , .EN ( n1691 ) , .X ( n1602 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1041 ( .A1 ( n1708 ) , .A2 ( n1599 ) , .B1 ( n1728 ) , 
    .B2 ( n1598 ) , .X ( n1601 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO21_U_0P5 U1042 ( .A1 ( n995 ) , .A2 ( \C40/DATA2_10 ) , 
    .B ( n953 ) , .X ( n728 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO21_U_0P5 U1043 ( .A1 ( n995 ) , .A2 ( \C40/DATA2_14 ) , 
    .B ( n937 ) , .X ( n724 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO21_U_0P5 U1044 ( .A1 ( n995 ) , .A2 ( \C40/DATA2_9 ) , 
    .B ( n955 ) , .X ( n729 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO21_U_0P5 U1045 ( .A1 ( n995 ) , .A2 ( \C40/DATA2_7 ) , 
    .B ( n959 ) , .X ( n731 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_0P5 ctmTdsLR_1_2373 ( .A1 ( copt_net_537 ) , .A2 ( n1782 ) , 
    .X ( n1781 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1047 ( .A1 ( n1627 ) , .A2 ( n1728 ) , .B1 ( n1626 ) , 
    .B2 ( n1708 ) , .X ( n1628 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO21_U_0P5 U1048 ( .A1 ( n995 ) , .A2 ( \C40/DATA2_8 ) , 
    .B ( n957 ) , .X ( n730 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1049 ( .A1 ( n960 ) , .A2 ( n1708 ) , .B ( n1675 ) , 
    .X ( n1725 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_0P5 U1050 ( .A1 ( n1703 ) , .A2 ( n960 ) , .X ( n1726 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1051 ( .CK ( n1721 ) , .EN ( n1691 ) , .X ( n1731 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1052 ( .A1 ( n854 ) , .A2 ( n1708 ) , .B1 ( n858 ) , 
    .B2 ( n1728 ) , .X ( n855 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1053 ( .A ( n1460 ) , .X ( n1476 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_1 ctmTdsLR_4_1966 ( .A1 ( copt_net_494 ) , .A2 ( n1891 ) , 
    .X ( copt_net_495 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1055 ( .A1 ( n1523 ) , .A2 ( n1691 ) , .B1 ( n1708 ) , 
    .B2 ( n1497 ) , .X ( n1502 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1056 ( .A1 ( \enc/stepSize [0] ) , .A2 ( n1728 ) , 
    .B1 ( n1498 ) , .B2 ( n1708 ) , .X ( n1499 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V1_2 copt_h_inst_2775 ( .A ( N47 ) , .X ( copt_net_788 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V2_1 copt_h_inst_2658 ( .A ( \cic/add_cast_5 [16] ) , 
    .X ( copt_net_683 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1059 ( .A1 ( n1665 ) , .A2 ( n1691 ) , .B1 ( n1708 ) , 
    .B2 ( n856 ) , .X ( n857 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EN3_1 ctmTdsLR_5_630 ( .A1 ( \intadd_0/n7 ) , .A2 ( copt_net_54 ) , 
    .A3 ( \intadd_0/B[12] ) , .X ( \intadd_0/SUM[12] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1061 ( .A1 ( n1708 ) , .A2 ( n1707 ) , .B1 ( n1728 ) , 
    .B2 ( n1706 ) , .X ( n1710 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1062 ( .A1 ( n2025 ) , .A2 ( n1714 ) , .B ( n1460 ) , 
    .X ( n1013 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_MM_1 ctmTdsLR_2_2374 ( .A1 ( n1783 ) , .A2 ( copt_net_536 ) , 
    .X ( copt_net_537 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1064 ( .A1 ( \enc/sampDiff [18] ) , .A2 ( n968 ) , 
    .B1 ( n891 ) , .B2 ( n1698 ) , .X ( n892 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO22_0P5 U1065 ( .A1 ( n996 ) , .A2 ( \enc/dequantSamp [16] ) , 
    .B1 ( n995 ) , .B2 ( \C40/DATA2_16 ) , .X ( n722 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1066 ( .A1 ( n1677 ) , .A2 ( n1708 ) , .B1 ( n1691 ) , 
    .B2 ( n1673 ) , .X ( n1674 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1067 ( .A1 ( n1509 ) , .A2 ( n1508 ) , .B ( n1507 ) , 
    .X ( n1527 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1068 ( .A1 ( n1545 ) , .A2 ( n1544 ) , .B ( n1698 ) , 
    .X ( n1543 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1069 ( .A1 ( n1708 ) , .A2 ( n1679 ) , .B1 ( n1728 ) , 
    .B2 ( n1678 ) , .X ( n1681 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P75 U1070 ( .A ( n1779 ) , .B1 ( ZBUF_6889_0 ) , 
    .B2 ( n1778 ) , .X ( n1777 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1071 ( .A1 ( n1708 ) , .A2 ( n1210 ) , .B1 ( n1691 ) , 
    .B2 ( n1214 ) , .X ( n1209 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO21_U_0P5 U1072 ( .A1 ( n995 ) , .A2 ( \C40/DATA2_0 ) , 
    .B ( n989 ) , .X ( n738 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1073 ( .A ( n1535 ) , .X ( n1540 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1074 ( .A1 ( n1537 ) , .A2 ( n1728 ) , .B1 ( n1708 ) , 
    .B2 ( n1536 ) , .X ( n1539 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_1 U1075 ( .A1 ( n1199 ) , .A2 ( n1185 ) , .B1 ( ZBUF_457_0 ) , 
    .B2 ( n1195 ) , .X ( n596 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO21_U_0P5 U1076 ( .A1 ( n995 ) , .A2 ( \C40/DATA2_1 ) , 
    .B ( n986 ) , .X ( n737 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1077 ( .A1 ( n1687 ) , .A2 ( n1686 ) , .B ( n1698 ) , 
    .X ( n1685 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1078 ( .A1 ( n1212 ) , .A2 ( n1708 ) , .B1 ( n1728 ) , 
    .B2 ( n1211 ) , .X ( n1213 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO21_U_0P5 U1079 ( .A1 ( n995 ) , .A2 ( \C40/DATA2_2 ) , 
    .B ( n985 ) , .X ( n736 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1080 ( .A1 ( n1532 ) , .A2 ( n1708 ) , .B1 ( n1691 ) , 
    .B2 ( n1531 ) , .X ( n1533 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1081 ( .A1 ( n988 ) , .A2 ( n980 ) , .B1 ( n1490 ) , 
    .B2 ( n2014 ) , .X ( n981 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_MM_0P5 U1082 ( .D0 ( \intadd_1/B[9] ) , 
    .D1 ( \cic/add_cast_5 [10] ) , .S ( n1773 ) , .X ( n687 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1083 ( .A1 ( n988 ) , .A2 ( n978 ) , .B1 ( n1490 ) , 
    .B2 ( n2015 ) , .X ( n979 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1084 ( .A1 ( n1553 ) , .A2 ( n1552 ) , .B ( n1716 ) , 
    .X ( n1551 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OA22_0P75 U1085 ( .A1 ( ZBUF_2257_0 ) , .A2 ( copt_net_698 ) , 
    .B1 ( ZBUF_300_0 ) , .B2 ( n2003 ) , .X ( n576 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_1 U1086 ( .D0 ( \intadd_0/SUM[7] ) , .D1 ( n1112 ) , 
    .S ( n1108 ) , .X ( n1109 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1087 ( .A1 ( n988 ) , .A2 ( n976 ) , .B1 ( n1490 ) , 
    .B2 ( n2021 ) , .X ( n977 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1088 ( .A1 ( n988 ) , .A2 ( n936 ) , .B1 ( n1490 ) , 
    .B2 ( n2019 ) , .X ( n937 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO22_0P5 U1089 ( .A1 ( n1640 ) , .A2 ( n1703 ) , .B1 ( n1722 ) , 
    .B2 ( n1636 ) , .X ( n1637 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P5 U1090 ( .A ( \enc/sampDiff [17] ) , .B1 ( n1722 ) , 
    .B2 ( n1721 ) , .X ( n968 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1091 ( .A1 ( n988 ) , .A2 ( n984 ) , .B1 ( n1490 ) , 
    .B2 ( n2010 ) , .X ( n985 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_2 ctmTdsLR_7_900 ( .A ( \intadd_0/SUM[11] ) , .X ( n1145 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1093 ( .A1 ( n1719 ) , .A2 ( n1718 ) , .B ( n1716 ) , 
    .X ( n1717 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1094 ( .A1 ( n988 ) , .A2 ( n946 ) , .B1 ( n1490 ) , 
    .B2 ( n2011 ) , .X ( n947 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_1 U1095 ( .D0 ( n1859 ) , .D1 ( copt_net_768 ) , .S ( n1857 ) , 
    .X ( n667 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO22_0P5 U1096 ( .A1 ( n1599 ) , .A2 ( n1703 ) , .B1 ( n1722 ) , 
    .B2 ( n1595 ) , .X ( n1596 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1097 ( .A ( n1703 ) , .X ( n1708 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1098 ( .A1 ( n988 ) , .A2 ( n956 ) , .B1 ( n1490 ) , 
    .B2 ( n2009 ) , .X ( n957 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_MM_0P5 U1099 ( .D0 ( \enc/predictorSamp [18] ) , 
    .D1 ( n1241 ) , .S ( n2025 ) , .X ( n719 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EO2_V1_0P75 U1100 ( .A1 ( copt_net_716 ) , .A2 ( n1999 ) , 
    .X ( n638 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AN4_0P5 ctmTdsLR_1_2536 ( .A1 ( tmp_net611 ) , .A2 ( tmp_net612 ) , 
    .A3 ( \intadd_2/B[3] ) , .A4 ( n1318 ) , .X ( n1327 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1102 ( .A ( n1722 ) , .X ( n1691 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1103 ( .A ( n1716 ) , .X ( n1698 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_EO2_1 ctmTdsLR_1_2487 ( .A1 ( \cic/add_cast_1 [15] ) , 
    .A2 ( tmp_net583 ) , .X ( n642 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P5 U1105 ( .A ( n1241 ) , .B1 ( n2025 ) , 
    .B2 ( \enc/prePredSamp [18] ) , .X ( n1460 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 ctmTdsLR_3_2152 ( .A ( copt_net_93 ) , .X ( copt_net_520 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1107 ( .A1 ( n1241 ) , .A2 ( n1012 ) , .B ( n1477 ) , 
    .X ( n1479 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1108 ( .A1 ( n988 ) , .A2 ( n958 ) , .B1 ( n1490 ) , 
    .B2 ( n2013 ) , .X ( n959 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OA2BB2_V1_0P5 U1109 ( .A1 ( \enc/stepSize [14] ) , .A2 ( n1701 ) , 
    .B1 ( \enc/stepSize [14] ) , .B2 ( n1701 ) , .X ( n1707 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_EN3_1 ctmTdsLR_5_1388 ( .A1 ( \intadd_0/n9 ) , 
    .A2 ( \intadd_0/B[10] ) , .A3 ( copt_net_354 ) , 
    .X ( \intadd_0/SUM[10] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_5_1967 ( .A ( n1894 ) , .X ( copt_net_494 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO22_0P5 U1112 ( .A1 ( n996 ) , .A2 ( \enc/dequantSamp [15] ) , 
    .B1 ( n995 ) , .B2 ( \C40/DATA2_15 ) , .X ( n723 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1113 ( .A1 ( n1509 ) , .A2 ( n1508 ) , .B ( n1716 ) , 
    .X ( n1507 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 ctmTdsLR_1_1526 ( .CK ( copt_net_404 ) , 
    .EN ( copt_net_274 ) , .X ( copt_net_275 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_0P5 U1115 ( .A1 ( n1722 ) , .A2 ( n1531 ) , .X ( n1535 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AN2_MM_0P5 U1116 ( .A1 ( n1673 ) , .A2 ( n1722 ) , .X ( n1682 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1117 ( .A1 ( n988 ) , .A2 ( n785 ) , .B1 ( n1490 ) , 
    .B2 ( n2006 ) , .X ( n986 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_0P5 U1118 ( .A1 ( n1491 ) , .A2 ( n1675 ) , .X ( n1728 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1119 ( .A ( n1210 ) , .X ( n1212 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_0P5 ctmTdsLR_3_940 ( .A1 ( \cic/sub_cast_1 [12] ) , 
    .A2 ( \intadd_1/n8 ) , .X ( copt_net_200 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 U1121 ( .A1 ( n1107 ) , .A2 ( n1113 ) , .X ( n1108 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1122 ( .CK ( n1705 ) , .EN ( n1490 ) , .X ( n1722 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1123 ( .A ( \enc/prePredSamp [18] ) , .X ( n1012 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1124 ( .A ( n996 ) , .X ( n988 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1125 ( .CK ( n1705 ) , .EN ( n1250 ) , .X ( n1716 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_1 ctmTdsLR_1_2054 ( .A1 ( copt_net_512 ) , 
    .A2 ( copt_net_513 ) , .X ( n1773 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1127 ( .CK ( n1238 ) , .EN ( n1705 ) , .X ( n1703 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V2_1 copt_h_inst_2659 ( .A ( n575 ) , .X ( copt_net_684 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1129 ( .A1 ( n868 ) , .A2 ( n1207 ) , 
    .B1 ( \enc/stepSize [13] ) , .B2 ( n1216 ) , .X ( n1701 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_4 U1130 ( .A ( \intadd_0/SUM[16] ) , .X ( n1187 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_MM_1 U1131 ( .D0 ( \cic/add_cast_1 [18] ) , .D1 ( n1995 ) , 
    .S ( tmp_net581 ) , .X ( n639 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_3_1943 ( .A1 ( n1885 ) , .A2 ( n1884 ) , 
    .X ( copt_net_488 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_6_631 ( .A ( \cic/sub_cast_3 [13] ) , 
    .X ( copt_net_54 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_1288 ( .A ( \cic/add_cast_3 [16] ) , 
    .X ( n1889 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1135 ( .A1 ( n935 ) , .A2 ( n1010 ) , .B ( n996 ) , 
    .X ( n995 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_6_1389 ( .A ( \cic/sub_cast_3 [11] ) , 
    .X ( copt_net_354 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1137 ( .A ( n1705 ) , .X ( n1675 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_ND2_1 ctmTdsLR_1_2180 ( .A1 ( copt_net_529 ) , 
    .A2 ( copt_net_528 ) , .X ( n1742 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P75 U1139 ( .A ( n1860 ) , .B1 ( ZBUF_6889_0 ) , 
    .B2 ( n1858 ) , .X ( n1857 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U1140 ( .A ( n1677 ) , .X ( n1679 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_MM_0P5 U1141 ( .D0 ( n1854 ) , .D1 ( copt_net_748 ) , 
    .S ( n1852 ) , .X ( n668 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_2 U1142 ( .A ( \intadd_0/SUM[15] ) , .X ( n1178 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1143 ( .CK ( n950 ) , .EN ( n899 ) , .X ( n1705 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_2 U1144 ( .D0 ( \intadd_1/B[8] ) , .D1 ( copt_net_692 ) , 
    .S ( n1769 ) , .X ( n688 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1145 ( .A ( n961 ) , .X ( n962 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1146 ( .A ( n1208 ) , .X ( n1207 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_1 ctmTdsLR_1_2496 ( .A1 ( tmp_net587 ) , 
    .A2 ( tmp_net588 ) , .X ( copt_net_424 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_4 U1148 ( .A1 ( \cic/add_cast_3 [10] ) , .A2 ( n1772 ) , 
    .X ( n1774 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 U1149 ( .A1 ( n1772 ) , .A2 ( \cic/add_cast_3 [10] ) , 
    .X ( n1775 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_2497 ( .A ( \cic/add_cast_1 [5] ) , 
    .X ( tmp_net587 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_2 U1151 ( .A ( n1111 ) , .X ( n1107 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_1P5 ctmTdsLR_2_1527 ( .A1 ( copt_net_30 ) , 
    .A2 ( copt_net_31 ) , .X ( copt_net_404 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1153 ( .CK ( n950 ) , .EN ( n934 ) , .X ( n996 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_4 ctmTdsLR_4_1290 ( .A1 ( n1890 ) , .A2 ( n1889 ) , 
    .B ( n1888 ) , .X ( n1891 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P5 ctmTdsLR_2_2488 ( .A1 ( n1979 ) , .A2 ( ZBUF_1627_0 ) , 
    .B ( tmp_net582 ) , .X ( tmp_net583 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_1 U1156 ( .D0 ( \intadd_0/SUM[6] ) , .D1 ( n1104 ) , 
    .S ( n1100 ) , .X ( n1101 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V2_1 copt_h_inst_2660 ( .A ( n768 ) , .X ( copt_net_685 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_4 U1158 ( .A1 ( n1855 ) , .A2 ( n1854 ) , .B ( n1853 ) , 
    .X ( n1856 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_1P5 U1159 ( .A ( \intadd_0/SUM[14] ) , .X ( n1170 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_4 U1160 ( .CK ( n1106 ) , .EN ( \cic/sub_cast_5 [8] ) , 
    .X ( n1113 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P75 U1161 ( .A ( n1855 ) , .B1 ( ZBUF_6889_0 ) , 
    .B2 ( n1853 ) , .X ( n1852 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_4 ctmTdsLR_1_901 ( .A1 ( copt_net_182 ) , 
    .A2 ( copt_net_183 ) , .B ( copt_net_184 ) , .X ( \intadd_0/n13 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_0P5 U1163 ( .A1 ( n1251 ) , .A2 ( n1019 ) , .X ( n899 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_4 U1164 ( .A1 ( \cic/sub_cast_5 [8] ) , .A2 ( n1106 ) , 
    .X ( n1111 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P75 U1165 ( .A ( n1771 ) , .B1 ( ZBUF_6889_0 ) , 
    .B2 ( n1770 ) , .X ( n1769 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_3_2489 ( .A ( n1998 ) , .B ( n1978 ) , 
    .X ( tmp_net582 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1167 ( .A1 ( n880 ) , .A2 ( n1720 ) , .B ( n879 ) , 
    .X ( n961 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1168 ( .A ( gre_a_INV_63_1 ) , 
    .B ( \enc/predictorSamp [18] ) , .CI ( n966 ) , .CO ( n891 ) , 
    .S ( n971 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_MM_1 U1169 ( .D0 ( n1983 ) , .D1 ( copt_net_777 ) , 
    .S ( n1982 ) , .X ( n641 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_4 U1170 ( .A1 ( n1771 ) , .A2 ( \intadd_1/B[8] ) , 
    .B ( n1770 ) , .X ( n1772 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P5 U1171 ( .A ( n1240 ) , .B1 ( n1014 ) , .B2 ( n1019 ) , 
    .X ( n934 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1172 ( .A1 ( n1020 ) , .A2 ( n1023 ) , .B ( n1019 ) , 
    .X ( n739 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OA2BB2_V1_0P5 U1173 ( .A1 ( \enc/stepSize [14] ) , .A2 ( n1720 ) , 
    .B1 ( \enc/stepSize [14] ) , .B2 ( n1720 ) , .X ( n1727 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1174 ( .CK ( n1672 ) , .EN ( n1671 ) , .X ( n1677 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1175 ( .A1 ( \enc/stepSize [13] ) , .A2 ( n1709 ) , 
    .B1 ( n878 ) , .B2 ( n1702 ) , .X ( n1720 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_2 U1176 ( .A1 ( \cic/add_cast_3 [9] ) , .A2 ( n1768 ) , 
    .X ( n1770 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1177 ( .CK ( n2011 ) , .EN ( n867 ) , .X ( n1672 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1178 ( .A1 ( n869 ) , .A2 ( n842 ) , .B ( n1020 ) , 
    .X ( n1019 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 U1179 ( .A1 ( n1768 ) , .A2 ( \cic/add_cast_3 [9] ) , 
    .X ( n1771 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_MM_0P5 U1180 ( .D0 ( \intadd_0/SUM[5] ) , .D1 ( n1096 ) , 
    .S ( n1088 ) , .X ( n1089 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 U1181 ( .A1 ( \cic/add_cast_1 [9] ) , .A2 ( n1851 ) , 
    .X ( n1855 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1182 ( .A1 ( \enc/predictorSamp [17] ) , .A2 ( n1715 ) , 
    .B1 ( n890 ) , .B2 ( n889 ) , .X ( n966 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AN2_MM_0P5 U1183 ( .A1 ( n2011 ) , .A2 ( n867 ) , .X ( n1671 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_MM_4 ctmTdsLR_2_902 ( .A1 ( \intadd_0/n14 ) , 
    .A2 ( \cic/sub_cast_3 [6] ) , .X ( copt_net_182 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_MM_0P5 U1185 ( .D0 ( \intadd_1/B[7] ) , 
    .D1 ( \cic/add_cast_5 [8] ) , .S ( n1765 ) , .X ( n689 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_3_2498 ( .A ( copt_net_423 ) , 
    .X ( tmp_net588 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_2 U1187 ( .A ( \intadd_0/SUM[13] ) , .X ( n1162 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1188 ( .A1 ( n1984 ) , .A2 ( n1983 ) , .B ( n1994 ) , 
    .X ( n1989 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_0P5 U1189 ( .A1 ( \cic/add_cast_1 [9] ) , .A2 ( n1851 ) , 
    .X ( n1853 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_1P5 U1190 ( .A ( n1103 ) , .X ( n1099 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_EO2_1 ctmTdsLR_1_2490 ( .A1 ( copt_net_804 ) , .A2 ( tmp_net584 ) , 
    .X ( n654 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUXI2_U_0P5 ctmTdsLR_1_2549 ( .D0 ( \enc/stepSize [5] ) , 
    .D1 ( n2021 ) , .S ( n1592 ) , .X ( n1598 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_MM_0P5 U1193 ( .D0 ( n1849 ) , .D1 ( \cic/add_cast_3 [8] ) , 
    .S ( n1847 ) , .X ( n669 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_MM_0P5 U1194 ( .D0 ( n1972 ) , .D1 ( copt_net_774 ) , 
    .S ( n1971 ) , .X ( n643 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P75 U1195 ( .A ( n1767 ) , .B1 ( ZBUF_3936_0 ) , 
    .B2 ( n1766 ) , .X ( n1765 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P5 ctmTdsLR_2_2491 ( .A1 ( n1920 ) , .A2 ( ZBUF_137_8 ) , 
    .B ( tmp_net574 ) , .X ( tmp_net584 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EO2_1 ctmTdsLR_1_2492 ( .A1 ( copt_net_775 ) , .A2 ( tmp_net586 ) , 
    .X ( n644 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_ECO_3 U1198 ( .A ( \intadd_0/SUM[12] ) , .X ( n1154 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_1 ctmTdsLR_3_1040 ( .A1 ( copt_net_250 ) , 
    .A2 ( copt_net_5 ) , .X ( copt_net_251 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUXI2_U_0P5 ctmTdsLR_1_2550 ( .D0 ( \enc/stepSize [11] ) , 
    .D1 ( n2012 ) , .S ( n1670 ) , .X ( n1678 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_3 ctmTdsLR_1_1439 ( .A1 ( copt_net_370 ) , 
    .A2 ( copt_net_371 ) , .B ( copt_net_372 ) , .X ( n1175 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U1202 ( .A ( n856 ) , .X ( n854 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_4 U1203 ( .A1 ( n1767 ) , .A2 ( \intadd_1/B[7] ) , 
    .B ( n1766 ) , .X ( n1768 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1204 ( .A1 ( n1015 ) , .A2 ( n1024 ) , .B ( n1014 ) , 
    .X ( n741 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1205 ( .A ( n1718 ) , .X ( n889 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P5 U1206 ( .A ( \enc/sampDiff [17] ) , .B1 ( n903 ) , 
    .B2 ( n841 ) , .X ( n842 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AN3_0P5 ctmTdsLR_2_2493 ( .A1 ( n1968 ) , .A2 ( tmp_net585 ) , 
    .A3 ( n1965 ) , .X ( tmp_net586 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_3_2494 ( .A ( n1998 ) , .X ( tmp_net585 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_4 U1209 ( .A1 ( n1098 ) , .A2 ( \cic/sub_cast_5 [7] ) , 
    .X ( n1105 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_1_2554 ( .A1 ( n1729 ) , .A2 ( n1721 ) , 
    .B ( n1691 ) , .X ( n964 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1211 ( .A1 ( n877 ) , .A2 ( n1205 ) , .B ( n876 ) , 
    .X ( n1702 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V2_1 copt_h_inst_2661 ( .A ( \cic/add_cast_5 [14] ) , 
    .X ( copt_net_686 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_1_1254 ( .A1 ( n1866 ) , 
    .A2 ( \cic/add_cast_1 [12] ) , .X ( n1870 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1214 ( .A1 ( n1491 ) , .A2 ( n1025 ) , .B ( n951 ) , 
    .X ( n740 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OA2BB2_V1_0P5 U1215 ( .A1 ( n2017 ) , .A2 ( n863 ) , .B1 ( n2017 ) , 
    .B2 ( n863 ) , .X ( n856 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_MM_0P5 U1216 ( .D0 ( \intadd_0/SUM[4] ) , .D1 ( n1092 ) , 
    .S ( n1080 ) , .X ( n1081 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_4 ctmTdsLR_1_1097 ( .A1 ( copt_net_43 ) , .A2 ( copt_net_45 ) , 
    .X ( n1791 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_1P5 U1218 ( .A1 ( n1764 ) , .A2 ( \cic/add_cast_3 [8] ) , 
    .X ( n1767 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_1 ctmTdsLR_1_2499 ( .A ( tmp_net590 ) , 
    .X ( \intadd_0/B[6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1220 ( .A1 ( n840 ) , .A2 ( n839 ) , 
    .B1 ( \enc/sampDiff [16] ) , .B2 ( n2019 ) , .X ( n841 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1221 ( .A1 ( \enc/stepSize [11] ) , .A2 ( n1680 ) , 
    .B1 ( n875 ) , .B2 ( n1670 ) , .X ( n1205 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_MM_0P5 U1222 ( .D0 ( \intadd_1/B[6] ) , .D1 ( copt_net_758 ) , 
    .S ( n1761 ) , .X ( n690 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_1 U1223 ( .A1 ( \cic/add_cast_3 [8] ) , .A2 ( n1764 ) , 
    .X ( n1766 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1224 ( .A1 ( \enc/predictorSamp [16] ) , 
    .A2 ( copt_net_760 ) , .B1 ( n1693 ) , .B2 ( n1696 ) , .X ( n1718 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EO2_1P5 ctmTdsLR_4_941 ( .A1 ( copt_net_201 ) , 
    .A2 ( \intadd_1/n8 ) , .X ( \intadd_0/B[11] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1226 ( .A1 ( n933 ) , .A2 ( n932 ) , .B ( n1015 ) , 
    .X ( n1014 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_2_1440 ( .A1 ( copt_net_245 ) , .A2 ( n1179 ) , 
    .X ( copt_net_370 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_1 ctmTdsLR_2_2592 ( .A1 ( ZBUF_3910_0 ) , .A2 ( n1991 ) , 
    .X ( tmp_net641 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_4 U1229 ( .A1 ( n1973 ) , .A2 ( n1972 ) , .B ( n1994 ) , 
    .X ( n1978 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_MM_0P5 U1230 ( .D0 ( n1844 ) , .D1 ( \cic/add_cast_3 [7] ) , 
    .S ( n1842 ) , .X ( n670 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P75 ctmTdsLR_3_1441 ( .A ( ZBUF_9_0 ) , .X ( copt_net_371 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_1_2555 ( .A1 ( n1394 ) , .A2 ( n1361 ) , 
    .B ( tmp_net619 ) , .X ( n1295 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1233 ( .A1 ( n864 ) , .A2 ( n863 ) , 
    .B1 ( \enc/stepSize [10] ) , .B2 ( n924 ) , .X ( n1653 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OA2BB2_V1_0P5 U1234 ( .A1 ( \enc/stepSize [9] ) , .A2 ( n1635 ) , 
    .B1 ( \enc/stepSize [9] ) , .B2 ( n1635 ) , .X ( n1640 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_7_1390 ( .A ( \intadd_0/SUM[10] ) , 
    .X ( copt_net_247 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_MM_0P5 U1236 ( .D0 ( n1962 ) , .D1 ( \cic/add_cast_1 [12] ) , 
    .S ( n1961 ) , .X ( n645 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1237 ( .A1 ( n874 ) , .A2 ( n1654 ) , .B ( n873 ) , 
    .X ( n1670 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1238 ( .A1 ( n850 ) , .A2 ( n1635 ) , .B ( n849 ) , 
    .X ( n863 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OA2BB2_V1_0P5 U1239 ( .A1 ( n2017 ) , .A2 ( n1654 ) , 
    .B1 ( n2017 ) , .B2 ( n1654 ) , .X ( n1663 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_1P5 U1240 ( .A ( \intadd_0/SUM[10] ) , .X ( n1136 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1241 ( .A ( n950 ) , .X ( n951 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_EO2_V1_0P75 ctmTdsLR_2_2500 ( .A1 ( tmp_net589 ) , 
    .A2 ( copt_net_225 ) , .X ( tmp_net590 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_MM_0P5 U1243 ( .A1 ( n1079 ) , .A2 ( n1085 ) , .X ( n1080 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_0P5 ctmTdsLR_3_814 ( .A1 ( \intadd_1/n17 ) , 
    .A2 ( \cic/sub_cast_1 [3] ) , .X ( copt_net_149 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_4 ctmTdsLR_1_854 ( .A1 ( copt_net_165 ) , 
    .A2 ( copt_net_166 ) , .B ( copt_net_149 ) , .X ( \intadd_1/n16 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P75 U1246 ( .A ( n1763 ) , .B1 ( ZBUF_3936_0 ) , 
    .B2 ( n1762 ) , .X ( n1761 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1247 ( .A1 ( n1201 ) , .A2 ( n1204 ) , .B ( n888 ) , 
    .X ( n1696 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1248 ( .A1 ( n865 ) , .A2 ( n838 ) , .B ( n837 ) , 
    .X ( n839 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_1 ctmTdsLR_3_2501 ( .A ( \intadd_1/n13 ) , .X ( tmp_net589 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 ctmTdsLR_1_2531 ( .A1 ( n1375 ) , .A2 ( tmp_net608 ) , 
    .B1 ( n1321 ) , .B2 ( n1440 ) , .X ( n1285 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OR2_1 U1251 ( .A1 ( n1979 ) , .A2 ( \cic/add_cast_1 [15] ) , 
    .X ( n1985 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_1_633 ( .A1 ( n1901 ) , .A2 ( copt_net_55 ) , 
    .X ( n1903 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OR2_MM_0P5 ctmTdsLR_1_2551 ( .A1 ( tmp_net617 ) , .A2 ( n2002 ) , 
    .X ( n1047 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_ECO_1 ctmTdsLR_2_2552 ( .A1 ( \cic/cur_count [2] ) , 
    .A2 ( \cic/cur_count [0] ) , .X ( tmp_net617 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_1 ctmTdsLR_4_1442 ( .A1 ( copt_net_370 ) , .A2 ( ZBUF_9_6 ) , 
    .X ( copt_net_372 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_MM_0P5 U1256 ( .D0 ( \intadd_0/SUM[3] ) , .D1 ( n1093 ) , 
    .S ( n1063 ) , .X ( n1064 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1257 ( .A1 ( \enc/stepSize [8] ) , .A2 ( n905 ) , 
    .B1 ( n848 ) , .B2 ( n1613 ) , .X ( n1635 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_MM_0P5 U1258 ( .D0 ( n1839 ) , .D1 ( \cic/add_cast_3 [6] ) , 
    .S ( n1837 ) , .X ( n671 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_4 U1259 ( .A1 ( n1085 ) , .A2 ( n1092 ) , .B ( n1084 ) , 
    .X ( n1086 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_1_1982 ( .A1 ( copt_net_498 ) , 
    .A2 ( copt_net_499 ) , .B ( \cic/add_cast_3 [7] ) , .X ( n1762 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_3_706 ( .A ( n1067 ) , .X ( copt_net_95 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_MM_0P5 U1262 ( .D0 ( \intadd_1/B[5] ) , 
    .D1 ( \cic/add_cast_5 [6] ) , .S ( n1757 ) , .X ( n691 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P5 U1263 ( .A1 ( n817 ) , .A2 ( n816 ) , .B ( n815 ) , 
    .X ( n950 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 ctmTdsLR_2_2503 ( .CK ( tmp_net591 ) , .EN ( n849 ) , 
    .X ( tmp_net592 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_1255 ( .A ( \cic/add_cast_3 [12] ) , 
    .X ( n1869 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 ctmTdsLR_3_2504 ( .A ( n834 ) , .X ( tmp_net591 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1267 ( .A1 ( \enc/predictorSamp [14] ) , .A2 ( n1683 ) , 
    .B1 ( n887 ) , .B2 ( n1687 ) , .X ( n1204 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P5 U1268 ( .A ( n864 ) , .B1 ( n836 ) , .B2 ( n866 ) , 
    .X ( n838 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_2 U1269 ( .A1 ( n1963 ) , .A2 ( n1962 ) , .B ( n1994 ) , 
    .X ( n1968 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1270 ( .A ( n1084 ) , .X ( n1079 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_1 ctmTdsLR_4_707 ( .A1 ( \cic/sub_cast_5 [1] ) , 
    .A2 ( \cic/sub_cast_5 [0] ) , .X ( copt_net_96 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_2553 ( .A1 ( copt_net_205 ) , 
    .A2 ( copt_net_521 ) , .B ( copt_net_523 ) , .X ( copt_net_327 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1273 ( .A1 ( \enc/stepSize [9] ) , .A2 ( n924 ) , 
    .B1 ( n872 ) , .B2 ( n871 ) , .X ( n1654 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OA21B_1 ctmTdsLR_1_2505 ( .A1 ( n1913 ) , .A2 ( tmp_net593 ) , 
    .B ( ZBUF_137_8 ) , .X ( n1923 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EN2_0P5 ctmTdsLR_4_815 ( .A1 ( copt_net_150 ) , 
    .A2 ( \intadd_1/n17 ) , .X ( \intadd_0/B[2] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_2 ctmTdsLR_1_2008 ( .A1 ( \cic/add_cast_3 [18] ) , 
    .A2 ( n1804 ) , .X ( n1806 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1277 ( .A ( n1228 ) , .X ( n1229 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1278 ( .A1 ( \enc/stepSize [8] ) , .A2 ( n1634 ) , 
    .B1 ( n2009 ) , .B2 ( n1633 ) , .X ( n1639 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1279 ( .A1 ( n852 ) , .A2 ( n1633 ) , .B ( n851 ) , 
    .X ( n871 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_2 ctmTdsLR_1_2350 ( .A1 ( copt_net_511 ) , 
    .A2 ( copt_net_510 ) , .X ( n1872 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1281 ( .A1 ( \enc/sampDiff [13] ) , .A2 ( n2011 ) , 
    .B ( n927 ) , .X ( n929 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_MM_0P5 U1282 ( .D0 ( n1952 ) , .D1 ( copt_net_778 ) , 
    .S ( n1951 ) , .X ( n647 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1283 ( .CK ( n1062 ) , .EN ( n1076 ) , .X ( n1063 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1284 ( .A1 ( n1656 ) , .A2 ( n1659 ) , .B ( n886 ) , 
    .X ( n1687 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P5 U1285 ( .A ( ZBUF_2_19 ) , .B1 ( ZBUF_6889_0 ) , 
    .B2 ( n1758 ) , .X ( n1757 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1286 ( .A1 ( n814 ) , .A2 ( n813 ) , .B ( n1491 ) , 
    .X ( n815 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EO2_1 ctmTdsLR_5_942 ( .A1 ( \cic/sub_cast_1 [12] ) , 
    .A2 ( \intadd_1/B[11] ) , .X ( copt_net_201 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_EO2_V1_0P75 ctmTdsLR_5_984 ( .A1 ( \cic/sub_cast_1 [7] ) , 
    .A2 ( \intadd_1/B[6] ) , .X ( copt_net_225 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P75 U1289 ( .A ( n1840 ) , .B1 ( ZBUF_6889_0 ) , 
    .B2 ( n1838 ) , .X ( n1837 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1290 ( .A ( n1612 ) , .X ( n1613 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_1_943 ( .A1 ( copt_net_56 ) , .A2 ( copt_net_202 ) , 
    .X ( n1783 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_1_2593 ( .A ( tmp_net643 ) , 
    .B ( ZBUF_4058_0 ) , .X ( n1049 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_1 ctmTdsLR_2_1413 ( .A ( n1169 ) , .X ( copt_net_362 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_MM_0P5 U1294 ( .D0 ( n1834 ) , .D1 ( \cic/add_cast_3 [5] ) , 
    .S ( n1832 ) , .X ( n672 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_MM_0P5 U1295 ( .D0 ( \intadd_1/B[4] ) , .D1 ( copt_net_726 ) , 
    .S ( n1753 ) , .X ( n692 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_MM_0P5 U1296 ( .D0 ( n1947 ) , .D1 ( copt_net_769 ) , 
    .S ( n1946 ) , .X ( n648 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1297 ( .A1 ( n1225 ) , .A2 ( n847 ) , .B ( n846 ) , 
    .X ( n1612 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P5 U1298 ( .A ( n812 ) , .B1 ( n1634 ) , .B2 ( n811 ) , 
    .X ( n813 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1299 ( .A1 ( n2025 ) , .A2 ( n1440 ) , .B1 ( n1021 ) , 
    .B2 ( n943 ) , .X ( n548 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1300 ( .A ( n1077 ) , .X ( n1062 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1301 ( .A1 ( \enc/stepSize [7] ) , .A2 ( n1226 ) , 
    .B1 ( n2013 ) , .B2 ( n1225 ) , .X ( n1228 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1302 ( .A1 ( \enc/predictorSamp [12] ) , .A2 ( n1151 ) , 
    .B1 ( n885 ) , .B2 ( n884 ) , .X ( n1659 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_1 ctmTdsLR_1_1528 ( .A1 ( copt_net_406 ) , 
    .A2 ( copt_net_407 ) , .X ( n1801 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 U1304 ( .A1 ( n1756 ) , .A2 ( \cic/add_cast_3 [6] ) , 
    .X ( n1759 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EN2_1 ctmTdsLR_5_816 ( .A1 ( \intadd_1/B[2] ) , 
    .A2 ( \cic/sub_cast_1 [3] ) , .X ( copt_net_150 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1306 ( .A1 ( n1953 ) , .A2 ( n1952 ) , .B ( n1994 ) , 
    .X ( n1958 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1307 ( .A1 ( n2025 ) , .A2 ( n1425 ) , .B1 ( n1021 ) , 
    .B2 ( n1018 ) , .X ( n554 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1308 ( .A ( n1634 ) , .X ( n1633 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1309 ( .CK ( \enc/sampDiff [16] ) , .EN ( n1700 ) , 
    .X ( n1721 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1310 ( .A1 ( n926 ) , .A2 ( n925 ) , 
    .B1 ( \enc/stepSize [11] ) , .B2 ( n924 ) , .X ( n927 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1311 ( .A1 ( \intadd_2/SUM[3] ) , .A2 ( n1021 ) , 
    .B1 ( n2025 ) , .B2 ( \intadd_2/B[3] ) , .X ( n552 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1312 ( .A1 ( \enc/sampDiff [11] ) , .A2 ( n2018 ) , 
    .B1 ( n833 ) , .B2 ( n832 ) , .X ( n834 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_4 ctmTdsLR_1_1371 ( .A1 ( n1876 ) , 
    .A2 ( \cic/add_cast_1 [14] ) , .X ( n1880 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1314 ( .A1 ( n2025 ) , .A2 ( \intadd_2/A[0] ) , 
    .B1 ( \intadd_2/SUM[0] ) , .B2 ( n1021 ) , .X ( n549 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_2 U1315 ( .A ( \intadd_0/SUM[7] ) , .X ( n1112 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_1 ctmTdsLR_1_2439 ( .A1 ( n1989 ) , .A2 ( tmp_net552 ) , 
    .X ( n1987 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_1_2607 ( .A1 ( n1567 ) , .A2 ( tmp_net651 ) , 
    .B ( tmp_net653 ) , .X ( n756 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_4_738 ( .A ( \cic/sub_cast_3 [14] ) , 
    .X ( copt_net_111 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_1 ctmTdsLR_3_1256 ( .A1 ( n1866 ) , 
    .A2 ( \cic/add_cast_1 [12] ) , .X ( n1868 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1320 ( .A ( n1226 ) , .X ( n1225 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OR2_MM_0P5 U1321 ( .A1 ( \enc/sampDiff [15] ) , .A2 ( n1214 ) , 
    .X ( n1700 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1322 ( .A1 ( n2025 ) , .A2 ( \intadd_2/A[1] ) , 
    .B1 ( n983 ) , .B2 ( n993 ) , .X ( n550 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1323 ( .A1 ( n2025 ) , .A2 ( \intadd_2/B[2] ) , 
    .B1 ( n994 ) , .B2 ( n993 ) , .X ( n551 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OR2_MM_0P5 ctmTdsLR_2_2506 ( .A1 ( n1912 ) , .A2 ( copt_net_168 ) , 
    .X ( tmp_net593 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OA2BB2_V1_0P5 U1325 ( .A1 ( \enc/stepSize [7] ) , .A2 ( n1617 ) , 
    .B1 ( \enc/stepSize [7] ) , .B2 ( n1617 ) , .X ( n1627 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_MM_0P5 U1326 ( .D0 ( n1942 ) , .D1 ( \cic/add_cast_1 [8] ) , 
    .S ( n1941 ) , .X ( n649 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_1 U1327 ( .A ( n1755 ) , .B1 ( ZBUF_6889_0 ) , .B2 ( n1754 ) , 
    .X ( n1753 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_1372 ( .A ( \cic/add_cast_3 [14] ) , 
    .X ( n1879 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_3 U1329 ( .A ( \intadd_0/SUM[6] ) , .X ( n1104 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_2_2508 ( .A1 ( n1641 ) , 
    .A2 ( \enc/stepSize [8] ) , .X ( tmp_net594 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_4 ctmTdsLR_4_1257 ( .A1 ( n1870 ) , .A2 ( n1869 ) , 
    .B ( n1868 ) , .X ( n1871 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1332 ( .A1 ( n1644 ) , .A2 ( n1648 ) , .B ( n1646 ) , 
    .X ( n884 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_2_1776 ( .A1 ( copt_net_256 ) , .A2 ( n1188 ) , 
    .B ( ZBUF_9_4 ) , .X ( copt_net_446 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1334 ( .A1 ( \intadd_2/SUM[4] ) , .A2 ( n993 ) , 
    .B1 ( n2025 ) , .B2 ( \intadd_2/B[4] ) , .X ( n553 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1335 ( .A1 ( n831 ) , .A2 ( n846 ) , .B ( n848 ) , 
    .X ( n833 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1336 ( .A1 ( n1614 ) , .A2 ( n809 ) , 
    .B1 ( \enc/sampDiff [10] ) , .B2 ( n2013 ) , .X ( n1634 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V2_1 copt_h_inst_2776 ( .A ( n571 ) , .X ( copt_net_789 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OR2_MM_0P5 U1338 ( .A1 ( n992 ) , .A2 ( n993 ) , .X ( n1021 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1339 ( .CK ( n992 ) , .EN ( n991 ) , .X ( n994 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P5 U1340 ( .A ( n1438 ) , .B1 ( n1437 ) , .B2 ( n1436 ) , 
    .X ( n770 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_MM_0P5 U1341 ( .D0 ( \intadd_1/B[3] ) , 
    .D1 ( \cic/add_cast_5 [4] ) , .S ( n1749 ) , .X ( n693 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1342 ( .A1 ( \enc/sampDiff [8] ) , .A2 ( n830 ) , 
    .B ( n829 ) , .X ( n831 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1343 ( .A1 ( n1293 ) , .A2 ( n1292 ) , 
    .B ( \intadd_2/B[4] ) , .X ( n1298 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P5 ctmTdsLR_2_2440 ( .A1 ( n1990 ) , .A2 ( ZBUF_1627_0 ) , 
    .B ( n1998 ) , .X ( tmp_net552 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1345 ( .A1 ( n1943 ) , .A2 ( n1942 ) , .B ( n1994 ) , 
    .X ( n1948 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_4_1550 ( .A ( \cic/add_cast_3 [11] ) , 
    .X ( copt_net_412 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_2 ctmTdsLR_3_1373 ( .A1 ( n1876 ) , 
    .A2 ( \cic/add_cast_1 [14] ) , .X ( n1878 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_4 ctmTdsLR_4_1374 ( .A1 ( n1880 ) , .A2 ( n1879 ) , 
    .B ( n1878 ) , .X ( n1881 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OA21B_1 ctmTdsLR_2_2556 ( .A1 ( n1439 ) , .A2 ( n1423 ) , 
    .B ( tmp_net618 ) , .X ( tmp_net619 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_1_1323 ( .A1 ( n1752 ) , 
    .A2 ( \cic/add_cast_3 [5] ) , .X ( n1755 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1351 ( .A1 ( \enc/predictorSamp [10] ) , .A2 ( n1619 ) , 
    .B1 ( n1620 ) , .B2 ( n1623 ) , .X ( n1648 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1352 ( .CK ( n992 ) , .EN ( n982 ) , .X ( n983 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OR2_MM_0P5 U1353 ( .A1 ( \enc/sampDiff [14] ) , .A2 ( n1673 ) , 
    .X ( n1214 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1354 ( .A1 ( n1600 ) , .A2 ( n1593 ) , .B ( n1594 ) , 
    .X ( n1226 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AN2_MM_1 ctmTdsLR_1_2385 ( .A1 ( \cic/add_cast_1 [0] ) , 
    .A2 ( \cic/add_cast_1 [1] ) , .X ( copt_net_500 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OA21B_U_0P5 U1356 ( .A1 ( n1616 ) , .A2 ( n1615 ) , .B ( n1614 ) , 
    .X ( n1617 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_MM_0P5 U1357 ( .D0 ( n1937 ) , .D1 ( \cic/add_cast_1 [7] ) , 
    .S ( n1936 ) , .X ( n650 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_MM_0P5 U1358 ( .D0 ( n1829 ) , .D1 ( \cic/add_cast_3 [4] ) , 
    .S ( n1827 ) , .X ( n673 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_2_2608 ( .A1 ( n1723 ) , .A2 ( n1566 ) , 
    .X ( tmp_net651 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1360 ( .A1 ( \enc/stepSize [7] ) , .A2 ( n905 ) , 
    .B1 ( n1616 ) , .B2 ( n1615 ) , .X ( n809 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1361 ( .A1 ( \intadd_2/n1 ) , .A2 ( n1025 ) , 
    .B ( n941 ) , .X ( n993 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2B_U_0P5 U1362 ( .A ( n1594 ) , .B ( n1593 ) , .X ( n1599 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P5 U1363 ( .A ( n1314 ) , .B1 ( n1313 ) , .B2 ( n1312 ) , 
    .X ( \enc/N1094 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1364 ( .CK ( n1415 ) , .EN ( n1414 ) , .X ( n1416 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_3_2557 ( .A1 ( n1396 ) , .A2 ( n1421 ) , 
    .X ( tmp_net618 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1366 ( .A1 ( n1304 ) , .A2 ( n1303 ) , .B ( n1385 ) , 
    .X ( n1313 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1367 ( .A1 ( n1347 ) , .A2 ( n1330 ) , .B ( n1329 ) , 
    .X ( n1331 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OR2_MM_0P5 ctmTdsLR_1_2527 ( .A1 ( tmp_net606 ) , .A2 ( n931 ) , 
    .X ( n932 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P75 U1369 ( .A ( n1830 ) , .B1 ( ZBUF_6889_0 ) , 
    .B2 ( n1828 ) , .X ( n1827 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_1 U1370 ( .A ( ZBUF_2_15 ) , .B1 ( ZBUF_6889_0 ) , 
    .B2 ( n1750 ) , .X ( n1749 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_0P5 U1371 ( .A1 ( n918 ) , .A2 ( \enc/sampDiff [9] ) , 
    .X ( n920 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P5 U1372 ( .A ( \enc/sampDiff [13] ) , .B1 ( n1665 ) , 
    .B2 ( n924 ) , .X ( n1673 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1373 ( .A1 ( \intadd_2/n1 ) , .A2 ( n1025 ) , 
    .B ( n1477 ) , .X ( n941 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 ctmTdsLR_3_2509 ( .CK ( tmp_net595 ) , .EN ( n872 ) , 
    .X ( tmp_net596 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1375 ( .A1 ( n828 ) , .A2 ( \enc/stepSize [6] ) , 
    .B ( n847 ) , .X ( n829 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1376 ( .A1 ( n918 ) , .A2 ( \enc/sampDiff [9] ) , 
    .B ( n2009 ) , .X ( n921 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_MM_0P5 U1377 ( .D0 ( n1932 ) , .D1 ( \cic/add_cast_1 [6] ) , 
    .S ( n1931 ) , .X ( n651 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_4 U1378 ( .A1 ( n1751 ) , .A2 ( \intadd_1/B[3] ) , 
    .B ( n1750 ) , .X ( n1752 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P5 U1379 ( .A ( n1272 ) , .B1 ( n1271 ) , .B2 ( n1340 ) , 
    .X ( n771 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_1 U1380 ( .A ( \intadd_0/SUM[4] ) , .X ( n1092 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_1_2558 ( .A1 ( \intadd_2/B[3] ) , .A2 ( n1360 ) , 
    .B ( tmp_net621 ) , .X ( n1370 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1382 ( .A1 ( \intadd_2/SUM[3] ) , .A2 ( n940 ) , 
    .B ( \intadd_2/SUM[4] ) , .X ( n992 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1383 ( .CK ( \enc/stepSize [6] ) , .EN ( n828 ) , 
    .X ( n830 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_2_855 ( .A1 ( \intadd_1/n17 ) , 
    .A2 ( \cic/sub_cast_1 [3] ) , .X ( copt_net_165 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1385 ( .A1 ( n1588 ) , .A2 ( n808 ) , 
    .B1 ( \enc/sampDiff [8] ) , .B2 ( n2021 ) , .X ( n1615 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_1 U1386 ( .A1 ( n2008 ) , .A2 ( n845 ) , .X ( n1593 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1387 ( .A1 ( n1436 ) , .A2 ( n1413 ) , .B ( n1412 ) , 
    .X ( n1414 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1388 ( .A1 ( n1220 ) , .A2 ( n1223 ) , .B ( n793 ) , 
    .X ( n1623 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EN3_2 ctmTdsLR_1_739 ( .A1 ( copt_net_113 ) , 
    .A2 ( \cic/sub_cast_1 [1] ) , .A3 ( \intadd_1/B[0] ) , 
    .X ( \intadd_0/B[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1390 ( .A1 ( n1384 ) , .A2 ( n1409 ) , .B ( n1307 ) , 
    .X ( n1311 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1391 ( .A1 ( n1590 ) , .A2 ( n1589 ) , 
    .B1 ( \enc/stepSize [5] ) , .B2 ( n1600 ) , .X ( n808 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1392 ( .A1 ( n1396 ) , .A2 ( n1394 ) , .B ( n1302 ) , 
    .X ( n1303 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_2 U1393 ( .A1 ( \cic/add_cast_1 [4] ) , .A2 ( n1826 ) , 
    .X ( n1828 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1394 ( .A1 ( \intadd_2/B[3] ) , .A2 ( n1411 ) , 
    .B ( n1410 ) , .X ( n1412 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1395 ( .A1 ( n1384 ) , .A2 ( n1343 ) , .B1 ( n1269 ) , 
    .B2 ( \intadd_2/B[4] ) , .X ( n1272 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1396 ( .A1 ( \enc/stepSize [5] ) , .A2 ( n913 ) , 
    .B1 ( n844 ) , .B2 ( n1572 ) , .X ( n845 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OA21B_U_0P5 U1397 ( .A1 ( n1590 ) , .A2 ( n1589 ) , .B ( n1588 ) , 
    .X ( n1592 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_2 ctmTdsLR_2_1324 ( .A ( \cic/add_cast_5 [5] ) , 
    .X ( \intadd_1/B[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1399 ( .A1 ( \enc/stepSize [3] ) , .A2 ( n1559 ) , 
    .B1 ( n2014 ) , .B2 ( n1567 ) , .X ( n1562 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_4_2510 ( .A ( n874 ) , .X ( tmp_net595 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OA2BB2_V1_0P5 U1401 ( .A1 ( \enc/stepSize [5] ) , .A2 ( n1572 ) , 
    .B1 ( \enc/stepSize [5] ) , .B2 ( n1572 ) , .X ( n1581 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1402 ( .A1 ( n945 ) , .A2 ( \intadd_2/B[4] ) , 
    .B ( n1336 ) , .X ( \enc/N1105 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1403 ( .A1 ( \enc/predictorSamp [8] ) , .A2 ( n1603 ) , 
    .B1 ( n792 ) , .B2 ( n1607 ) , .X ( n1223 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_MM_0P5 U1404 ( .A1 ( n1826 ) , .A2 ( \cic/add_cast_1 [4] ) , 
    .X ( n1830 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_0P5 U1405 ( .A1 ( \enc/stepSize [3] ) , .A2 ( n1567 ) , 
    .X ( n1556 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_MM_0P5 U1406 ( .D0 ( n1926 ) , .D1 ( \cic/add_cast_1 [5] ) , 
    .S ( n1925 ) , .X ( n652 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1407 ( .A1 ( \enc/stepSize [7] ) , .A2 ( n1600 ) , 
    .B1 ( n917 ) , .B2 ( n916 ) , .X ( n918 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1408 ( .A ( n1560 ) , .X ( n1557 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1409 ( .A1 ( \intadd_2/B[4] ) , .A2 ( n1344 ) , 
    .B1 ( n1423 ) , .B2 ( n1343 ) , .X ( n1345 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1410 ( .A1 ( n1455 ) , .A2 ( n1328 ) , .B1 ( n1327 ) , 
    .B2 ( n1326 ) , .X ( n1329 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1411 ( .A ( n1611 ) , .X ( n1636 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OA21B_1 ctmTdsLR_2_2559 ( .A1 ( n1448 ) , .A2 ( n1452 ) , 
    .B ( tmp_net620 ) , .X ( tmp_net621 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P5 U1413 ( .A ( n1433 ) , .B1 ( n1281 ) , .B2 ( n1267 ) , 
    .X ( n773 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EO2_1P5 ctmTdsLR_1_1003 ( .A1 ( copt_net_235 ) , 
    .A2 ( \intadd_1/n7 ) , .X ( \intadd_0/B[12] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_MM_0P5 U1415 ( .D0 ( n1824 ) , .D1 ( \cic/add_cast_3 [3] ) , 
    .S ( n1822 ) , .X ( n674 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_1 U1416 ( .A1 ( \cic/add_cast_3 [4] ) , .A2 ( n1748 ) , 
    .X ( n1750 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_ECO_1 ctmTdsLR_2_2594 ( .A1 ( \cic/cur_count [3] ) , 
    .A2 ( tmp_net642 ) , .X ( tmp_net643 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_MM_0P5 U1418 ( .D0 ( \intadd_1/B[2] ) , 
    .D1 ( \cic/add_cast_5 [3] ) , .S ( n1745 ) , .X ( n694 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1419 ( .A1 ( n1381 ) , .A2 ( \intadd_2/B[3] ) , 
    .B1 ( n1380 ) , .B2 ( \intadd_2/B[4] ) , .X ( n1393 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1420 ( .A1 ( n1327 ) , .A2 ( n1423 ) , .B1 ( n1326 ) , 
    .B2 ( n1450 ) , .X ( n1330 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1421 ( .CK ( \enc/sampDiff [11] ) , .EN ( n1611 ) , 
    .X ( n1665 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_1P5 ctmTdsLR_1_2525 ( .A ( tmp_net605 ) , .X ( n1954 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1423 ( .A1 ( n1287 ) , .A2 ( n1286 ) , 
    .B ( \intadd_2/B[3] ) , .X ( n1290 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1424 ( .A1 ( n1933 ) , .A2 ( n1932 ) , .B ( n1994 ) , 
    .X ( n1938 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_1 U1425 ( .A ( n1924 ) , .B1 ( ZBUF_6889_0 ) , .B2 ( n1927 ) , 
    .X ( n1925 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1426 ( .A ( \intadd_2/SUM[2] ) , .X ( n991 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OR2_MM_2 U1427 ( .A1 ( n1939 ) , .A2 ( \cic/add_cast_1 [7] ) , 
    .X ( n1944 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1428 ( .A1 ( \enc/sampDiff [6] ) , .A2 ( n2014 ) , 
    .B1 ( n1566 ) , .B2 ( n1559 ) , .X ( n1589 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1429 ( .A1 ( n1356 ) , .A2 ( n1396 ) , .B ( n1274 ) , 
    .X ( n1277 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P5 U1430 ( .A ( \enc/sampDiff [9] ) , .B1 ( n905 ) , 
    .B2 ( n1629 ) , .X ( n1611 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_1 U1431 ( .A ( n1747 ) , .B1 ( ZBUF_6889_0 ) , .B2 ( n1746 ) , 
    .X ( n1745 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2B_U_0P5 U1432 ( .A ( n1555 ) , .B ( n1554 ) , .X ( n1560 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1433 ( .A1 ( n1402 ) , .A2 ( n1423 ) , .B ( n1362 ) , 
    .X ( n1363 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1434 ( .A ( n1559 ) , .X ( n1567 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1435 ( .A1 ( n1382 ) , .A2 ( n1452 ) , .B ( n1445 ) , 
    .X ( n1276 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 copt_h_inst_2663 ( .A ( \cic/sub_cast_5 [5] ) , 
    .X ( copt_net_688 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1437 ( .A1 ( n1270 ) , .A2 ( n1394 ) , .B ( n1415 ) , 
    .X ( n1336 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1438 ( .A1 ( n1575 ) , .A2 ( n1578 ) , .B ( n791 ) , 
    .X ( n1607 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1439 ( .A1 ( n1359 ) , .A2 ( n1358 ) , .B ( n1385 ) , 
    .X ( n1372 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P5 U1440 ( .A ( n878 ) , .B1 ( n804 ) , .B2 ( n880 ) , 
    .X ( n816 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1441 ( .A1 ( \enc/stepSize [4] ) , .A2 ( n843 ) , 
    .B ( n824 ) , .X ( n827 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1442 ( .A1 ( n1402 ) , .A2 ( n1413 ) , .B ( n1401 ) , 
    .X ( n1417 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_1 ctmTdsLR_2_944 ( .A1 ( copt_net_57 ) , .A2 ( n1778 ) , 
    .X ( copt_net_202 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1444 ( .CK ( n784 ) , .EN ( n785 ) , 
    .X ( \DP_OP_85J1_126_8300/n17 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_1 U1445 ( .A ( n1825 ) , .B1 ( ZBUF_6889_0 ) , .B2 ( n1823 ) , 
    .X ( n1822 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1446 ( .A1 ( n1350 ) , .A2 ( n1349 ) , .B ( n1385 ) , 
    .X ( n1351 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_3_2595 ( .A ( n1047 ) , .X ( tmp_net642 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_V1_4 ctmTdsLR_1_785 ( .A1 ( copt_net_137 ) , 
    .A2 ( copt_net_136 ) , .B ( copt_net_118 ) , .X ( \intadd_1/n17 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1449 ( .A1 ( n1387 ) , .A2 ( n1386 ) , .B ( n1385 ) , 
    .X ( n1392 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_3_2560 ( .A1 ( n1363 ) , 
    .A2 ( \intadd_2/B[4] ) , .X ( tmp_net620 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OR2_MM_0P5 U1451 ( .A1 ( \intadd_2/SUM[2] ) , 
    .A2 ( \intadd_2/SUM[1] ) , .X ( n940 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1452 ( .A1 ( n1409 ) , .A2 ( n1408 ) , .B1 ( n1446 ) , 
    .B2 ( n1407 ) , .X ( n1410 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1453 ( .A1 ( n1420 ) , .A2 ( n1390 ) , .B ( n1389 ) , 
    .X ( n1391 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_1_2561 ( .A1 ( \enc/stepSize [1] ) , 
    .A2 ( tmp_net622 ) , .B ( tmp_net624 ) , .X ( n1520 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1455 ( .A1 ( n1288 ) , .A2 ( n1402 ) , .B ( n1442 ) , 
    .X ( n1289 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1456 ( .A ( n1402 ) , .X ( n1343 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1457 ( .A1 ( \enc/sampDiff [6] ) , .A2 ( n1555 ) , 
    .B ( n1554 ) , .X ( n1572 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1458 ( .A1 ( n1325 ) , .A2 ( n1427 ) , .B ( n1266 ) , 
    .X ( n1267 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_MM_0P5 U1459 ( .D0 ( \cic/add_cast_1 [4] ) , .D1 ( n1929 ) , 
    .S ( n1922 ) , .X ( n653 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1460 ( .A1 ( n1447 ) , .A2 ( n1446 ) , .B ( n1445 ) , 
    .X ( n1458 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V1_1 copt_h_inst_2664 ( .A ( copt_net_688 ) , 
    .X ( copt_net_689 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_4 U1462 ( .A1 ( n1825 ) , .A2 ( n1824 ) , .B ( n1823 ) , 
    .X ( n1826 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1463 ( .CK ( n1444 ) , .EN ( \intadd_2/B[4] ) , 
    .X ( n1459 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1464 ( .A ( n1536 ) , .X ( n1532 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P5 U1465 ( .A ( n1347 ) , .B1 ( n1379 ) , .B2 ( n1309 ) , 
    .X ( n1310 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1466 ( .CK ( \enc/stepSize [4] ) , .EN ( n843 ) , 
    .X ( n1555 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1467 ( .A1 ( n2006 ) , .A2 ( n1238 ) , .B ( n1009 ) , 
    .X ( \C1/Z_3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1468 ( .A1 ( n2007 ) , .A2 ( n1238 ) , .B ( n997 ) , 
    .X ( \C1/Z_15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 ctmTdsLR_3_2609 ( .CK ( tmp_net652 ) , .EN ( n1570 ) , 
    .X ( tmp_net653 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_1 ctmTdsLR_1_2511 ( .A1 ( ZBUF_78_3 ) , .A2 ( gre_d_INV_14_0 ) , 
    .X ( n1914 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 gre_h_inst_2847 ( .A ( \cic/add_cast_5 [13] ) , 
    .X ( gre_net_850 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1472 ( .A ( \intadd_2/SUM[1] ) , .X ( n982 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1473 ( .A1 ( \enc/stepSize [2] ) , .A2 ( n1529 ) , 
    .B ( n807 ) , .X ( n1559 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1474 ( .A ( \C1/Z_1 ) , .X ( n784 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1475 ( .CK ( n1296 ) , .EN ( n1273 ) , .X ( n1274 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_0P5 U1476 ( .A1 ( \enc/stepSize [4] ) , .A2 ( n843 ) , 
    .X ( n1554 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1477 ( .A1 ( n1366 ) , .A2 ( n1384 ) , .B ( n1268 ) , 
    .X ( n1269 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1478 ( .A1 ( n1400 ) , .A2 ( n1454 ) , .B ( n1442 ) , 
    .X ( n1401 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_UCDC_0P5 copt_h_inst_2665 ( .A ( gre_net_857 ) , 
    .X ( copt_net_690 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1480 ( .A1 ( n1356 ) , .A2 ( n1403 ) , .B1 ( n1404 ) , 
    .B2 ( n1299 ) , .X ( n1301 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P5 U1481 ( .A1 ( counter[5] ) , .A2 ( n1483 ) , 
    .B ( n1482 ) , .X ( N49 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1482 ( .A1 ( \enc/stepSize [5] ) , .A2 ( n1564 ) , 
    .B ( n912 ) , .X ( n915 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OA31_U_0P5 U1483 ( .A1 ( \intadd_2/A[1] ) , .A2 ( \intadd_2/B[4] ) , 
    .A3 ( n1425 ) , .B ( n1281 ) , .X ( n1340 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1484 ( .A ( n1453 ) , .X ( n1407 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_0P5 U1485 ( .A1 ( n1281 ) , .A2 ( n1451 ) , .X ( n1415 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1486 ( .A ( n1571 ) , .X ( n1595 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1487 ( .A1 ( \enc/predictorSamp [6] ) , .A2 ( n1549 ) , 
    .B1 ( n790 ) , .B2 ( n1553 ) , .X ( n1578 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_MM_0P5 U1488 ( .A1 ( n1923 ) , .A2 ( n1921 ) , .X ( n1922 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 gre_a_INV_63_inst_2854 ( .A ( filter_out[15] ) , 
    .X ( gre_a_INV_63_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1490 ( .A1 ( n1321 ) , .A2 ( n1318 ) , .B ( n1425 ) , 
    .X ( n1304 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1491 ( .A1 ( n1356 ) , .A2 ( n1400 ) , .B ( n1281 ) , 
    .X ( n1314 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1492 ( .A1 ( n897 ) , .A2 ( n1492 ) , .B ( n896 ) , 
    .X ( n900 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_2_2181 ( .A1 ( copt_net_267 ) , 
    .A2 ( copt_net_527 ) , .X ( copt_net_528 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_MM_4 U1494 ( .A1 ( n1744 ) , .A2 ( \cic/add_cast_3 [3] ) , 
    .X ( n1747 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_L4D100_1 copt_h_inst_2667 ( .A ( \cic/add_cast_5 [9] ) , 
    .X ( copt_net_692 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1496 ( .A1 ( n2008 ) , .A2 ( n1238 ) , .B ( n1004 ) , 
    .X ( \C1/Z_8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1497 ( .A1 ( n1923 ) , .A2 ( n1929 ) , .B ( n1994 ) , 
    .X ( n1927 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1498 ( .A1 ( n2010 ) , .A2 ( n1238 ) , .B ( n1008 ) , 
    .X ( \C1/Z_4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EO2_V1_0P75 U1499 ( .A1 ( \enc/dequantSamp [1] ) , .A2 ( \C1/Z_1 ) , 
    .X ( \C40/DATA2_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1500 ( .A1 ( n1455 ) , .A2 ( n1454 ) , .B1 ( n1453 ) , 
    .B2 ( n1452 ) , .X ( n1456 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1501 ( .A1 ( n1388 ) , .A2 ( n1446 ) , .B1 ( n1450 ) , 
    .B2 ( n1436 ) , .X ( n1291 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_MM_0P5 U1502 ( .D0 ( n1252 ) , .D1 ( \enc/sampDiff [1] ) , 
    .S ( n1251 ) , .X ( n699 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1503 ( .A1 ( n2014 ) , .A2 ( n1238 ) , .B ( n1007 ) , 
    .X ( \C1/Z_5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 U1504 ( .A1 ( n1821 ) , .A2 ( \cic/add_cast_1 [3] ) , 
    .X ( n1825 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1505 ( .A1 ( n1419 ) , .A2 ( n1448 ) , .B1 ( n1420 ) , 
    .B2 ( n1454 ) , .X ( n1438 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1506 ( .A1 ( n2015 ) , .A2 ( n1238 ) , .B ( n1006 ) , 
    .X ( \C1/Z_6 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1507 ( .A1 ( n1425 ) , .A2 ( n1424 ) , .B1 ( n1423 ) , 
    .B2 ( n1452 ) , .X ( n1426 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1508 ( .A1 ( n1384 ) , .A2 ( n1403 ) , .B1 ( n1357 ) , 
    .B2 ( \intadd_2/A[1] ) , .X ( n1358 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_1 ctmTdsLR_1_2596 ( .A1 ( tmp_net644 ) , 
    .A2 ( ZBUF_6889_0 ) , .X ( n1941 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1510 ( .A1 ( n1423 ) , .A2 ( n1379 ) , .B ( n1378 ) , 
    .X ( n1430 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_2_2562 ( .A1 ( n1723 ) , .A2 ( n1517 ) , 
    .X ( tmp_net622 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_MM_0P5 U1512 ( .D0 ( n1819 ) , .D1 ( \cic/add_cast_3 [2] ) , 
    .S ( n1817 ) , .X ( n675 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1513 ( .A1 ( n2011 ) , .A2 ( n1238 ) , .B ( n998 ) , 
    .X ( \C1/Z_14 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1514 ( .A1 ( n2009 ) , .A2 ( n1238 ) , .B ( n1002 ) , 
    .X ( \C1/Z_10 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1515 ( .CK ( \enc/sampDiff [8] ) , .EN ( n1571 ) , 
    .X ( n1629 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1516 ( .A1 ( \cic/cur_count [4] ) , .A2 ( n1051 ) , 
    .B1 ( n1052 ) , .B2 ( n1048 ) , .X ( n631 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_0P5 U1517 ( .A1 ( n1256 ) , .A2 ( n782 ) , .X ( n762 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1518 ( .A1 ( n1356 ) , .A2 ( n1436 ) , .B1 ( n1338 ) , 
    .B2 ( n1409 ) , .X ( n1353 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 ctmTdsLR_2_2537 ( .A ( n1319 ) , .X ( tmp_net611 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1520 ( .A1 ( n2008 ) , .A2 ( n782 ) , .B ( n1003 ) , 
    .X ( \C1/Z_9 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1521 ( .A1 ( n2021 ) , .A2 ( n1238 ) , .B ( n1005 ) , 
    .X ( \C1/Z_7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1522 ( .A1 ( n1413 ) , .A2 ( n1421 ) , .B1 ( n1455 ) , 
    .B2 ( n1348 ) , .X ( n1349 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1523 ( .A1 ( n1384 ) , .A2 ( n1383 ) , .B1 ( n1419 ) , 
    .B2 ( n1408 ) , .X ( n1386 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_MM_0P5 U1524 ( .D0 ( \intadd_1/B[1] ) , 
    .D1 ( \cic/add_cast_5 [2] ) , .S ( n1741 ) , .X ( n695 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1525 ( .A1 ( n2018 ) , .A2 ( n1238 ) , .B ( n1001 ) , 
    .X ( \C1/Z_11 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1526 ( .A1 ( n1356 ) , .A2 ( n1454 ) , .B1 ( n1427 ) , 
    .B2 ( n1409 ) , .X ( n1293 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OA22_U_0P5 U1527 ( .A1 ( ZBUF_2257_0 ) , 
    .A2 ( \cic/sub_cast_1 [19] ) , .B1 ( ZBUF_300_0 ) , 
    .B2 ( \cic/add_cast_5 [19] ) , .X ( n556 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1528 ( .A1 ( n1046 ) , .A2 ( copt_net_750 ) , 
    .B ( n1044 ) , .X ( n633 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1529 ( .A1 ( n1052 ) , .A2 ( n1051 ) , .B ( n1050 ) , 
    .X ( n636 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1530 ( .A1 ( n2012 ) , .A2 ( n1238 ) , .B ( n999 ) , 
    .X ( \C1/Z_13 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1531 ( .A1 ( n1356 ) , .A2 ( n1451 ) , .B ( n1355 ) , 
    .X ( n1373 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_2 U1532 ( .A1 ( \cic/add_cast_3 [3] ) , .A2 ( n1744 ) , 
    .X ( n1746 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1533 ( .A1 ( n1396 ) , .A2 ( n1450 ) , .B1 ( n1404 ) , 
    .B2 ( n1321 ) , .X ( n1323 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1534 ( .A1 ( n2017 ) , .A2 ( n1238 ) , .B ( n1000 ) , 
    .X ( \C1/Z_12 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OA21B_1 ctmTdsLR_1_2522 ( .A1 ( n1953 ) , .A2 ( tmp_net544 ) , 
    .B ( ZBUF_1627_0 ) , .X ( n1963 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_2597 ( .A1 ( n1944 ) , .A2 ( ZBUF_1627_0 ) , 
    .B ( n1943 ) , .X ( tmp_net644 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_0P5 U1537 ( .A1 ( \enc/n5 ) , .A2 ( n1325 ) , .X ( n1436 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1538 ( .A1 ( n1994 ) , .A2 ( n1928 ) , 
    .B ( ZBUF_6889_0 ) , .X ( n1921 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1539 ( .A ( n1382 ) , .X ( n1408 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P5 U1540 ( .A1 ( copt_net_719 ) , .A2 ( n1040 ) , 
    .B ( n1048 ) , .X ( n632 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U1541 ( .A ( n1516 ) , .X ( n1511 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1542 ( .A1 ( n1442 ) , .A2 ( n1428 ) , .B1 ( n1439 ) , 
    .B2 ( n1427 ) , .X ( n1264 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1543 ( .CK ( n1034 ) , .EN ( copt_net_728 ) , 
    .X ( N45 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1544 ( .A1 ( n1523 ) , .A2 ( n895 ) , .B1 ( n894 ) , 
    .B2 ( n1238 ) , .X ( n896 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P5 U1545 ( .A ( \enc/sampDiff [7] ) , .B1 ( n1564 ) , 
    .B2 ( n1584 ) , .X ( n1571 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P5 U1546 ( .A1 ( counter[2] ) , .A2 ( n1481 ) , 
    .B ( n1480 ) , .X ( N46 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_3_903 ( .A ( \intadd_0/B[5] ) , 
    .X ( copt_net_183 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1548 ( .A1 ( n1356 ) , .A2 ( n1270 ) , .B ( n1324 ) , 
    .X ( n1271 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_ECO_1 U1549 ( .A ( n2004 ) , .X ( n1199 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1550 ( .A1 ( \enc/sampDiff [19] ) , .A2 ( n1240 ) , 
    .B ( n1030 ) , .X ( n1251 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_1 ctmTdsLR_1_2518 ( .A ( tmp_net602 ) , .X ( n1939 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1552 ( .CK ( n2019 ) , .EN ( n782 ) , .X ( \C1/Z_17 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1553 ( .CK ( n1483 ) , .EN ( n1039 ) , .X ( N48 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1554 ( .CK ( n851 ) , .EN ( n810 ) , .X ( n811 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1555 ( .A ( n1347 ) , .X ( n1299 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1556 ( .A1 ( counter[5] ) , .A2 ( n1483 ) , 
    .B ( n1486 ) , .X ( n1482 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1557 ( .CK ( n1377 ) , .EN ( n1376 ) , .X ( n1378 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1558 ( .A1 ( n1282 ) , .A2 ( n1447 ) , .B ( n1354 ) , 
    .X ( n1278 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1559 ( .A ( n1324 ) , .X ( n1424 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1560 ( .A1 ( n1928 ) , .A2 ( n1929 ) , .B ( n1994 ) , 
    .X ( n1924 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1561 ( .A1 ( n2010 ) , .A2 ( n1528 ) , 
    .B ( \enc/sampDiff [5] ) , .X ( n807 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_1 ctmTdsLR_2_740 ( .A ( \intadd_1/CI ) , .X ( copt_net_113 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1563 ( .A1 ( n1366 ) , .A2 ( n1450 ) , .B ( n1365 ) , 
    .X ( n1367 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1564 ( .CK ( n1038 ) , .EN ( n1037 ) , .X ( N47 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1565 ( .CK ( n1399 ) , .EN ( n1308 ) , .X ( n1309 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U1566 ( .A ( n2004 ) , .X ( n2005 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1567 ( .A ( n1282 ) , .X ( n1446 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1568 ( .CK ( n1034 ) , .EN ( counter[0] ) , .X ( N44 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 gre_h_inst_2861 ( .A ( \cic/add_cast_5 [10] ) , 
    .X ( gre_net_857 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1570 ( .CK ( n1428 ) , .EN ( n1420 ) , .X ( n1296 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_0P5 U1571 ( .A1 ( n1253 ) , .A2 ( n1238 ) , .X ( n764 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EO2_V1_0P75 U1572 ( .A1 ( \enc/doneCounter ) , .A2 ( n1239 ) , 
    .X ( n763 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1573 ( .A ( n1387 ) , .X ( n1321 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1574 ( .A1 ( n1325 ) , .A2 ( n1448 ) , .B ( n1324 ) , 
    .X ( n1328 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1575 ( .A1 ( n1250 ) , .A2 ( n1249 ) , .B1 ( n1490 ) , 
    .B2 ( n1248 ) , .X ( n1252 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_1 U1576 ( .A ( n1820 ) , .B1 ( ZBUF_6889_0 ) , .B2 ( n1818 ) , 
    .X ( n1817 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1577 ( .A1 ( \enc/sampDiff [5] ) , .A2 ( n2014 ) , 
    .B1 ( n823 ) , .B2 ( n1530 ) , .X ( n843 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P5 U1578 ( .A ( n1043 ) , .B1 ( n2001 ) , .B2 ( n1045 ) , 
    .X ( n1044 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_MM_0P5 U1579 ( .D0 ( n1912 ) , .D1 ( \cic/add_cast_1 [2] ) , 
    .S ( n1911 ) , .X ( n655 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1580 ( .A1 ( n1255 ) , .A2 ( n1254 ) , .B1 ( inValid ) , 
    .B2 ( n1487 ) , .X ( n1256 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1581 ( .A1 ( n1356 ) , .A2 ( n1379 ) , .B1 ( n1439 ) , 
    .B2 ( n1427 ) , .X ( n1268 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO21_1 ctmTdsLR_1_2598 ( .A1 ( n1954 ) , .A2 ( ZBUF_1627_0 ) , 
    .B ( tmp_net646 ) , .X ( n1951 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P5 U1583 ( .A ( n1047 ) , .B1 ( \cic/cur_count [3] ) , 
    .B2 ( n2001 ) , .X ( n1051 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_0P5 U1584 ( .A1 ( n1376 ) , .A2 ( \enc/n1 ) , .X ( n1281 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OA21B_1 U1585 ( .A1 ( n1405 ) , .A2 ( n1383 ) , .B ( n1347 ) , 
    .X ( n1348 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_1 ctmTdsLR_3_1325 ( .A1 ( \cic/add_cast_3 [5] ) , 
    .A2 ( n1752 ) , .X ( n1754 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1587 ( .A1 ( n1377 ) , .A2 ( n1334 ) , .B ( \enc/n1 ) , 
    .X ( n1335 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1588 ( .A1 ( n1010 ) , .A2 ( n2006 ) , .B1 ( n2020 ) , 
    .B2 ( n1238 ) , .X ( \C1/Z_2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1589 ( .A1 ( n805 ) , .A2 ( n800 ) , .B ( n875 ) , 
    .X ( n802 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1590 ( .A1 ( \enc/n4 ) , .A2 ( n1450 ) , .B1 ( n1318 ) , 
    .B2 ( n1420 ) , .X ( n1287 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_4 ctmTdsLR_1_1145 ( .A1 ( copt_net_287 ) , 
    .A2 ( copt_net_288 ) , .B ( copt_net_289 ) , .X ( \intadd_0/n7 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1592 ( .A1 ( n789 ) , .A2 ( n1544 ) , .B ( n1542 ) , 
    .X ( n1553 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_1 ctmTdsLR_3_2513 ( .A1 ( \cic/input_register [0] ) , 
    .A2 ( tmp_net597 ) , .X ( tmp_net598 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1594 ( .A1 ( n1442 ) , .A2 ( n1375 ) , .B ( n1374 ) , 
    .X ( n1381 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1595 ( .A ( n1325 ) , .X ( n1452 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1596 ( .A1 ( \enc/stepSize [2] ) , .A2 ( n1529 ) , 
    .B1 ( n2010 ) , .B2 ( n1528 ) , .X ( n1537 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1597 ( .A1 ( n2001 ) , .A2 ( n1049 ) , 
    .B ( \cic/cur_count [5] ) , .X ( n1050 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1598 ( .CK ( n1010 ) , .EN ( n2020 ) , .X ( \C1/Z_1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OA2BB2_V1_0P5 U1599 ( .A1 ( \enc/stepSize [3] ) , .A2 ( n1530 ) , 
    .B1 ( \enc/stepSize [3] ) , .B2 ( n1530 ) , .X ( n1536 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_1 U1600 ( .A ( ZBUF_9_5 ) , .B1 ( ZBUF_6889_0 ) , 
    .B2 ( n1742 ) , .X ( n1741 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1601 ( .CK ( n1442 ) , .EN ( n1406 ) , .X ( n1357 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1602 ( .A1 ( n1423 ) , .A2 ( n1390 ) , .B ( n1354 ) , 
    .X ( n1355 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1603 ( .A1 ( n1413 ) , .A2 ( n1317 ) , .B1 ( n1316 ) , 
    .B2 ( n1420 ) , .X ( n1319 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_2 ctmTdsLR_4_2514 ( .A ( n1994 ) , .X ( tmp_net597 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_2_1146 ( .A1 ( \intadd_0/n8 ) , 
    .A2 ( \cic/sub_cast_3 [12] ) , .X ( copt_net_287 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_MM_0P5 U1606 ( .D0 ( n1915 ) , .D1 ( ZBUF_9_9 ) , 
    .S ( n1906 ) , .X ( n656 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1607 ( .A1 ( \intadd_2/B[4] ) , .A2 ( n1441 ) , 
    .B1 ( \intadd_2/B[3] ) , .B2 ( n1396 ) , .X ( n1390 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1608 ( .CK ( n1400 ) , .EN ( n1394 ) , .X ( n1354 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1609 ( .CK ( \intadd_2/B[3] ) , .EN ( n1361 ) , 
    .X ( n1282 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1610 ( .CK ( n1405 ) , .EN ( n1275 ) , .X ( n1382 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AN2_MM_0P5 U1611 ( .A1 ( n1027 ) , .A2 ( inValid ) , .X ( n1030 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1612 ( .CK ( \intadd_2/B[3] ) , .EN ( n1419 ) , 
    .X ( n1325 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1613 ( .A ( n1388 ) , .X ( n1338 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1614 ( .CK ( n1317 ) , .EN ( n1449 ) , .X ( n1324 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P5 U1615 ( .A ( n876 ) , .B1 ( n801 ) , .B2 ( n817 ) , 
    .X ( n810 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1616 ( .A ( n1020 ) , .X ( n1238 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1617 ( .A ( n1356 ) , .X ( n1420 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1618 ( .CK ( n1451 ) , .EN ( n1440 ) , .X ( n1262 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_1 ctmTdsLR_3_1147 ( .A ( \intadd_0/B[11] ) , 
    .X ( copt_net_288 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1620 ( .A1 ( n1394 ) , .A2 ( n1428 ) , .B1 ( n1439 ) , 
    .B2 ( n1404 ) , .X ( n1259 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_MM_0P5 U1621 ( .D0 ( n1814 ) , .D1 ( \cic/add_cast_3 [1] ) , 
    .S ( n1812 ) , .X ( n676 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1622 ( .A ( n1275 ) , .X ( n1427 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_1 ctmTdsLR_5_708 ( .A1 ( copt_net_99 ) , 
    .A2 ( \intadd_0/SUM[0] ) , .X ( copt_net_100 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1624 ( .CK ( n1404 ) , .EN ( n1379 ) , .X ( n1365 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OR3_1 ctmTdsLR_1_2515 ( .A1 ( \cic/add_cast_1 [5] ) , 
    .A2 ( tmp_net600 ) , .A3 ( tmp_net601 ) , .X ( n1934 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1626 ( .A ( n1368 ) , .X ( n1376 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_4 ctmTdsLR_4_1326 ( .A1 ( n1755 ) , .A2 ( \intadd_1/B[4] ) , 
    .B ( n1754 ) , .X ( n1756 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1628 ( .CK ( n1400 ) , .EN ( n1450 ) , .X ( n1433 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1629 ( .A ( n1491 ) , .X ( n782 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1630 ( .A1 ( n1442 ) , .A2 ( n1395 ) , .B ( \enc/n2 ) , 
    .X ( n1322 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1631 ( .CK ( n1394 ) , .EN ( n1428 ) , .X ( n944 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1632 ( .A1 ( n1042 ) , .A2 ( \cic/cur_count [5] ) , 
    .B ( n1998 ) , .X ( n2001 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1633 ( .A1 ( n1442 ) , .A2 ( n1421 ) , .B1 ( n1455 ) , 
    .B2 ( n1379 ) , .X ( n1300 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1634 ( .A ( n805 ) , .X ( n814 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_ND2_1 ctmTdsLR_3_1777 ( .A1 ( copt_net_263 ) , 
    .A2 ( copt_net_262 ) , .X ( copt_net_447 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1636 ( .A1 ( n1442 ) , .A2 ( n1441 ) , .B1 ( n1440 ) , 
    .B2 ( n1439 ) , .X ( n1443 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1637 ( .A1 ( n1913 ) , .A2 ( n1912 ) , .B ( n1994 ) , 
    .X ( n1919 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1638 ( .A1 ( n1405 ) , .A2 ( n1419 ) , .B1 ( n1404 ) , 
    .B2 ( n1403 ) , .X ( n1411 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_2 ctmTdsLR_2_2516 ( .A ( n1928 ) , .X ( tmp_net600 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1640 ( .A1 ( n1451 ) , .A2 ( n1450 ) , .B1 ( n1449 ) , 
    .B2 ( n1448 ) , .X ( n1457 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1641 ( .A1 ( n1384 ) , .A2 ( n1333 ) , .B1 ( n1425 ) , 
    .B2 ( n1428 ) , .X ( n1334 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1642 ( .A ( n1529 ) , .X ( n1528 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1643 ( .CK ( n1440 ) , .EN ( n1428 ) , .X ( n1399 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1644 ( .A ( n1015 ) , .X ( n1010 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1645 ( .A1 ( n1413 ) , .A2 ( n1396 ) , .B1 ( n1425 ) , 
    .B2 ( n1395 ) , .X ( n1397 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1646 ( .A1 ( n822 ) , .A2 ( n1510 ) , 
    .B1 ( \enc/stepSize [2] ) , .B2 ( n1521 ) , .X ( n1530 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_MM_0P5 U1647 ( .D0 ( n1736 ) , .D1 ( ZBUF_125_0 ) , 
    .S ( n1735 ) , .X ( n697 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1648 ( .A1 ( \enc/predictorSamp [4] ) , .A2 ( n1505 ) , 
    .B1 ( n788 ) , .B2 ( n1509 ) , .X ( n1544 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_MM_0P5 U1649 ( .D0 ( ZBUF_32_14 ) , 
    .D1 ( \cic/add_cast_5 [1] ) , .S ( n1737 ) , .X ( n696 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1650 ( .A1 ( n1413 ) , .A2 ( n1439 ) , .B1 ( n1361 ) , 
    .B2 ( n1423 ) , .X ( n1308 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OA2BB2_V1_0P5 U1651 ( .A1 ( \enc/stepSize [2] ) , .A2 ( n1510 ) , 
    .B1 ( \enc/stepSize [2] ) , .B2 ( n1510 ) , .X ( n1516 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_AO22_0P75 U1652 ( .A1 ( n1477 ) , .A2 ( encPcm[3] ) , 
    .B1 ( n2025 ) , .B2 ( gre_net_849 ) , .X ( n544 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U1653 ( .A ( n1486 ) , .X ( n1034 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1654 ( .A1 ( counter[3] ) , .A2 ( n1036 ) , 
    .B ( n1486 ) , .X ( n1037 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1655 ( .A1 ( n911 ) , .A2 ( n1538 ) , 
    .B ( \enc/stepSize [4] ) , .X ( n910 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1656 ( .A1 ( counter[4] ) , .A2 ( n1038 ) , 
    .B ( n1486 ) , .X ( n1039 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO22_0P5 U1657 ( .A1 ( n1477 ) , .A2 ( encPcm[0] ) , .B1 ( n2025 ) , 
    .B2 ( \enc/prePCM [0] ) , .X ( n545 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U1658 ( .A ( n1498 ) , .X ( n1497 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OA21_1 U1659 ( .A1 ( ZBUF_4058_0 ) , .A2 ( \cic/cur_count [0] ) , 
    .B ( n2000 ) , .X ( n635 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 ctmTdsLR_3_2563 ( .CK ( tmp_net623 ) , .EN ( n1519 ) , 
    .X ( tmp_net624 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO22_0P75 U1661 ( .A1 ( n1477 ) , .A2 ( encPcm[1] ) , 
    .B1 ( n2025 ) , .B2 ( \enc/prePCM [1] ) , .X ( n547 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1662 ( .A1 ( counter[2] ) , .A2 ( n1481 ) , 
    .B ( n1486 ) , .X ( n1480 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1663 ( .A1 ( n1247 ) , .A2 ( n898 ) , .B ( n1240 ) , 
    .X ( n895 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1664 ( .CK ( n1646 ) , .EN ( n1645 ) , .X ( n1649 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AN2_MM_0P5 U1665 ( .A1 ( counter[4] ) , .A2 ( n1038 ) , 
    .X ( n1483 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1666 ( .CK ( n1488 ) , .EN ( n1253 ) , .X ( n1239 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1667 ( .CK ( n2002 ) , .EN ( n2000 ) , .X ( n1046 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_MM_0P5 U1668 ( .D0 ( gre_net_849 ) , 
    .D1 ( \enc/sampDiff [19] ) , .S ( n1240 ) , .X ( n742 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U1669 ( .A ( n1049 ) , .X ( n1048 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_MM_0P5 U1670 ( .D0 ( copt_net_680 ) , .D1 ( inValid ) , 
    .S ( n1486 ) , .X ( n766 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_1 ctmTdsLR_2_2599 ( .A1 ( ZBUF_6889_0 ) , 
    .A2 ( tmp_net645 ) , .X ( tmp_net646 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P5 U1672 ( .A1 ( n1055 ) , .A2 ( n1094 ) , 
    .B ( \intadd_0/CI ) , .X ( n1067 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_3_2600 ( .A ( n1953 ) , .X ( tmp_net645 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1674 ( .CK ( \enc/doneCounter ) , .EN ( n1253 ) , 
    .X ( n1254 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1675 ( .A ( n1240 ) , .X ( n1490 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1676 ( .CK ( \enc/sampDiff [5] ) , .EN ( n1531 ) , 
    .X ( n1584 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_MM_0P5 U1677 ( .D0 ( ZBUF_6889_0 ) , .D1 ( copt_net_680 ) , 
    .S ( n1485 ) , .X ( n767 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P5 U1678 ( .A1 ( \enc/sampDiff [13] ) , .A2 ( n2011 ) , 
    .B ( n904 ) , .X ( n930 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1679 ( .A ( n1375 ) , .X ( n1441 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_AO22_0P75 U1680 ( .A1 ( state[0] ) , .A2 ( n2016 ) , 
    .B1 ( ZBUF_6889_0 ) , .B2 ( block_enable ) , .X ( n768 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1681 ( .A ( n1270 ) , .X ( n1400 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1682 ( .CK ( n873 ) , .EN ( n798 ) , .X ( n805 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_3_2517 ( .A ( n1929 ) , .X ( tmp_net601 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1684 ( .CK ( n935 ) , .EN ( n1488 ) , .X ( n1020 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_2_2519 ( .A1 ( n1934 ) , 
    .A2 ( \cic/add_cast_1 [6] ) , .X ( tmp_net602 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1686 ( .CK ( n1237 ) , .EN ( n902 ) , .X ( n1015 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OR2_MM_0P5 U1687 ( .A1 ( n1455 ) , .A2 ( n1379 ) , .X ( n1360 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_1 U1688 ( .A1 ( ZBUF_6889_0 ) , .A2 ( ZBUF_47_16 ) , 
    .X ( n1735 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1689 ( .CK ( \enc/pcmSq [0] ) , .EN ( n935 ) , 
    .X ( n1491 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1690 ( .A ( n1405 ) , .X ( n1448 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1691 ( .A ( n1541 ) , .X ( n789 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P75 U1692 ( .A ( n1739 ) , .B1 ( ZBUF_6889_0 ) , 
    .B2 ( n1738 ) , .X ( n1737 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1693 ( .A ( n1263 ) , .X ( n1419 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1694 ( .A1 ( \enc/predictorSamp [15] ) , .A2 ( n1202 ) , 
    .B ( n1201 ) , .X ( n1203 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1695 ( .A ( n1442 ) , .X ( n1423 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1696 ( .CK ( \intadd_2/A[1] ) , .EN ( n1394 ) , 
    .X ( n1398 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1697 ( .CK ( n1542 ) , .EN ( n1541 ) , .X ( n1545 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1698 ( .A ( n1359 ) , .X ( n1361 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1699 ( .CK ( \enc/n7 ) , .EN ( n1396 ) , .X ( n1377 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_3_2538 ( .A1 ( n1455 ) , .A2 ( n1387 ) , 
    .X ( tmp_net612 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1701 ( .A1 ( \enc/predictorSamp [9] ) , .A2 ( n1221 ) , 
    .B ( n1220 ) , .X ( n1222 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1702 ( .A ( n1413 ) , .X ( n1450 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1703 ( .A ( n1384 ) , .X ( n1404 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1704 ( .A ( n1644 ) , .X ( n1645 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1705 ( .A ( n1366 ) , .X ( n1428 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_MM_0P5 U1706 ( .A1 ( n1621 ) , .A2 ( n1620 ) , .X ( n1622 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1707 ( .A1 ( \enc/predictorSamp [7] ) , .A2 ( n1576 ) , 
    .B ( n1575 ) , .X ( n1577 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_0P5 U1708 ( .A1 ( \enc/n1 ) , .A2 ( n1342 ) , .X ( n1451 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P5 U1709 ( .A ( \enc/sampDiff [3] ) , .B1 ( n1521 ) , 
    .B2 ( n1523 ) , .X ( n1531 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_4 U1710 ( .A1 ( n1815 ) , .A2 ( n1814 ) , .B ( n1813 ) , 
    .X ( n1816 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ADDF_V1_0P5 U1711 ( .A ( \enc/predictorSamp [3] ) , .B ( n1493 ) , 
    .CI ( n1492 ) , .CO ( n1509 ) , .S ( n1494 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1712 ( .CK ( \enc/n2 ) , .EN ( n1263 ) , .X ( n1368 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_MM_0P5 U1713 ( .D0 ( ZBUF_78_3 ) , .D1 ( n1908 ) , 
    .S ( n1904 ) , .X ( n657 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_1_2520 ( .A ( tmp_net603 ) , 
    .X ( copt_net_477 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1715 ( .A ( n1487 ) , .X ( n1253 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_EO2_1P5 ctmTdsLR_1_817 ( .A1 ( \intadd_1/n5 ) , 
    .A2 ( copt_net_151 ) , .X ( \intadd_0/B[14] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1717 ( .CK ( n1342 ) , .EN ( n1315 ) , .X ( n1316 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_1P5 U1718 ( .A1 ( n1909 ) , .A2 ( ZBUF_9_9 ) , 
    .B ( ZBUF_137_8 ) , .X ( n1913 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P5 U1719 ( .A ( \cic/add_cast_1 [2] ) , .B1 ( n1915 ) , 
    .B2 ( n1914 ) , .X ( n1920 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1720 ( .CK ( n1022 ) , .EN ( n1025 ) , 
    .X ( \intadd_2/B[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OR3_0P5 U1721 ( .A1 ( n1484 ) , .A2 ( counter[6] ) , 
    .A3 ( counter[0] ) , .X ( n1485 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1722 ( .CK ( n1442 ) , .EN ( n1413 ) , .X ( n1356 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_ECO_1 U1723 ( .A1 ( \cic/cur_count [0] ) , .A2 ( ZBUF_4058_0 ) , 
    .X ( n2000 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_ECO_1 U1724 ( .A1 ( counter[6] ) , .A2 ( n1484 ) , 
    .X ( n1486 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1725 ( .A ( n1250 ) , .X ( n1027 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_BUF_1P5 U1726 ( .A ( ZBUF_1666_0 ) , .X ( n2024 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1727 ( .A1 ( \enc/sampDiff [4] ) , .A2 ( n2014 ) , 
    .B1 ( n909 ) , .B2 ( n908 ) , .X ( n911 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1728 ( .CK ( n1047 ) , .EN ( n1052 ) , .X ( n1042 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AN3_0P5 U1729 ( .A1 ( n1481 ) , .A2 ( counter[3] ) , 
    .A3 ( counter[2] ) , .X ( n1038 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P5 ctmTdsLR_2_2521 ( .A1 ( \intadd_1/B[15] ) , 
    .A2 ( tmp_net542 ) , .B ( \intadd_1/B[14] ) , .X ( tmp_net603 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1731 ( .CK ( n795 ) , .EN ( n885 ) , .X ( n796 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1732 ( .A1 ( \enc/predictorSamp [13] ) , .A2 ( n1657 ) , 
    .B ( n1656 ) , .X ( n1658 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1733 ( .A1 ( \enc/n6 ) , .A2 ( \enc/n4 ) , 
    .B ( n1332 ) , .X ( n1333 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1734 ( .A1 ( \enc/sampDiff [3] ) , .A2 ( n2006 ) , 
    .B1 ( n821 ) , .B2 ( n1496 ) , .X ( n1510 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1735 ( .CK ( n1026 ) , .EN ( n1025 ) , 
    .X ( \intadd_2/CI ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1736 ( .CK ( \enc/pcmSq [2] ) , .EN ( n818 ) , 
    .X ( n1240 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1737 ( .A ( n2025 ) , .X ( n1477 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1738 ( .A1 ( \enc/stepSize [1] ) , .A2 ( n1496 ) , 
    .B1 ( n2006 ) , .B2 ( n1495 ) , .X ( n1498 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_AN2_MM_0P5 U1739 ( .A1 ( counter[2] ) , .A2 ( n1481 ) , 
    .X ( n1036 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_ECO_1 ctmTdsLR_1_2601 ( .A1 ( tmp_net647 ) , 
    .A2 ( ZBUF_6889_0 ) , .X ( n1832 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_MM_0P5 U1741 ( .A1 ( n1694 ) , .A2 ( n1693 ) , .X ( n1695 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V2_1 copt_h_inst_2669 ( .A ( n631 ) , .X ( copt_net_694 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P5 U1743 ( .A ( n1043 ) , .B1 ( ZBUF_4058_0 ) , 
    .B2 ( \cic/cur_count [2] ) , .X ( n1040 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1744 ( .A ( n1332 ) , .X ( n1395 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 ctmTdsLR_4_2610 ( .A ( n1569 ) , .X ( tmp_net652 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1746 ( .A1 ( ZBUF_6889_0 ) , .A2 ( copt_net_752 ) , 
    .B1 ( n1998 ) , .B2 ( pdm_in ) , .X ( n637 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1747 ( .A1 ( n1455 ) , .A2 ( n1342 ) , .B1 ( n1394 ) , 
    .B2 ( \intadd_2/A[1] ) , .X ( n1344 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_1_2434 ( .A1 ( n1964 ) , 
    .A2 ( \cic/add_cast_1 [12] ) , .B ( ZBUF_2091_0 ) , .X ( n1965 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1749 ( .A ( n1288 ) , .X ( n1449 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1750 ( .A ( n803 ) , .X ( n801 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1751 ( .A1 ( \enc/predictorSamp [2] ) , .A2 ( n1244 ) , 
    .B ( n1250 ) , .X ( n897 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_0P5 U1752 ( .A1 ( n1342 ) , .A2 ( \intadd_2/B[2] ) , 
    .X ( n1421 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P75 U1753 ( .A ( n1815 ) , .B1 ( ZBUF_6889_0 ) , 
    .B2 ( n1813 ) , .X ( n1812 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EO2_V1_0P75 U1754 ( .A1 ( n1811 ) , .A2 ( ZBUF_53_2 ) , 
    .X ( n677 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1755 ( .A1 ( \enc/n5 ) , .A2 ( n1413 ) , 
    .B1 ( \intadd_2/A[0] ) , .B2 ( n1455 ) , .X ( n1388 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1756 ( .A1 ( \enc/sampDiff [4] ) , .A2 ( n1517 ) , 
    .B1 ( n806 ) , .B2 ( n2006 ) , .X ( n1529 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1757 ( .CK ( n879 ) , .EN ( n797 ) , .X ( n817 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1758 ( .CK ( \enc/stepSize [14] ) , .EN ( n1709 ) , 
    .X ( n869 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OR2_MM_0P5 U1759 ( .A1 ( \enc/pcmSq [1] ) , .A2 ( n1488 ) , 
    .X ( n818 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1760 ( .CK ( filter_out[1] ) , .EN ( n1506 ) , 
    .X ( n788 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1761 ( .CK ( \enc/predictorSamp [12] ) , .EN ( n1151 ) , 
    .X ( n795 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1762 ( .CK ( \intadd_2/A[1] ) , .EN ( \intadd_2/A[0] ) , 
    .X ( n1342 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1763 ( .CK ( \intadd_2/A[1] ) , .EN ( \intadd_2/B[2] ) , 
    .X ( n1263 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OR2_MM_0P5 U1764 ( .A1 ( \enc/predictorSamp [2] ) , .A2 ( n1244 ) , 
    .X ( n1492 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1765 ( .CK ( n1023 ) , .EN ( n1024 ) , .X ( n1022 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EO2_1 ctmTdsLR_2_818 ( .A1 ( \cic/sub_cast_1 [15] ) , 
    .A2 ( \intadd_1/B[14] ) , .X ( copt_net_151 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1767 ( .CK ( filter_out[14] ) , .EN ( n1714 ) , 
    .X ( n890 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1768 ( .A ( n903 ) , .X ( n797 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1769 ( .A1 ( filter_out[5] ) , .A2 ( n1604 ) , 
    .B1 ( n1603 ) , .B2 ( \enc/predictorSamp [8] ) , .X ( n1606 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1770 ( .CK ( n786 ) , .EN ( filter_out[7] ) , 
    .X ( n1620 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_0P5 U1771 ( .A1 ( \enc/predictorSamp [11] ) , .A2 ( n1142 ) , 
    .X ( n1644 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1772 ( .CK ( \intadd_2/B[4] ) , .EN ( n1317 ) , 
    .X ( n1270 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1773 ( .CK ( \enc/stepSize [14] ) , .EN ( n1729 ) , 
    .X ( n879 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1774 ( .A1 ( \enc/stepSize [12] ) , .A2 ( n820 ) , 
    .B1 ( \enc/stepSize [13] ) , .B2 ( n1216 ) , .X ( n840 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1775 ( .CK ( n1998 ) , .EN ( n1907 ) , .X ( n1904 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V2_1 copt_h_inst_2670 ( .A ( \cic/sub_cast_5 [19] ) , 
    .X ( copt_net_695 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1777 ( .CK ( filter_out[3] ) , .EN ( n1550 ) , 
    .X ( n790 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P75 U1778 ( .A ( n1998 ) , .X ( n1981 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1779 ( .A ( n1455 ) , .X ( n1394 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1780 ( .CK ( \enc/stepSize [13] ) , .EN ( n1709 ) , 
    .X ( n803 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1781 ( .CK ( \enc/stepSize [12] ) , .EN ( n1216 ) , 
    .X ( n876 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1782 ( .CK ( \enc/predictorSamp [5] ) , .EN ( n1090 ) , 
    .X ( n1542 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1783 ( .CK ( \intadd_2/B[2] ) , .EN ( \enc/n5 ) , 
    .X ( n1366 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1784 ( .CK ( \enc/predictorSamp [10] ) , .EN ( n1619 ) , 
    .X ( n1621 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1785 ( .CK ( \enc/stepSize [8] ) , .EN ( n1641 ) , 
    .X ( n851 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_1P5 ctmTdsLR_2_2524 ( .A1 ( n1944 ) , 
    .A2 ( \cic/add_cast_1 [8] ) , .X ( tmp_net604 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1787 ( .CK ( \intadd_2/B[3] ) , .EN ( \enc/n4 ) , 
    .X ( n1288 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1788 ( .CK ( \enc/predictorSamp [7] ) , .EN ( n1576 ) , 
    .X ( n791 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1789 ( .CK ( \enc/pcmSq [1] ) , .EN ( n1237 ) , 
    .X ( n1487 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1790 ( .A1 ( filter_out[11] ) , .A2 ( n1684 ) , 
    .B1 ( n1683 ) , .B2 ( \enc/predictorSamp [14] ) , .X ( n1686 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1791 ( .CK ( n1512 ) , .EN ( n1521 ) , .X ( n806 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1792 ( .A1 ( filter_out[3] ) , .A2 ( n1550 ) , 
    .B1 ( n1549 ) , .B2 ( \enc/predictorSamp [6] ) , .X ( n1552 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1793 ( .A ( n1512 ) , .X ( n1517 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_0P5 U1794 ( .A1 ( \enc/n5 ) , .A2 ( n1315 ) , .X ( n1379 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1795 ( .A1 ( \enc/sampDiff [2] ) , .A2 ( n2020 ) , 
    .B ( n1495 ) , .X ( n894 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1796 ( .A1 ( \enc/stepSize [10] ) , .A2 ( n1641 ) , 
    .B1 ( \enc/stepSize [9] ) , .B2 ( n905 ) , .X ( n923 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_0P5 U1797 ( .A1 ( \enc/predictorSamp [9] ) , .A2 ( n1221 ) , 
    .X ( n1220 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1798 ( .CK ( n1440 ) , .EN ( n1425 ) , .X ( n1384 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1799 ( .CK ( \enc/stepSize [3] ) , .EN ( n1564 ) , 
    .X ( n1566 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1800 ( .CK ( \enc/predictorSamp [9] ) , .EN ( n1221 ) , 
    .X ( n793 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1801 ( .CK ( n1455 ) , .EN ( \intadd_2/A[0] ) , 
    .X ( n1447 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1802 ( .CK ( \enc/stepSize [4] ) , .EN ( n913 ) , 
    .X ( n1588 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1803 ( .CK ( \enc/n7 ) , .EN ( n1440 ) , .X ( n1413 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1804 ( .CK ( filter_out[5] ) , .EN ( n1604 ) , 
    .X ( n792 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 ctmTdsLR_4_2564 ( .A ( n1675 ) , .X ( tmp_net623 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1806 ( .CK ( \enc/predictorSamp [11] ) , .EN ( n1142 ) , 
    .X ( n1646 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1807 ( .A ( n1315 ) , .X ( n1439 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P5 U1808 ( .A ( \enc/n4 ) , .B1 ( \intadd_2/B[2] ) , 
    .B2 ( \intadd_2/A[0] ) , .X ( n1396 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1809 ( .CK ( \enc/stepSize [6] ) , .EN ( n1233 ) , 
    .X ( n1614 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_2_2526 ( .A1 ( n1949 ) , 
    .A2 ( \cic/add_cast_1 [9] ) , .X ( tmp_net605 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1811 ( .CK ( \enc/predictorSamp [13] ) , .EN ( n1657 ) , 
    .X ( n886 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1812 ( .CK ( n924 ) , .EN ( \enc/stepSize [9] ) , 
    .X ( n812 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1813 ( .CK ( \enc/stepSize [13] ) , .EN ( n1680 ) , 
    .X ( n904 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1814 ( .CK ( \intadd_2/A[1] ) , .EN ( \enc/n3 ) , 
    .X ( n1359 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1815 ( .CK ( \enc/stepSize [11] ) , .EN ( n1680 ) , 
    .X ( n798 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1816 ( .CK ( \enc/n5 ) , .EN ( \intadd_2/A[1] ) , 
    .X ( n1375 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1817 ( .A1 ( \enc/stepSize [14] ) , .A2 ( n1216 ) , 
    .B ( n903 ) , .X ( n933 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_0P5 U1818 ( .A1 ( n1576 ) , .A2 ( \enc/predictorSamp [7] ) , 
    .X ( n1575 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1819 ( .CK ( \enc/predictorSamp [15] ) , .EN ( n1202 ) , 
    .X ( n888 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1820 ( .A1 ( \enc/prePCM [2] ) , .A2 ( \enc/n7 ) , 
    .B1 ( n1025 ) , .B2 ( \enc/prePCM [0] ) , .X ( n942 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1821 ( .CK ( \intadd_2/A[0] ) , .EN ( n1440 ) , 
    .X ( n1405 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OR2_MM_0P5 U1822 ( .A1 ( \enc/n4 ) , .A2 ( n1317 ) , .X ( n1403 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1823 ( .A1 ( filter_out[1] ) , .A2 ( n1506 ) , 
    .B1 ( n1505 ) , .B2 ( \enc/predictorSamp [4] ) , .X ( n1508 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_MM_1 U1824 ( .A1 ( n1908 ) , .A2 ( n1907 ) , .X ( n1909 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1825 ( .CK ( \enc/n6 ) , .EN ( n1425 ) , .X ( n1442 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_0P5 U1826 ( .A1 ( \enc/n3 ) , .A2 ( \intadd_2/A[1] ) , 
    .X ( n1383 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_ECO_1 U1827 ( .A1 ( n1998 ) , .A2 ( ZBUF_46_8 ) , .X ( n765 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1828 ( .CK ( \enc/prePCM [2] ) , .EN ( n1425 ) , 
    .X ( n1242 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1829 ( .A ( n1495 ) , .X ( n1496 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_AN2B_MM_1 ctmTdsLR_2_1614 ( .B ( \intadd_1/B[15] ) , 
    .A ( \cic/add_cast_3 [16] ) , .X ( copt_net_414 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1831 ( .CK ( n1641 ) , .EN ( \enc/stepSize [9] ) , 
    .X ( n849 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1832 ( .A1 ( n1736 ) , .A2 ( ZBUF_2_1 ) , 
    .B1 ( ZBUF_28_0 ) , .B2 ( ZBUF_125_0 ) , .X ( n1094 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 U1833 ( .A1 ( ZBUF_125_0 ) , .A2 ( n1200 ) , 
    .X ( \intadd_1/CI ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1834 ( .A1 ( \enc/prePCM [1] ) , .A2 ( n1024 ) , 
    .B1 ( n1023 ) , .B2 ( \enc/prePCM [0] ) , .X ( n1026 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1835 ( .CK ( \enc/stepSize [5] ) , .EN ( n913 ) , 
    .X ( n825 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U1836 ( .A ( n844 ) , .X ( n826 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1837 ( .A1 ( \enc/stepSize [5] ) , .A2 ( n1564 ) , 
    .B1 ( \enc/stepSize [6] ) , .B2 ( n913 ) , .X ( n914 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1838 ( .A1 ( \enc/prePCM [2] ) , .A2 ( n1425 ) , 
    .B1 ( n1025 ) , .B2 ( \enc/n7 ) , .X ( n1018 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1839 ( .CK ( n1998 ) , .EN ( n1908 ) , .X ( n1811 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P5 U1840 ( .A ( \enc/pcmSq [2] ) , .B1 ( n819 ) , 
    .B2 ( n1488 ) , .X ( n1250 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO21_U_0P5 U1841 ( .A1 ( \enc/sampDiff [1] ) , .A2 ( \enc/N178 ) , 
    .B ( n1247 ) , .X ( n1248 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1842 ( .A1 ( filter_out[14] ) , 
    .A2 ( \enc/predictorSamp [17] ) , .B1 ( n1715 ) , .B2 ( n1714 ) , 
    .X ( n1719 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1843 ( .CK ( filter_out[13] ) , .EN ( n1016 ) , 
    .X ( n1693 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1844 ( .CK ( \enc/stepSize [1] ) , .EN ( n1524 ) , 
    .X ( n821 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1845 ( .A1 ( n1246 ) , .A2 ( n1245 ) , .B ( n1244 ) , 
    .X ( n1249 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1846 ( .A1 ( counter[1] ) , .A2 ( counter[0] ) , 
    .B ( n1035 ) , .X ( n1033 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1847 ( .CK ( filter_out[2] ) , .EN ( n787 ) , 
    .X ( n1541 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AN3_0P5 U1848 ( .A1 ( \enc/pcmSq [2] ) , .A2 ( \enc/pcmSq [1] ) , 
    .A3 ( n1488 ) , .X ( n2025 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1849 ( .CK ( filter_out[11] ) , .EN ( n1684 ) , 
    .X ( n887 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1850 ( .CK ( \enc/stepSize [3] ) , .EN ( n1538 ) , 
    .X ( n823 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1851 ( .CK ( \enc/n6 ) , .EN ( \intadd_2/A[1] ) , 
    .X ( n1265 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1852 ( .CK ( \enc/predictorSamp [16] ) , 
    .EN ( copt_net_760 ) , .X ( n1694 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_0P5 U1853 ( .A1 ( \enc/predictorSamp [13] ) , .A2 ( n1657 ) , 
    .X ( n1656 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1854 ( .CK ( \enc/stepSize [8] ) , .EN ( n905 ) , 
    .X ( n832 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_0P5 U1855 ( .A1 ( \enc/n2 ) , .A2 ( n1315 ) , .X ( n1409 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U1856 ( .A1 ( \enc/stepSize [0] ) , .A2 ( n907 ) , 
    .B ( n906 ) , .X ( n909 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_0P5 U1857 ( .A1 ( \enc/predictorSamp [15] ) , .A2 ( n1202 ) , 
    .X ( n1201 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1858 ( .A1 ( \enc/stepSize [2] ) , .A2 ( n1524 ) , 
    .B1 ( \enc/stepSize [3] ) , .B2 ( n1521 ) , .X ( n908 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U1859 ( .A ( n1035 ) , .X ( n1481 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1860 ( .CK ( filter_out[9] ) , .EN ( n794 ) , 
    .X ( n885 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OR2_MM_0P5 U1861 ( .A1 ( \enc/pcmSq [2] ) , .A2 ( n819 ) , 
    .X ( n935 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AN2_MM_0P5 U1862 ( .A1 ( n898 ) , .A2 ( n1247 ) , .X ( n1523 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1863 ( .A ( n1255 ) , .X ( n902 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_AN2_MM_1 ctmTdsLR_1_1327 ( .A1 ( n1122 ) , 
    .A2 ( \cic/sub_cast_5 [10] ) , .X ( copt_net_130 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1865 ( .CK ( \enc/sampDiff [3] ) , .EN ( n2020 ) , 
    .X ( n1512 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U1866 ( .A ( copt_net_710 ) , .X ( \intadd_1/B[17] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EO2_V1_0P75 U1867 ( .A1 ( \enc/predictorSamp [18] ) , 
    .A2 ( \enc/prePCM [3] ) , .X ( n1011 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_2 ctmTdsLR_4_1148 ( .A1 ( \cic/sub_cast_3 [12] ) , 
    .A2 ( \intadd_0/n8 ) , .X ( copt_net_289 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1869 ( .A ( \enc/predictorSamp [14] ) , .X ( n1684 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OR2_MM_0P5 U1870 ( .A1 ( \enc/sampDiff [13] ) , .A2 ( n2012 ) , 
    .X ( n866 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EO2_V1_0P75 U1871 ( .A1 ( gre_net_849 ) , 
    .A2 ( \enc/dequantSamp [8] ) , .X ( \DP_OP_52J1_123_6716/n35 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1872 ( .A1 ( \enc/sampDiff [12] ) , .A2 ( n2012 ) , 
    .B1 ( \enc/sampDiff [11] ) , .B2 ( n2017 ) , .X ( n925 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_3 ctmTdsLR_1_1795 ( .A1 ( n1803 ) , .A2 ( copt_net_448 ) , 
    .B ( n1802 ) , .X ( n1804 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1874 ( .A ( \enc/sampDiff [3] ) , .X ( n1524 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUXI2_U_0P5 ctmTdsLR_1_2539 ( .D0 ( n2018 ) , 
    .D1 ( \enc/stepSize [9] ) , .S ( n871 ) , .X ( n858 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_EO2_V1_0P75 U1876 ( .A1 ( gre_net_849 ) , 
    .A2 ( \enc/dequantSamp [6] ) , .X ( \DP_OP_52J1_123_6716/n37 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_2 ctmTdsLR_2_1376 ( .A1 ( n1762 ) , .A2 ( copt_net_346 ) , 
    .X ( n1764 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1878 ( .A ( \enc/predictorSamp [0] ) , .X ( n1246 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1879 ( .A ( \enc/dequantSamp [10] ) , .X ( n952 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U1880 ( .A ( \cic/cur_count [3] ) , .X ( n1041 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U1881 ( .A ( \cic/sub_cast_3 [1] ) , .X ( n1070 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1882 ( .CK ( \enc/sampDiff [2] ) , .EN ( n2020 ) , 
    .X ( n1495 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U1883 ( .A ( copt_net_793 ) , .X ( n1160 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_ECO_4 U1884 ( .A ( \cic/sub_cast_3 [8] ) , .X ( n1072 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EO2_V1_0P75 U1885 ( .A1 ( gre_net_849 ) , 
    .A2 ( \enc/dequantSamp [16] ) , .X ( \DP_OP_52J1_123_6716/n27 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U1886 ( .A ( \cic/add_cast_5 [4] ) , 
    .X ( \intadd_1/B[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_0P5 U1887 ( .A1 ( \enc/prePCM [0] ) , 
    .A2 ( \enc/prePCM [2] ) , .X ( n1243 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U1888 ( .A ( \cic/sub_cast_3 [2] ) , .X ( n1071 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1889 ( .A ( \enc/dequantSamp [9] ) , .X ( n954 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U1890 ( .A ( \cic/sub_cast_3 [16] ) , .X ( n1152 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U1891 ( .A ( \cic/sub_cast_3 [5] ) , .X ( n1069 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_0P5 U1892 ( .A1 ( \enc/n3 ) , .A2 ( \enc/n5 ) , 
    .X ( n1317 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1893 ( .A ( \enc/n5 ) , .X ( \intadd_2/A[0] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1894 ( .A ( \enc/predictorSamp [1] ) , .X ( n1245 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U1895 ( .A ( filter_out[14] ) , .X ( n1715 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U1896 ( .A ( copt_net_683 ) , .X ( \intadd_1/B[15] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1897 ( .A ( \enc/n1 ) , .X ( \intadd_2/B[4] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_1P5 U1898 ( .A1 ( ZBUF_106_2 ) , .A2 ( \cic/add_cast_1 [0] ) , 
    .B ( \cic/add_cast_1 [1] ) , .X ( n1815 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U1899 ( .A ( filter_out[9] ) , .X ( n1151 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_4 ctmTdsLR_1_1944 ( .A1 ( copt_net_489 ) , 
    .A2 ( copt_net_490 ) , .B ( \cic/add_cast_3 [14] ) , .X ( n1790 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1901 ( .A ( \enc/sampDiff [17] ) , .X ( n1729 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EO2_V1_0P75 U1902 ( .A1 ( gre_net_849 ) , 
    .A2 ( \enc/dequantSamp [5] ) , .X ( \DP_OP_52J1_123_6716/n38 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P5 U1903 ( .A ( state[0] ) , .B1 ( block_enable ) , 
    .B2 ( n2016 ) , .X ( n2027 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1904 ( .A ( \enc/sampDiff [8] ) , .X ( n1600 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U1905 ( .A ( \cic/add_cast_1 [4] ) , .X ( n1929 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EO2_V1_0P75 U1906 ( .A1 ( gre_net_849 ) , 
    .A2 ( \enc/dequantSamp [17] ) , .X ( \DP_OP_52J1_123_6716/n26 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_2_2528 ( .A1 ( n1729 ) , .A2 ( n1709 ) , 
    .X ( tmp_net606 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U1908 ( .A ( \cic/sub_cast_3 [9] ) , .X ( n1091 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U1909 ( .A ( \cic/sub_cast_3 [18] ) , .X ( n1168 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U1910 ( .A ( copt_net_699 ) , .X ( \intadd_1/B[14] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U1911 ( .A ( \cic/sub_cast_5 [0] ) , .X ( n1068 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U1912 ( .A ( \cic/add_cast_1 [5] ) , .X ( n1926 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_1P5 ctmTdsLR_1_2529 ( .A ( tmp_net607 ) , .X ( n1998 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1914 ( .A ( \cic/add_cast_5 [8] ) , .X ( \intadd_1/B[7] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1915 ( .A ( \enc/predictorSamp [4] ) , .X ( n1506 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U1916 ( .A ( \cic/sub_cast_5 [1] ) , .X ( n1066 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1917 ( .A ( \enc/sampDiff [2] ) , .X ( n898 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_ECO_1 U1918 ( .A1 ( \cic/cur_count [1] ) , 
    .A2 ( \cic/cur_count [0] ) , .X ( n1043 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U1919 ( .A ( \cic/add_cast_3 [13] ) , .X ( n1874 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P75 U1920 ( .A ( \cic/add_cast_3 [1] ) , .X ( n1814 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U1921 ( .A ( filter_out[7] ) , .X ( n1619 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1922 ( .A1 ( \enc/sampDiff [14] ) , .A2 ( n2011 ) , 
    .B1 ( \enc/sampDiff [15] ) , .B2 ( n2007 ) , .X ( n837 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U1923 ( .A ( \cic/add_cast_1 [1] ) , .X ( n1915 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_1 ctmTdsLR_2_1299 ( .A ( \cic/add_cast_5 [2] ) , 
    .X ( \intadd_1/B[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U1925 ( .A ( \cic/add_cast_5 [6] ) , 
    .X ( \intadd_1/B[5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1926 ( .A ( \enc/n4 ) , .X ( \intadd_2/A[1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_6 U1927 ( .A ( ZBUF_2091_0 ) , .X ( n1994 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1928 ( .A ( \enc/n3 ) , .X ( \intadd_2/B[2] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U1929 ( .A ( \cic/sub_cast_3 [6] ) , .X ( n1065 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1930 ( .A ( \enc/sampDiff [16] ) , .X ( n1709 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U1931 ( .A ( filter_out[1] ) , .X ( n1505 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U1932 ( .A ( \cic/sub_cast_5 [18] ) , .X ( n1176 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U1933 ( .A ( \cic/add_cast_5 [13] ) , 
    .X ( \intadd_1/B[12] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1934 ( .A ( \enc/dequantSamp [7] ) , .X ( n958 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1935 ( .CK ( \enc/sampDiff [18] ) , 
    .EN ( \enc/sampDiff [19] ) , .X ( n903 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1936 ( .CK ( \enc/sampDiff [4] ) , .EN ( n2010 ) , 
    .X ( n822 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1937 ( .A ( copt_net_695 ) , .X ( n1185 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U1938 ( .A ( filter_out[11] ) , .X ( n1683 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1939 ( .CK ( \enc/n6 ) , .EN ( \enc/n7 ) , .X ( n1455 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U1940 ( .A ( \cic/add_cast_5 [9] ) , 
    .X ( \intadd_1/B[8] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1941 ( .CK ( \enc/N178 ) , .EN ( \enc/sampDiff [1] ) , 
    .X ( n1247 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EO2_V1_0P75 U1942 ( .A1 ( gre_net_849 ) , 
    .A2 ( \enc/dequantSamp [7] ) , .X ( \DP_OP_52J1_123_6716/n36 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U1943 ( .A1 ( \enc/sampDiff [15] ) , .A2 ( n2007 ) , 
    .B ( \enc/sampDiff [14] ) , .X ( n820 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_ECO_1 U1944 ( .A1 ( counter[1] ) , .A2 ( counter[0] ) , 
    .X ( n1035 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EO2_V1_0P75 U1945 ( .A1 ( \enc/prePCM [3] ) , 
    .A2 ( \enc/dequantSamp [18] ) , .X ( \DP_OP_52J1_123_6716/n25 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1946 ( .A ( \cic/add_cast_5 [12] ) , 
    .X ( \intadd_1/B[11] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_MM_1 ctmTdsLR_2_2530 ( .A1 ( n2016 ) , .A2 ( state[0] ) , 
    .X ( tmp_net607 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U1948 ( .A ( \cic/add_cast_3 [17] ) , .X ( n1894 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_1_1343 ( .A1 ( n1114 ) , 
    .A2 ( \cic/sub_cast_5 [9] ) , .X ( n1121 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1950 ( .A ( \cic/add_cast_5 [11] ) , 
    .X ( \intadd_1/B[10] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U1951 ( .A ( \cic/cur_count [4] ) , .X ( n1052 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1952 ( .A ( \enc/predictorSamp [6] ) , .X ( n1550 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1953 ( .A ( \enc/sampDiff [15] ) , .X ( n1216 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_2_2532 ( .A1 ( \intadd_2/B[2] ) , 
    .A2 ( n1394 ) , .X ( tmp_net608 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1955 ( .A ( \enc/prePCM [2] ) , .X ( n1025 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U1956 ( .A ( \cic/cur_count [1] ) , .X ( n2002 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1957 ( .A ( \enc/predictorSamp [12] ) , .X ( n794 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 ctmTdsLR_1_2533 ( .CK ( tmp_net610 ) , .EN ( n869 ) , 
    .X ( n960 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 ctmTdsLR_2_2534 ( .A ( tmp_net609 ) , .X ( tmp_net610 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_ECO_1 U1960 ( .A1 ( \enc/sampDiff [13] ) , .A2 ( n2012 ) , 
    .X ( n865 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U1961 ( .A ( \cic/cur_count [2] ) , .X ( n1045 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1962 ( .A ( \enc/sampDiff [5] ) , .X ( n1538 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OR3_1 ctmTdsLR_1_2414 ( .A1 ( n1964 ) , 
    .A2 ( \cic/add_cast_1 [12] ) , .A3 ( \cic/add_cast_1 [13] ) , 
    .X ( n1974 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EO2_V1_0P75 U1964 ( .A1 ( \cic/sub_cast_1 [19] ) , 
    .A2 ( \cic/add_cast_5 [19] ) , .X ( n1184 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1965 ( .A ( \enc/predictorSamp [5] ) , .X ( n787 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1966 ( .A ( \cic/add_cast_5 [10] ) , 
    .X ( \intadd_1/B[9] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1967 ( .A ( \enc/dequantSamp [8] ) , .X ( n956 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1968 ( .CK ( \enc/sampDiff [12] ) , .EN ( n2017 ) , 
    .X ( n864 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1969 ( .A ( \enc/prePCM [0] ) , .X ( n1024 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1970 ( .A ( \enc/sampDiff [11] ) , .X ( n1641 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_3_2535 ( .A1 ( \enc/sampDiff [16] ) , 
    .A2 ( n2019 ) , .B ( n1701 ) , .X ( tmp_net609 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1972 ( .A ( \enc/prePCM [1] ) , .X ( n1023 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U1973 ( .A1 ( \enc/sampDiff [14] ) , .A2 ( n2007 ) , 
    .B1 ( \enc/sampDiff [15] ) , .B2 ( n2019 ) , .X ( n928 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_EO2_V1_0P75 U1974 ( .A1 ( gre_net_849 ) , 
    .A2 ( \enc/dequantSamp [4] ) , .X ( \DP_OP_52J1_123_6716/n39 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1975 ( .A ( \enc/dequantSamp [11] ) , .X ( n948 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1976 ( .A ( \enc/dequantSamp [3] ) , .X ( n980 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1977 ( .A ( \enc/predictorSamp [16] ) , .X ( n1016 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1978 ( .A ( \enc/dequantSamp [4] ) , .X ( n978 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EO2_V1_0P75 U1979 ( .A1 ( gre_net_849 ) , 
    .A2 ( \enc/dequantSamp [3] ) , .X ( \DP_OP_52J1_123_6716/n40 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EO2_V1_0P75 U1980 ( .A1 ( gre_net_849 ) , 
    .A2 ( \enc/dequantSamp [11] ) , .X ( \DP_OP_52J1_123_6716/n32 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_MM_0P5 ctmTdsLR_1_2540 ( .D0 ( \enc/stepSize [4] ) , 
    .D1 ( n2015 ) , .S ( n1589 ) , .X ( n1582 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1982 ( .CK ( \enc/sampDiff [16] ) , .EN ( n2007 ) , 
    .X ( n878 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OR2_MM_0P5 U1983 ( .A1 ( \enc/sampDiff [11] ) , .A2 ( n2018 ) , 
    .X ( n850 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUXI2_U_0P5 ctmTdsLR_1_2541 ( .D0 ( n2008 ) , 
    .D1 ( \enc/stepSize [6] ) , .S ( n1615 ) , .X ( n1231 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OR2_MM_0P5 U1985 ( .A1 ( \enc/sampDiff [15] ) , .A2 ( n2011 ) , 
    .X ( n877 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUXI2_U_0P5 ctmTdsLR_1_2542 ( .D0 ( n2011 ) , 
    .D1 ( \enc/stepSize [12] ) , .S ( n1205 ) , .X ( n1211 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1987 ( .A ( \enc/n2 ) , .X ( \intadd_2/B[3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OR2_MM_0P5 U1988 ( .A1 ( \enc/sampDiff [11] ) , .A2 ( n2009 ) , 
    .X ( n852 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_1P5 ctmTdsLR_2_1983 ( .A ( n1758 ) , .X ( copt_net_498 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EO2_V1_0P75 U1990 ( .A1 ( gre_net_849 ) , 
    .A2 ( \enc/dequantSamp [10] ) , .X ( \DP_OP_52J1_123_6716/n33 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1991 ( .A ( \enc/dequantSamp [12] ) , .X ( n946 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1992 ( .A ( \enc/pcmSq [1] ) , .X ( n819 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U1993 ( .A ( \enc/dequantSamp [2] ) , .X ( n984 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1994 ( .CK ( \enc/sampDiff [9] ) , .EN ( n2013 ) , 
    .X ( n847 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_1_2543 ( .A1 ( n1428 ) , .A2 ( tmp_net613 ) , 
    .B ( tmp_net615 ) , .X ( n1286 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U1996 ( .A ( filter_out[3] ) , .X ( n1549 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1997 ( .CK ( \enc/sampDiff [10] ) , .EN ( n2009 ) , 
    .X ( n848 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U1998 ( .CK ( \enc/sampDiff [12] ) , .EN ( n2018 ) , 
    .X ( n872 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U1999 ( .A ( \cic/add_cast_3 [4] ) , .X ( n1829 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U2000 ( .A ( filter_out[13] ) , .X ( n1692 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U2001 ( .A ( \cic/add_cast_3 [7] ) , .X ( n1844 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U2002 ( .A ( \C40/DATA2_0 ) , .X ( n987 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_EO2_V1_0P75 U2003 ( .A1 ( gre_net_849 ) , 
    .A2 ( \enc/dequantSamp [12] ) , .X ( \DP_OP_52J1_123_6716/n31 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U2004 ( .A ( \enc/dequantSamp [5] ) , .X ( n976 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_2_2544 ( .A1 ( \enc/n4 ) , .A2 ( n1425 ) , 
    .X ( tmp_net613 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U2006 ( .CK ( \enc/n1 ) , .EN ( \enc/n2 ) , .X ( n1385 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U2007 ( .A1 ( \enc/sampDiff [8] ) , .A2 ( n2013 ) , 
    .B1 ( \enc/sampDiff [7] ) , .B2 ( n2008 ) , .X ( n916 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U2008 ( .A ( \enc/sampDiff [7] ) , .X ( n913 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OR2_MM_0P5 U2009 ( .A1 ( \enc/sampDiff [13] ) , .A2 ( n2017 ) , 
    .X ( n874 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U2010 ( .A ( \cic/sub_cast_3 [0] ) , .X ( n1055 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U2011 ( .A1 ( \enc/sampDiff [3] ) , .A2 ( n2010 ) , 
    .B1 ( \enc/sampDiff [2] ) , .B2 ( n2006 ) , .X ( n906 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U2012 ( .CK ( \enc/sampDiff [14] ) , .EN ( n2012 ) , 
    .X ( n875 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EO2_V1_0P75 U2013 ( .A1 ( gre_net_849 ) , 
    .A2 ( \enc/dequantSamp [2] ) , .X ( \DP_OP_52J1_123_6716/n41 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_2 ctmTdsLR_3_819 ( .A1 ( copt_net_156 ) , 
    .A2 ( copt_net_157 ) , .X ( \intadd_1/n3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U2015 ( .A ( \cic/sub_cast_3 [10] ) , .X ( n1102 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 ctmTdsLR_3_2545 ( .CK ( tmp_net614 ) , .EN ( n1285 ) , 
    .X ( tmp_net615 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U2017 ( .A ( \enc/n6 ) , .X ( n1440 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_3 U2018 ( .A ( ZBUF_125_0 ) , .X ( n1736 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U2019 ( .A ( \enc/dequantSamp [6] ) , .X ( n974 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OR2_MM_0P5 U2020 ( .A1 ( \enc/sampDiff [17] ) , .A2 ( n2019 ) , 
    .X ( n880 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U2021 ( .A ( \enc/N178 ) , .X ( n1029 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U2022 ( .A ( \enc/n7 ) , .X ( n1425 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_EO2_V1_0P75 U2023 ( .A1 ( gre_net_849 ) , 
    .A2 ( \enc/dequantSamp [13] ) , .X ( \DP_OP_52J1_123_6716/n30 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U2024 ( .A ( \enc/sampDiff [19] ) , .X ( n882 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U2025 ( .A ( \cic/sub_cast_3 [11] ) , .X ( n1110 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AN2_MM_0P5 U2026 ( .A1 ( n2017 ) , .A2 ( \enc/sampDiff [13] ) , 
    .X ( n873 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U2027 ( .A ( \enc/sampDiff [14] ) , .X ( n1680 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U2028 ( .CK ( \enc/n4 ) , .EN ( \enc/n3 ) , .X ( n1315 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U2029 ( .A ( \cic/add_cast_3 [9] ) , .X ( n1854 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U2030 ( .A ( \enc/predictorSamp [8] ) , .X ( n1604 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U2031 ( .CK ( \enc/pcmSq [1] ) , .EN ( \enc/pcmSq [0] ) , 
    .X ( n1255 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U2032 ( .CK ( \enc/sampDiff [7] ) , .EN ( n2021 ) , 
    .X ( n844 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_1P5 U2033 ( .A ( ZBUF_78_3 ) , .X ( n1908 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U2034 ( .A ( \cic/add_cast_3 [3] ) , .X ( n1824 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U2035 ( .A ( \cic/sub_cast_3 [3] ) , .X ( n1083 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P75 U2036 ( .A ( \cic/input_register [0] ) , .X ( n1907 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_ECO_1 U2037 ( .A1 ( \enc/sampDiff [9] ) , .A2 ( n2013 ) , 
    .X ( n846 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U2038 ( .A ( \enc/predictorSamp [10] ) , .X ( n786 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U2039 ( .A ( \cic/add_cast_1 [7] ) , .X ( n1937 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OR2_MM_0P5 U2040 ( .A1 ( \enc/predictorSamp [1] ) , 
    .A2 ( \enc/predictorSamp [0] ) , .X ( n1244 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U2041 ( .A ( \cic/sub_cast_5 [3] ) , .X ( n1073 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_9 U2042 ( .A ( \cic/sub_cast_3 [7] ) , .X ( n1074 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U2043 ( .A ( \cic/sub_cast_3 [15] ) , .X ( n1143 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U2044 ( .A ( \cic/add_cast_5 [3] ) , .X ( \intadd_1/B[2] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EO2_V1_0P75 U2045 ( .A1 ( gre_net_849 ) , .A2 ( \C40/DATA2_0 ) , 
    .X ( \DP_OP_52J1_123_6716/n43 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U2046 ( .A ( \enc/sampDiff [6] ) , .X ( n1564 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U2047 ( .A ( \enc/pcmSq [0] ) , .X ( n1488 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U2048 ( .A ( \cic/sub_cast_5 [2] ) , .X ( n1075 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U2049 ( .CK ( \enc/sampDiff [10] ) , .EN ( n2018 ) , 
    .X ( n919 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U2050 ( .A ( \enc/dequantSamp [14] ) , .X ( n936 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_0P5 ctmTdsLR_3_1377 ( .A1 ( copt_net_300 ) , 
    .A2 ( \cic/add_cast_5 [7] ) , .X ( copt_net_346 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_EO2_V1_0P75 U2052 ( .A1 ( gre_net_849 ) , 
    .A2 ( \enc/dequantSamp [15] ) , .X ( \DP_OP_52J1_123_6716/n28 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U2053 ( .A ( \cic/sub_cast_3 [14] ) , .X ( n1134 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P5 U2054 ( .A1 ( ZBUF_125_0 ) , .A2 ( ZBUF_47_16 ) , 
    .B ( \cic/add_cast_3 [1] ) , .X ( n1739 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U2055 ( .CK ( \enc/sampDiff [7] ) , .EN ( n2015 ) , 
    .X ( n1590 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U2056 ( .A ( filter_out[5] ) , .X ( n1603 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U2057 ( .A ( filter_out[2] ) , .X ( n1090 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U2058 ( .A ( \enc/sampDiff [10] ) , .X ( n905 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U2059 ( .A ( \cic/add_cast_1 [18] ) , .X ( n1995 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U2060 ( .A ( \cic/add_cast_3 [11] ) , .X ( n1864 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U2061 ( .A ( \cic/sub_cast_3 [13] ) , .X ( n1126 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U2062 ( .A ( \enc/sampDiff [4] ) , .X ( n1521 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U2063 ( .A ( \cic/add_cast_1 [16] ) , .X ( n1983 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U2064 ( .CK ( \enc/sampDiff [15] ) , .EN ( n2007 ) , 
    .X ( n868 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U2065 ( .A ( \cic/add_cast_1 [14] ) , .X ( n1972 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U2066 ( .A ( \enc/sampDiff [18] ) , .X ( n967 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U2067 ( .CK ( \enc/sampDiff [9] ) , .EN ( n2008 ) , 
    .X ( n1616 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U2068 ( .A ( \cic/add_cast_1 [12] ) , .X ( n1962 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U2069 ( .A ( \cic/sub_cast_3 [12] ) , .X ( n1118 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U2070 ( .A ( \enc/pcmSq [2] ) , .X ( n1237 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U2071 ( .A ( \cic/add_cast_3 [18] ) , .X ( n1899 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_2 U2072 ( .A ( \cic/add_cast_5 [1] ) , .X ( \intadd_1/B[0] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U2073 ( .A ( \cic/add_cast_1 [8] ) , .X ( n1942 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EO2_V1_0P75 U2074 ( .A1 ( gre_net_849 ) , 
    .A2 ( \enc/dequantSamp [1] ) , .X ( \DP_OP_52J1_123_6716/n42 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U2075 ( .A ( \cic/add_cast_1 [2] ) , .X ( n1912 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U2076 ( .A ( \cic/add_cast_1 [9] ) , .X ( n1947 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U2077 ( .A ( \cic/add_cast_1 [10] ) , .X ( n1952 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U2078 ( .A ( \enc/sampDiff [12] ) , .X ( n924 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EO2_V1_0P75 U2079 ( .A1 ( gre_net_849 ) , 
    .A2 ( \enc/dequantSamp [14] ) , .X ( \DP_OP_52J1_123_6716/n29 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U2080 ( .A ( \cic/add_cast_1 [6] ) , .X ( n1932 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U2081 ( .A ( \enc/predictorSamp [17] ) , .X ( n1714 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U2082 ( .A1 ( \enc/sampDiff [2] ) , .A2 ( n2006 ) , 
    .B ( \enc/sampDiff [1] ) , .X ( n907 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_2_1151 ( .A1 ( n1885 ) , .A2 ( n1884 ) , 
    .X ( copt_net_290 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U2084 ( .A ( \enc/dequantSamp [1] ) , .X ( n785 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U2085 ( .A ( \cic/sub_cast_3 [4] ) , .X ( n1082 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U2086 ( .A ( \enc/sampDiff [9] ) , .X ( n1233 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 U2087 ( .A ( \enc/dequantSamp [13] ) , .X ( n938 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EO2_V1_0P75 U2088 ( .A1 ( gre_net_849 ) , 
    .A2 ( \enc/dequantSamp [9] ) , .X ( \DP_OP_52J1_123_6716/n34 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OA2BB2_V1_0P5 U2089 ( .A1 ( n2012 ) , .A2 ( n1653 ) , 
    .B1 ( n2012 ) , .B2 ( n1653 ) , .X ( n1662 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U2090 ( .A1 ( state[1] ) , .A2 ( n2022 ) , .B ( n1998 ) , 
    .X ( n2026 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U2091 ( .A ( filter_out[8] ) , .X ( n1142 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U2092 ( .A ( filter_out[6] ) , .X ( n1221 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U2093 ( .A ( filter_out[4] ) , .X ( n1576 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U2094 ( .A ( filter_out[0] ) , .X ( n1493 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EO2_V1_0P75 U2095 ( .A1 ( n884 ) , .A2 ( n796 ) , .X ( n862 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OA22_U_0P5 U2096 ( .A1 ( n803 ) , .A2 ( n877 ) , .B1 ( n802 ) , 
    .B2 ( n810 ) , .X ( n804 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO21B_0P5 U2097 ( .A1 ( \enc/stepSize [4] ) , .A2 ( n843 ) , 
    .B ( \enc/sampDiff [6] ) , .X ( n824 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U2098 ( .A1 ( n826 ) , .A2 ( n827 ) , .B ( n825 ) , 
    .X ( n828 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 ctmTdsLR_4_2546 ( .A ( n1379 ) , .X ( tmp_net614 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U2100 ( .CK ( n2008 ) , .EN ( n845 ) , .X ( n1594 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO32_U_0P5 U2101 ( .A1 ( \enc/sampDiff [12] ) , .A2 ( n860 ) , 
    .A3 ( n1675 ) , .B1 ( n924 ) , .B2 ( n859 ) , .X ( n861 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_AO21B_0P5 U2102 ( .A1 ( n866 ) , .A2 ( n1653 ) , .B ( n865 ) , 
    .X ( n867 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OA21B_U_0P5 U2103 ( .A1 ( \enc/sampDiff [14] ) , .A2 ( n1671 ) , 
    .B ( n1672 ) , .X ( n1208 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U2105 ( .A ( filter_out[12] ) , .X ( n1202 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U2106 ( .A ( filter_out[10] ) , .X ( n1657 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OR2_MM_0P5 U2107 ( .A1 ( n893 ) , .A2 ( n892 ) , .X ( n743 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO21B_0P5 U2108 ( .A1 ( n1538 ) , .A2 ( n911 ) , .B ( n910 ) , 
    .X ( n912 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U2109 ( .CK ( n915 ) , .EN ( n914 ) , .X ( n917 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U2110 ( .A1 ( n921 ) , .A2 ( n920 ) , .B ( n919 ) , 
    .X ( n922 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U2111 ( .CK ( n923 ) , .EN ( n922 ) , .X ( n926 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U2112 ( .A1 ( n930 ) , .A2 ( n929 ) , .B ( n928 ) , 
    .X ( n931 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U2113 ( .A1 ( n988 ) , .A2 ( n938 ) , .B1 ( n1490 ) , 
    .B2 ( n2007 ) , .X ( n939 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUX2_MM_0P5 U2114 ( .D0 ( n1440 ) , .D1 ( \enc/n6 ) , .S ( n942 ) , 
    .X ( n943 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U2115 ( .A1 ( \enc/n6 ) , .A2 ( \enc/n4 ) , .B ( n944 ) , 
    .X ( n945 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U2116 ( .A1 ( n988 ) , .A2 ( n948 ) , .B1 ( n1490 ) , 
    .B2 ( n2012 ) , .X ( n949 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U2117 ( .A1 ( n988 ) , .A2 ( n952 ) , .B1 ( n1490 ) , 
    .B2 ( n2017 ) , .X ( n953 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U2118 ( .A1 ( n988 ) , .A2 ( n954 ) , .B1 ( n1490 ) , 
    .B2 ( n2018 ) , .X ( n955 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U2119 ( .CK ( n965 ) , .EN ( n964 ) , .X ( n973 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U2120 ( .A1 ( n988 ) , .A2 ( n974 ) , .B1 ( n1490 ) , 
    .B2 ( n2008 ) , .X ( n975 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U2121 ( .A1 ( n988 ) , .A2 ( n987 ) , .B1 ( n1490 ) , 
    .B2 ( n2020 ) , .X ( n989 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EO2_V1_0P75 U2122 ( .A1 ( \DP_OP_85J1_126_8300/n1 ) , 
    .A2 ( \enc/dequantSamp [18] ) , .X ( n990 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U2123 ( .A1 ( n2019 ) , .A2 ( n1238 ) , .B1 ( n2007 ) , 
    .B2 ( n782 ) , .X ( \C1/Z_16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OA22_U_0P5 U2124 ( .A1 ( n1010 ) , .A2 ( n2019 ) , .B1 ( n2011 ) , 
    .B2 ( n782 ) , .X ( n997 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OA22_U_0P5 U2125 ( .A1 ( n1010 ) , .A2 ( n2007 ) , .B1 ( n2012 ) , 
    .B2 ( n782 ) , .X ( n998 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OA22_U_0P5 U2126 ( .A1 ( n1010 ) , .A2 ( n2011 ) , .B1 ( n2017 ) , 
    .B2 ( n782 ) , .X ( n999 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OA22_U_0P5 U2127 ( .A1 ( n1010 ) , .A2 ( n2012 ) , .B1 ( n2018 ) , 
    .B2 ( n782 ) , .X ( n1000 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OA22_U_0P5 U2128 ( .A1 ( n1010 ) , .A2 ( n2017 ) , .B1 ( n2009 ) , 
    .B2 ( n782 ) , .X ( n1001 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OA22_U_0P5 U2129 ( .A1 ( n1010 ) , .A2 ( n2018 ) , .B1 ( n2013 ) , 
    .B2 ( n782 ) , .X ( n1002 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OA22_U_0P5 U2130 ( .A1 ( n1010 ) , .A2 ( n2009 ) , .B1 ( n2013 ) , 
    .B2 ( n1238 ) , .X ( n1003 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OA22_U_0P5 U2131 ( .A1 ( n1010 ) , .A2 ( n2013 ) , .B1 ( n2021 ) , 
    .B2 ( n782 ) , .X ( n1004 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OA22_U_0P5 U2132 ( .A1 ( n1010 ) , .A2 ( n2008 ) , .B1 ( n2015 ) , 
    .B2 ( n782 ) , .X ( n1005 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OA22_U_0P5 U2133 ( .A1 ( n1010 ) , .A2 ( n2021 ) , .B1 ( n2014 ) , 
    .B2 ( n782 ) , .X ( n1006 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OA22_U_0P5 U2134 ( .A1 ( n1010 ) , .A2 ( n2015 ) , .B1 ( n2010 ) , 
    .B2 ( n782 ) , .X ( n1007 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OA22_U_0P5 U2135 ( .A1 ( n1010 ) , .A2 ( n2014 ) , .B1 ( n2006 ) , 
    .B2 ( n782 ) , .X ( n1008 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OA22_U_0P5 U2136 ( .A1 ( n1010 ) , .A2 ( n2010 ) , .B1 ( n2020 ) , 
    .B2 ( n782 ) , .X ( n1009 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EO2_V1_0P75 U2137 ( .A1 ( \DP_OP_52J1_123_6716/n2 ) , 
    .A2 ( n1011 ) , .X ( n1241 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO22_0P75 U2138 ( .A1 ( n1477 ) , .A2 ( encPcm[2] ) , 
    .B1 ( n2025 ) , .B2 ( \enc/prePCM [2] ) , .X ( n546 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_AN2_2 ctmTdsLR_1_2438 ( .A1 ( n1802 ) , .A2 ( ZBUF_7033_0 ) , 
    .X ( copt_net_406 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_1P5 ctmTdsLR_1_2547 ( .A ( tmp_net616 ) , .X ( n1979 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_4 ctmTdsLR_5_743 ( .A1 ( copt_net_115 ) , 
    .A2 ( copt_net_114 ) , .X ( copt_net_116 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_1 ctmTdsLR_4_904 ( .A1 ( \intadd_0/n14 ) , 
    .A2 ( \cic/sub_cast_3 [6] ) , .X ( copt_net_184 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_EO2_1 ctmTdsLR_2_1004 ( .A1 ( \cic/sub_cast_1 [13] ) , 
    .A2 ( \intadd_1/B[12] ) , .X ( copt_net_235 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U2144 ( .A1 ( n1199 ) , .A2 ( n1493 ) , 
    .B1 ( ZBUF_3254_0 ) , .B2 ( n1064 ) , .X ( n615 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U2145 ( .A1 ( n1199 ) , .A2 ( copt_net_755 ) , 
    .B1 ( ZBUF_4803_0 ) , .B2 ( \intadd_0/B[5] ) , .X ( n589 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U2146 ( .A1 ( n1199 ) , .A2 ( copt_net_739 ) , 
    .B1 ( ZBUF_3254_0 ) , .B2 ( \intadd_0/SUM[0] ) , .X ( n614 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U2147 ( .A1 ( n1199 ) , .A2 ( copt_net_707 ) , 
    .B1 ( ZBUF_3254_0 ) , .B2 ( n1067 ) , .X ( n595 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U2148 ( .A1 ( n1199 ) , .A2 ( copt_net_782 ) , 
    .B1 ( ZBUF_4803_0 ) , .B2 ( \intadd_0/B[4] ) , .X ( n590 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U2149 ( .A1 ( n1199 ) , .A2 ( copt_net_730 ) , 
    .B1 ( ZBUF_3254_0 ) , .B2 ( \intadd_0/B[0] ) , .X ( n594 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U2150 ( .A1 ( n1199 ) , .A2 ( copt_net_753 ) , 
    .B1 ( ZBUF_3254_0 ) , .B2 ( ZBUF_2_16 ) , .X ( n593 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U2151 ( .A1 ( n1199 ) , .A2 ( n1072 ) , 
    .B1 ( ZBUF_4803_0 ) , .B2 ( \intadd_0/B[7] ) , .X ( n587 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U2152 ( .A1 ( n1199 ) , .A2 ( copt_net_709 ) , 
    .B1 ( ZBUF_3254_0 ) , .B2 ( \intadd_0/SUM[2] ) , .X ( n612 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U2153 ( .A1 ( n1199 ) , .A2 ( n1074 ) , 
    .B1 ( ZBUF_4803_0 ) , .B2 ( \intadd_0/B[6] ) , .X ( n588 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U2154 ( .A1 ( n1199 ) , .A2 ( copt_net_708 ) , 
    .B1 ( ZBUF_3254_0 ) , .B2 ( \intadd_0/SUM[1] ) , .X ( n613 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U2155 ( .A1 ( n1199 ) , .A2 ( copt_net_732 ) , 
    .B1 ( ZBUF_3254_0 ) , .B2 ( n1081 ) , .X ( n630 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U2156 ( .A1 ( n1199 ) , .A2 ( copt_net_761 ) , 
    .B1 ( ZBUF_4803_0 ) , .B2 ( \intadd_0/B[3] ) , .X ( n591 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U2157 ( .A1 ( n1199 ) , .A2 ( n1083 ) , 
    .B1 ( ZBUF_3254_0 ) , .B2 ( \intadd_0/B[2] ) , .X ( n592 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U2158 ( .A1 ( n1199 ) , .A2 ( copt_net_696 ) , 
    .B1 ( ZBUF_3254_0 ) , .B2 ( n1089 ) , .X ( n629 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U2159 ( .A1 ( ZBUF_2257_0 ) , .A2 ( ZBUF_28_0 ) , 
    .B1 ( ZBUF_3254_0 ) , .B2 ( copt_net_835 ) , .X ( n555 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U2160 ( .A1 ( n1199 ) , .A2 ( n1091 ) , 
    .B1 ( ZBUF_4803_0 ) , .B2 ( \intadd_0/B[8] ) , .X ( n586 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO22_0P5 U2161 ( .A1 ( ZBUF_4803_0 ) , .A2 ( \cic/sub_cast_1 [6] ) , 
    .B1 ( ZBUF_2257_0 ) , .B2 ( \cic/add_cast_5 [6] ) , .X ( n569 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO22_0P75 U2162 ( .A1 ( ZBUF_4803_0 ) , .A2 ( copt_net_794 ) , 
    .B1 ( ZBUF_2257_0 ) , .B2 ( copt_net_686 ) , .X ( n561 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_AO22_0P5 U2163 ( .A1 ( ZBUF_4803_0 ) , .A2 ( copt_net_706 ) , 
    .B1 ( ZBUF_2257_0 ) , .B2 ( n1104 ) , .X ( n608 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_AO22_0P5 U2164 ( .A1 ( ZBUF_3254_0 ) , .A2 ( copt_net_689 ) , 
    .B1 ( ZBUF_2257_0 ) , .B2 ( n1092 ) , .X ( n610 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_AO22_0P5 U2165 ( .A1 ( ZBUF_300_0 ) , .A2 ( copt_net_800 ) , 
    .B1 ( ZBUF_2257_0 ) , .B2 ( copt_net_710 ) , .X ( n557 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_AO22_0P5 U2166 ( .A1 ( ZBUF_4803_0 ) , 
    .A2 ( \cic/sub_cast_1 [11] ) , .B1 ( ZBUF_2257_0 ) , 
    .B2 ( \cic/add_cast_5 [11] ) , .X ( n564 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO22_0P5 U2167 ( .A1 ( ZBUF_4803_0 ) , 
    .A2 ( \cic/sub_cast_1 [12] ) , .B1 ( ZBUF_2257_0 ) , 
    .B2 ( copt_net_701 ) , .X ( n563 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO22_0P75 U2168 ( .A1 ( ZBUF_4803_0 ) , .A2 ( copt_net_799 ) , 
    .B1 ( ZBUF_2257_0 ) , .B2 ( copt_net_699 ) , .X ( n560 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_AO22_0P75 U2169 ( .A1 ( ZBUF_4803_0 ) , .A2 ( copt_net_801 ) , 
    .B1 ( ZBUF_2257_0 ) , .B2 ( copt_net_683 ) , .X ( n559 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_AO22_1 U2170 ( .A1 ( ZBUF_4803_0 ) , .A2 ( copt_net_807 ) , 
    .B1 ( ZBUF_2257_0 ) , .B2 ( copt_net_848 ) , .X ( n562 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_AO22_1 U2171 ( .A1 ( ZBUF_3254_0 ) , .A2 ( \cic/sub_cast_1 [2] ) , 
    .B1 ( ZBUF_2257_0 ) , .B2 ( \cic/add_cast_5 [2] ) , .X ( n573 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO22_1 U2172 ( .A1 ( ZBUF_3254_0 ) , .A2 ( gre_net_854 ) , 
    .B1 ( ZBUF_2257_0 ) , .B2 ( copt_net_690 ) , .X ( n565 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_AO22_0P75 U2173 ( .A1 ( ZBUF_4803_0 ) , 
    .A2 ( \cic/sub_cast_1 [8] ) , .B1 ( ZBUF_2257_0 ) , 
    .B2 ( \cic/add_cast_5 [8] ) , .X ( n567 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO22_0P5 U2174 ( .A1 ( ZBUF_3254_0 ) , .A2 ( copt_net_780 ) , 
    .B1 ( ZBUF_2257_0 ) , .B2 ( n1093 ) , .X ( n611 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_AO22_1 U2175 ( .A1 ( ZBUF_3254_0 ) , .A2 ( \cic/sub_cast_1 [3] ) , 
    .B1 ( ZBUF_2257_0 ) , .B2 ( \cic/add_cast_5 [3] ) , .X ( n572 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO22_0P5 U2176 ( .A1 ( ZBUF_300_0 ) , .A2 ( copt_net_797 ) , 
    .B1 ( ZBUF_2257_0 ) , .B2 ( copt_net_724 ) , .X ( n558 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_AO22_0P5 U2177 ( .A1 ( ZBUF_3254_0 ) , .A2 ( \cic/sub_cast_1 [1] ) , 
    .B1 ( ZBUF_2257_0 ) , .B2 ( copt_net_731 ) , .X ( n574 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_AO22_0P5 U2178 ( .A1 ( ZBUF_4803_0 ) , .A2 ( \cic/sub_cast_1 [9] ) , 
    .B1 ( ZBUF_2257_0 ) , .B2 ( copt_net_692 ) , .X ( n566 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_AO22_0P5 U2179 ( .A1 ( ZBUF_3254_0 ) , .A2 ( \cic/sub_cast_3 [0] ) , 
    .B1 ( ZBUF_2257_0 ) , .B2 ( n1094 ) , .X ( n575 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_AO22_1 U2180 ( .A1 ( ZBUF_4803_0 ) , .A2 ( copt_net_808 ) , 
    .B1 ( ZBUF_2257_0 ) , .B2 ( copt_net_759 ) , .X ( n568 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_AO22_0P5 U2181 ( .A1 ( ZBUF_3254_0 ) , .A2 ( \cic/sub_cast_1 [4] ) , 
    .B1 ( ZBUF_2257_0 ) , .B2 ( \cic/add_cast_5 [4] ) , .X ( n571 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO22_0P5 U2182 ( .A1 ( ZBUF_3254_0 ) , .A2 ( \cic/sub_cast_5 [6] ) , 
    .B1 ( ZBUF_2257_0 ) , .B2 ( n1096 ) , .X ( n609 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_AO22_0P5 U2183 ( .A1 ( ZBUF_4803_0 ) , .A2 ( \cic/sub_cast_1 [5] ) , 
    .B1 ( ZBUF_2257_0 ) , .B2 ( copt_net_725 ) , .X ( n570 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P75 U2184 ( .A1 ( n1199 ) , .A2 ( copt_net_734 ) , 
    .B1 ( ZBUF_4803_0 ) , .B2 ( n1101 ) , .X ( n628 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_AO22_0P5 U2185 ( .A1 ( ZBUF_4803_0 ) , .A2 ( gre_net_853 ) , 
    .B1 ( ZBUF_2257_0 ) , .B2 ( n1112 ) , .X ( n607 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U2186 ( .A1 ( n1199 ) , .A2 ( copt_net_729 ) , 
    .B1 ( ZBUF_4803_0 ) , .B2 ( \intadd_0/B[9] ) , .X ( n585 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_1 U2187 ( .A1 ( n1199 ) , .A2 ( copt_net_735 ) , 
    .B1 ( ZBUF_4803_0 ) , .B2 ( n1109 ) , .X ( n627 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_AO22_4 U2188 ( .A1 ( ZBUF_736_0 ) , .A2 ( gre_net_855 ) , 
    .B1 ( ZBUF_2257_0 ) , .B2 ( n1120 ) , .X ( n606 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_2 U2189 ( .A1 ( n1199 ) , .A2 ( copt_net_756 ) , 
    .B1 ( ZBUF_4803_0 ) , .B2 ( \intadd_0/B[10] ) , .X ( n584 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_1 U2190 ( .A1 ( n1199 ) , .A2 ( copt_net_736 ) , 
    .B1 ( ZBUF_736_0 ) , .B2 ( n1117 ) , .X ( n626 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_AO22_0P5 U2191 ( .A1 ( ZBUF_736_0 ) , .A2 ( copt_net_713 ) , 
    .B1 ( ZBUF_2257_0 ) , .B2 ( n1128 ) , .X ( n605 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_1 U2192 ( .A1 ( n1199 ) , .A2 ( copt_net_786 ) , 
    .B1 ( ZBUF_4803_0 ) , .B2 ( \intadd_0/B[11] ) , .X ( n583 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P75 U2193 ( .A1 ( n1199 ) , .A2 ( copt_net_751 ) , 
    .B1 ( ZBUF_736_0 ) , .B2 ( n1125 ) , .X ( n625 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_AO22_0P5 U2194 ( .A1 ( ZBUF_736_0 ) , .A2 ( copt_net_723 ) , 
    .B1 ( ZBUF_2257_0 ) , .B2 ( n1136 ) , .X ( n604 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_1 U2195 ( .A1 ( n1199 ) , .A2 ( copt_net_784 ) , 
    .B1 ( ZBUF_4803_0 ) , .B2 ( \intadd_0/B[12] ) , .X ( n582 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P75 U2196 ( .A1 ( n1199 ) , .A2 ( copt_net_745 ) , 
    .B1 ( ZBUF_457_0 ) , .B2 ( n1133 ) , .X ( n624 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_AO22_0P5 U2197 ( .A1 ( n2004 ) , .A2 ( copt_net_712 ) , 
    .B1 ( ZBUF_2257_0 ) , .B2 ( n1145 ) , .X ( n603 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_1 U2198 ( .A1 ( n1199 ) , .A2 ( copt_net_783 ) , 
    .B1 ( ZBUF_4803_0 ) , .B2 ( \intadd_0/B[13] ) , .X ( n581 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_1 U2199 ( .A1 ( n1199 ) , .A2 ( copt_net_722 ) , 
    .B1 ( ZBUF_457_0 ) , .B2 ( n1141 ) , .X ( n623 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_AO22_0P5 U2200 ( .A1 ( n2004 ) , .A2 ( copt_net_737 ) , 
    .B1 ( ZBUF_2257_0 ) , .B2 ( n1154 ) , .X ( n602 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_1 U2201 ( .A1 ( n1199 ) , .A2 ( copt_net_781 ) , 
    .B1 ( n2004 ) , .B2 ( \intadd_0/B[14] ) , .X ( n580 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_1 U2202 ( .A1 ( n1199 ) , .A2 ( copt_net_763 ) , 
    .B1 ( ZBUF_457_0 ) , .B2 ( n1150 ) , .X ( n622 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_AO22_0P5 U2203 ( .A1 ( ZBUF_56_16 ) , .A2 ( copt_net_847 ) , 
    .B1 ( ZBUF_2257_0 ) , .B2 ( n1162 ) , .X ( n601 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_1 U2204 ( .A1 ( n1199 ) , .A2 ( copt_net_744 ) , 
    .B1 ( n2004 ) , .B2 ( \intadd_0/B[15] ) , .X ( n579 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_1 U2205 ( .A1 ( n1199 ) , .A2 ( n1657 ) , .B1 ( ZBUF_457_0 ) , 
    .B2 ( n1159 ) , .X ( n621 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO22_0P5 U2206 ( .A1 ( ZBUF_300_0 ) , .A2 ( \cic/sub_cast_5 [15] ) , 
    .B1 ( ZBUF_2257_0 ) , .B2 ( n1170 ) , .X ( n600 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_1 U2207 ( .A1 ( n1199 ) , .A2 ( n1160 ) , .B1 ( ZBUF_300_0 ) , 
    .B2 ( \intadd_0/B[16] ) , .X ( n578 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_1 U2208 ( .A1 ( n1199 ) , .A2 ( copt_net_746 ) , 
    .B1 ( ZBUF_457_0 ) , .B2 ( n1167 ) , .X ( n620 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_AO22_0P5 U2209 ( .A1 ( ZBUF_300_0 ) , .A2 ( copt_net_749 ) , 
    .B1 ( ZBUF_2257_0 ) , .B2 ( n1178 ) , .X ( n599 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_2 U2210 ( .A1 ( ZBUF_2257_0 ) , .A2 ( copt_net_785 ) , 
    .B1 ( ZBUF_300_0 ) , .B2 ( \intadd_0/B[17] ) , .X ( n577 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_2 U2211 ( .A1 ( n1199 ) , .A2 ( copt_net_764 ) , 
    .B1 ( ZBUF_457_0 ) , .B2 ( n1175 ) , .X ( n619 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_AO22_2 U2212 ( .A1 ( ZBUF_300_0 ) , .A2 ( copt_net_721 ) , 
    .B1 ( ZBUF_2257_0 ) , .B2 ( n1187 ) , .X ( n598 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_1 U2213 ( .A1 ( n1199 ) , .A2 ( copt_net_738 ) , 
    .B1 ( ZBUF_457_0 ) , .B2 ( \intadd_0/SUM[17] ) , .X ( n597 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_1 U2214 ( .A1 ( n1199 ) , .A2 ( copt_net_760 ) , 
    .B1 ( ZBUF_4803_0 ) , .B2 ( n1183 ) , .X ( n618 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_EO2_1P5 U2215 ( .A1 ( \intadd_1/n1 ) , .A2 ( n1184 ) , 
    .X ( n2003 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_1 U2216 ( .A1 ( n1199 ) , .A2 ( copt_net_742 ) , 
    .B1 ( ZBUF_3254_0 ) , .B2 ( n1191 ) , .X ( n617 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_2 U2217 ( .A1 ( n1199 ) , .A2 ( gre_a_INV_63_1 ) , 
    .B1 ( ZBUF_736_0 ) , .B2 ( n1197 ) , .X ( n616 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_EO2_V1_0P75 U2218 ( .A1 ( n1203 ) , .A2 ( n1204 ) , .X ( n1219 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U2219 ( .A1 ( \enc/stepSize [13] ) , .A2 ( n1208 ) , 
    .B1 ( n2007 ) , .B2 ( n1207 ) , .X ( n1210 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_AO32_U_0P5 U2220 ( .A1 ( \enc/sampDiff [15] ) , .A2 ( n1217 ) , 
    .A3 ( n1675 ) , .B1 ( n1216 ) , .B2 ( n1215 ) , .X ( n1218 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EO2_V1_0P75 U2221 ( .A1 ( n1223 ) , .A2 ( n1222 ) , .X ( n1236 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_1_2565 ( .A1 ( n1512 ) , .A2 ( tmp_net625 ) , 
    .B ( tmp_net627 ) , .X ( n1522 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO32_U_0P5 U2223 ( .A1 ( \enc/sampDiff [9] ) , .A2 ( n1234 ) , 
    .A3 ( n1675 ) , .B1 ( n1233 ) , .B2 ( n1232 ) , .X ( n1235 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U2224 ( .A1 ( \enc/n6 ) , .A2 ( n1243 ) , .B ( n1242 ) , 
    .X ( \intadd_2/B[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U2225 ( .CK ( \enc/n6 ) , .EN ( n1441 ) , .X ( n1273 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P5 ctmTdsLR_2_2602 ( .A1 ( n1831 ) , 
    .A2 ( \cic/add_cast_1 [5] ) , .B ( n1835 ) , .X ( tmp_net647 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U2227 ( .A1 ( n1260 ) , .A2 ( n1259 ) , .B ( \enc/n1 ) , 
    .X ( n1261 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U2228 ( .CK ( \enc/n5 ) , .EN ( n1384 ) , .X ( n1275 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OA31_U_0P5 U2229 ( .A1 ( n1365 ) , .A2 ( n1265 ) , .A3 ( n1264 ) , 
    .B ( \enc/n1 ) , .X ( n1266 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U2230 ( .CK ( \enc/n5 ) , .EN ( n1452 ) , .X ( n1402 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U2231 ( .CK ( \enc/n4 ) , .EN ( n1428 ) , .X ( n1387 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_0P5 U2232 ( .A1 ( \enc/n2 ) , .A2 ( n1387 ) , .X ( n1454 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OA31_U_0P5 U2233 ( .A1 ( \enc/n7 ) , .A2 ( \intadd_2/B[4] ) , 
    .A3 ( n1379 ) , .B ( n1281 ) , .X ( n1445 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U2234 ( .A1 ( \enc/n1 ) , .A2 ( n1277 ) , .B ( n1276 ) , 
    .X ( n1279 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V2_1 copt_h_inst_2671 ( .A ( n1090 ) , .X ( copt_net_696 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P5 U2236 ( .A ( \intadd_2/A[1] ) , .B1 ( \enc/n3 ) , 
    .B2 ( \enc/n5 ) , .X ( n1318 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P5 U2237 ( .A ( n1291 ) , .B1 ( n1290 ) , .B2 ( n1289 ) , 
    .X ( n1292 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U2238 ( .A1 ( n1296 ) , .A2 ( n1295 ) , .B ( \enc/n1 ) , 
    .X ( n1297 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P5 U2239 ( .A ( n1314 ) , .B1 ( n1298 ) , .B2 ( n1297 ) , 
    .X ( \enc/N1095 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U2240 ( .CK ( \enc/n5 ) , .EN ( n1361 ) , .X ( n1347 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U2241 ( .CK ( n1301 ) , .EN ( n1300 ) , .X ( n1302 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U2242 ( .A1 ( \enc/n6 ) , .A2 ( n1424 ) , .B1 ( n1427 ) , 
    .B2 ( n1449 ) , .X ( n1306 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U2243 ( .A1 ( \enc/n7 ) , .A2 ( n1421 ) , .B1 ( n1452 ) , 
    .B2 ( n1450 ) , .X ( n1305 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U2244 ( .CK ( n1306 ) , .EN ( n1305 ) , .X ( n1307 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U2245 ( .A1 ( \enc/n1 ) , .A2 ( n1311 ) , 
    .B1 ( \intadd_2/B[4] ) , .B2 ( n1310 ) , .X ( n1312 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U2246 ( .CK ( \intadd_2/A[0] ) , .EN ( \enc/n3 ) , 
    .X ( n1332 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U2247 ( .CK ( n1323 ) , .EN ( n1322 ) , .X ( n1326 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U2248 ( .CK ( \enc/n1 ) , .EN ( n1331 ) , .X ( n1337 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U2249 ( .A1 ( \enc/n6 ) , .A2 ( n1400 ) , .B1 ( n1404 ) , 
    .B2 ( n1449 ) , .X ( n1341 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_1_2611 ( .A1 ( n1404 ) , .A2 ( n1451 ) , 
    .B ( tmp_net654 ) , .X ( n772 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U2251 ( .CK ( n1346 ) , .EN ( n1345 ) , .X ( n1352 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U2252 ( .A1 ( \enc/n7 ) , .A2 ( n1439 ) , .B1 ( n1419 ) , 
    .B2 ( n1420 ) , .X ( n1350 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P5 U2253 ( .A ( n1353 ) , .B1 ( n1352 ) , .B2 ( n1351 ) , 
    .X ( \enc/N1092 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 U2254 ( .CK ( \enc/n5 ) , .EN ( n1450 ) , .X ( n1406 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U2255 ( .A1 ( \enc/n6 ) , .A2 ( n1454 ) , .B1 ( n1382 ) , 
    .B2 ( n1361 ) , .X ( n1362 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AN3_0P5 ctmTdsLR_2_2612 ( .A1 ( n1454 ) , .A2 ( n1279 ) , 
    .A3 ( n1278 ) , .X ( tmp_net654 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P5 U2257 ( .A ( n1373 ) , .B1 ( n1372 ) , .B2 ( n1371 ) , 
    .X ( \enc/N1096 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U2258 ( .A1 ( n1413 ) , .A2 ( n1379 ) , .B1 ( \enc/n6 ) , 
    .B2 ( n1421 ) , .X ( n1374 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U2259 ( .A1 ( \enc/n3 ) , .A2 ( n1450 ) , .B ( n1430 ) , 
    .X ( n1380 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U2260 ( .A1 ( \enc/n7 ) , .A2 ( n1436 ) , .B1 ( n1388 ) , 
    .B2 ( n1449 ) , .X ( n1389 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P5 U2261 ( .A ( n1393 ) , .B1 ( n1392 ) , .B2 ( n1391 ) , 
    .X ( \enc/N1097 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OA31_U_0P5 U2262 ( .A1 ( n1399 ) , .A2 ( n1398 ) , .A3 ( n1397 ) , 
    .B ( \enc/n1 ) , .X ( n1418 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U2263 ( .A1 ( \enc/n7 ) , .A2 ( \enc/n5 ) , 
    .B ( n1406 ) , .X ( n1453 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P5 U2264 ( .A ( n1418 ) , .B1 ( n1417 ) , .B2 ( n1416 ) , 
    .X ( n769 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U2265 ( .A1 ( \enc/n6 ) , .A2 ( \intadd_2/A[1] ) , 
    .B ( n1448 ) , .X ( n1422 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U2266 ( .A1 ( \enc/n3 ) , .A2 ( n1422 ) , .B1 ( n1421 ) , 
    .B2 ( n1420 ) , .X ( n1435 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_1_2613 ( .A1 ( n1494 ) , .A2 ( n1698 ) , 
    .B ( tmp_net655 ) , .X ( n759 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 U2268 ( .A1 ( \enc/n6 ) , .A2 ( n1428 ) , 
    .B1 ( \intadd_2/A[1] ) , .B2 ( n1427 ) , .X ( n1429 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 U2269 ( .A1 ( n1430 ) , .A2 ( n1429 ) , .B ( \enc/n1 ) , 
    .X ( n1431 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AN2_MM_0P5 ctmTdsLR_2_2614 ( .A1 ( n1515 ) , .A2 ( n1503 ) , 
    .X ( tmp_net655 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U2271 ( .A1 ( \enc/n2 ) , .A2 ( n1435 ) , .B ( n1434 ) , 
    .X ( n1437 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 U2272 ( .A1 ( \enc/n3 ) , .A2 ( n1453 ) , .B ( n1443 ) , 
    .X ( n1444 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OR4_1 U2273 ( .A1 ( n1459 ) , .A2 ( n1458 ) , .A3 ( n1457 ) , 
    .A4 ( n1456 ) , .X ( n774 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO21B_0P5 U2274 ( .A1 ( n1479 ) , .A2 ( \enc/prePredSamp [15] ) , 
    .B ( n1461 ) , .X ( n703 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO21B_0P5 U2275 ( .A1 ( n1479 ) , .A2 ( \enc/prePredSamp [14] ) , 
    .B ( n1462 ) , .X ( n704 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO21B_0P5 U2276 ( .A1 ( n1479 ) , .A2 ( \enc/prePredSamp [13] ) , 
    .B ( n1463 ) , .X ( n705 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO21B_0P5 U2277 ( .A1 ( n1479 ) , .A2 ( \enc/prePredSamp [12] ) , 
    .B ( n1464 ) , .X ( n706 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO21B_0P5 U2278 ( .A1 ( n1479 ) , .A2 ( \enc/prePredSamp [11] ) , 
    .B ( n1465 ) , .X ( n707 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO21B_0P5 U2279 ( .A1 ( n1479 ) , .A2 ( \enc/prePredSamp [10] ) , 
    .B ( n1466 ) , .X ( n708 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO21B_0P5 U2280 ( .A1 ( n1479 ) , .A2 ( \enc/prePredSamp [9] ) , 
    .B ( n1467 ) , .X ( n709 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO21B_0P5 U2281 ( .A1 ( n1479 ) , .A2 ( \enc/prePredSamp [8] ) , 
    .B ( n1468 ) , .X ( n710 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO21B_0P5 U2282 ( .A1 ( n1479 ) , .A2 ( \enc/prePredSamp [7] ) , 
    .B ( n1469 ) , .X ( n711 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO21B_0P5 U2283 ( .A1 ( n1479 ) , .A2 ( \enc/prePredSamp [6] ) , 
    .B ( n1470 ) , .X ( n712 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO21B_0P5 U2284 ( .A1 ( n1479 ) , .A2 ( \enc/prePredSamp [5] ) , 
    .B ( n1471 ) , .X ( n713 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO21B_0P5 U2285 ( .A1 ( n1479 ) , .A2 ( \enc/prePredSamp [4] ) , 
    .B ( n1472 ) , .X ( n714 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO21B_0P5 U2286 ( .A1 ( n1479 ) , .A2 ( \enc/prePredSamp [3] ) , 
    .B ( n1473 ) , .X ( n715 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO21B_0P5 U2287 ( .A1 ( n1479 ) , .A2 ( \enc/prePredSamp [2] ) , 
    .B ( n1474 ) , .X ( n716 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO21B_0P5 U2288 ( .A1 ( n1479 ) , .A2 ( \enc/prePredSamp [0] ) , 
    .B ( n1475 ) , .X ( n718 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO21B_0P5 U2289 ( .A1 ( n1479 ) , .A2 ( \enc/prePredSamp [1] ) , 
    .B ( n1478 ) , .X ( n717 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO32_U_0P5 U2290 ( .A1 ( n1486 ) , .A2 ( counter[5] ) , 
    .A3 ( n1483 ) , .B1 ( n1486 ) , .B2 ( counter[6] ) , .X ( N50 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V2_1 copt_h_inst_2672 ( .A ( N50 ) , .X ( copt_net_697 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P5 U2292 ( .A ( n1548 ) , .B1 ( n1547 ) , .B2 ( n1546 ) , 
    .X ( n757 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO32_U_0P5 U2293 ( .A1 ( \enc/sampDiff [6] ) , .A2 ( n1565 ) , 
    .A3 ( n1675 ) , .B1 ( n1564 ) , .B2 ( n1563 ) , .X ( n1569 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V2_1 copt_h_inst_2673 ( .A ( \cic/sub_cast_3 [19] ) , 
    .X ( copt_net_698 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_1 ctmTdsLR_2_2566 ( .A1 ( \enc/stepSize [1] ) , 
    .A2 ( n1723 ) , .X ( tmp_net625 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EO2_V1_0P75 U2296 ( .A1 ( n1578 ) , .A2 ( n1577 ) , .X ( n1579 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V1_1 copt_h_inst_2674 ( .A ( \cic/add_cast_5 [15] ) , 
    .X ( copt_net_699 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P5 U2298 ( .A ( n1610 ) , .B1 ( n1609 ) , .B2 ( n1608 ) , 
    .X ( n754 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OA22_U_0P5 U2299 ( .A1 ( \enc/stepSize [8] ) , .A2 ( n1613 ) , 
    .B1 ( n2009 ) , .B2 ( n1612 ) , .X ( n1626 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_EO2_V1_0P75 U2300 ( .A1 ( n1623 ) , .A2 ( n1622 ) , .X ( n1624 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_UCDC_0P5 copt_h_inst_2675 ( .A ( \cic/add_cast_5 [12] ) , 
    .X ( copt_net_700 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_UCDC_0P5 copt_h_inst_2676 ( .A ( \cic/add_cast_5 [12] ) , 
    .X ( copt_net_701 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P5 U2303 ( .A ( n1652 ) , .B1 ( n1651 ) , .B2 ( n1650 ) , 
    .X ( n751 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EO2_V1_0P75 U2304 ( .A1 ( n1658 ) , .A2 ( n1659 ) , .X ( n1660 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_UCDC_0P5 copt_h_inst_2677 ( .A ( copt_net_700 ) , 
    .X ( copt_net_702 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V1_1 copt_h_inst_2777 ( .A ( n675 ) , .X ( copt_net_790 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND3B_0P5 U2307 ( .A ( n1690 ) , .B1 ( n1689 ) , .B2 ( n1688 ) , 
    .X ( n748 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EO2_V1_0P75 U2308 ( .A1 ( n1696 ) , .A2 ( n1695 ) , .X ( n1697 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OA2BB2_V1_0P5 U2309 ( .A1 ( n2007 ) , .A2 ( n1702 ) , 
    .B1 ( n2007 ) , .B2 ( n1702 ) , .X ( n1706 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V1_1 copt_h_inst_2778 ( .A ( n2027 ) , .X ( copt_net_791 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 copt_h_inst_2680 ( .A ( \cic/sub_cast_5 [7] ) , 
    .X ( copt_net_705 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_1P5 U2312 ( .A1 ( \cic/add_cast_1 [5] ) , .A2 ( n1927 ) , 
    .B ( ZBUF_1627_0 ) , .X ( n1933 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_2_2548 ( .A1 ( n1974 ) , 
    .A2 ( \cic/add_cast_1 [14] ) , .X ( tmp_net616 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_ND2_1 ctmTdsLR_3_1005 ( .A1 ( copt_net_239 ) , 
    .A2 ( copt_net_240 ) , .X ( \intadd_1/n5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_MUXI2_U_0P5 ctmTdsLR_1_2615 ( .D0 ( n898 ) , .D1 ( n900 ) , 
    .S ( n899 ) , .X ( n760 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 ctmTdsLR_3_2567 ( .CK ( tmp_net626 ) , .EN ( n1514 ) , 
    .X ( tmp_net627 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_2 ctmTdsLR_1_987 ( .A1 ( n1900 ) , .A2 ( copt_net_229 ) , 
    .B1 ( n1898 ) , .B2 ( copt_net_227 ) , .X ( copt_net_55 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OR2_MM_0P5 ctmTdsLR_1_2616 ( .A1 ( tmp_net656 ) , .A2 ( n1262 ) , 
    .X ( \enc/N1104 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 ctmTdsLR_4_2568 ( .A ( n1535 ) , .X ( tmp_net626 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_4 ctmTdsLR_4_820 ( .A1 ( copt_net_155 ) , 
    .A2 ( \cic/sub_cast_1 [16] ) , .B ( \intadd_1/B[15] ) , 
    .X ( copt_net_156 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_1_2569 ( .A1 ( n1413 ) , .A2 ( tmp_net628 ) , 
    .B ( tmp_net630 ) , .X ( n1346 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_1_2443 ( .A1 ( n1846 ) , 
    .A2 ( \cic/add_cast_1 [8] ) , .B ( tmp_net555 ) , .X ( n1847 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_1P5 U2323 ( .A1 ( n1968 ) , .A2 ( \cic/add_cast_1 [13] ) , 
    .B ( ZBUF_1627_0 ) , .X ( n1973 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_2_2570 ( .A1 ( n1347 ) , .A2 ( \enc/n2 ) , 
    .X ( tmp_net628 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 ctmTdsLR_3_2571 ( .CK ( tmp_net629 ) , .EN ( n1341 ) , 
    .X ( tmp_net630 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_1P5 U2326 ( .A1 ( n1978 ) , .A2 ( \cic/add_cast_1 [15] ) , 
    .B ( ZBUF_1627_0 ) , .X ( n1984 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 ctmTdsLR_4_2572 ( .A ( n1340 ) , .X ( tmp_net629 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_1_2573 ( .A1 ( n1451 ) , .A2 ( \enc/n6 ) , 
    .B ( tmp_net632 ) , .X ( n1434 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EN2_0P5 ctmTdsLR_5_905 ( .A1 ( copt_net_185 ) , 
    .A2 ( \intadd_0/n14 ) , .X ( \intadd_0/SUM[5] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_1P5 ctmTdsLR_1_946 ( .A1 ( copt_net_204 ) , 
    .A2 ( copt_net_205 ) , .X ( n1900 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_2386 ( .A1 ( n1077 ) , .A2 ( n1093 ) , 
    .B ( copt_net_323 ) , .X ( n1084 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO32_U_0P5 U2332 ( .A1 ( \cic/cur_count [0] ) , .A2 ( n2002 ) , 
    .A3 ( n2001 ) , .B1 ( \cic/cur_count [1] ) , .B2 ( n2000 ) , .X ( n634 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ADDF_V1_0P5 U2333 ( .A ( \intadd_2/n2 ) , .B ( \enc/prePCM [2] ) , 
    .CI ( \intadd_2/B[4] ) , .CO ( \intadd_2/n1 ) , .S ( \intadd_2/SUM[4] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 ZBUF_3972_inst_216 ( .A ( ZBUF_7033_0 ) , 
    .X ( ZBUF_3972_0 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 ZBUF_4058_inst_217 ( .A ( ZBUF_7033_0 ) , 
    .X ( ZBUF_4058_0 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 ZBUF_3936_inst_218 ( .A ( ZBUF_7033_0 ) , 
    .X ( ZBUF_3936_0 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_2444 ( .A1 ( n1846 ) , 
    .A2 ( \cic/add_cast_1 [8] ) , .B ( tmp_net554 ) , .X ( tmp_net555 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_ECO_1 ZBUF_6889_inst_220 ( .A ( ZBUF_7033_0 ) , 
    .X ( ZBUF_6889_0 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_S_3 ZBUF_7033_inst_221 ( .A ( n1981 ) , .X ( ZBUF_7033_0 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_6 ZBUF_2257_inst_222 ( .A ( n2005 ) , .X ( ZBUF_2257_0 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_ECO_1 ZBUF_3647_inst_223 ( .A ( ZBUF_1666_0 ) , 
    .X ( ZBUF_3647_0 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 ZBUF_859_inst_224 ( .A ( ZBUF_1666_0 ) , 
    .X ( ZBUF_859_0 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_S_0P5 copt_h_inst_2681 ( .A ( copt_net_705 ) , 
    .X ( copt_net_706 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V1_1 ZBUF_4408_inst_226 ( .A ( ZBUF_6565_0 ) , 
    .X ( ZBUF_4408_0 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_L4D100_1 ZBUF_6565_inst_227 ( .A ( ZBUF_1666_0 ) , 
    .X ( ZBUF_6565_0 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_ECO_1 ZBUF_24119_inst_228 ( .A ( ZBUF_1666_0 ) , 
    .X ( ZBUF_24119_0 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 ZBUF_300_inst_229 ( .A ( n2004 ) , .X ( ZBUF_300_0 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 ZBUF_736_inst_230 ( .A ( ZBUF_56_16 ) , 
    .X ( ZBUF_736_0 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_UCDC_0P5 ZBUF_457_inst_231 ( .A ( ZBUF_56_16 ) , 
    .X ( ZBUF_457_0 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_S_1P5 ZBUF_3254_inst_232 ( .A ( ZBUF_4803_0 ) , 
    .X ( ZBUF_3254_0 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_S_8 ZBUF_4803_inst_233 ( .A ( n2004 ) , .X ( ZBUF_4803_0 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V2_1 copt_h_inst_2682 ( .A ( n1068 ) , .X ( copt_net_707 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 ZBUF_229_inst_235 ( .A ( ZBUF_1666_0 ) , 
    .X ( ZBUF_229_0 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V2_1 copt_h_inst_2683 ( .A ( n1075 ) , .X ( copt_net_708 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V2_1 gre_mt_inst_2842 ( .A ( \enc/prePCM [3] ) , 
    .X ( gre_net_849 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_UCDC_0P5 ZBUF_38_inst_239 ( .A ( ZBUF_1666_0 ) , 
    .X ( ZBUF_38_0 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_1P5 ZBUF_1666_inst_240 ( .A ( n2026 ) , .X ( ZBUF_1666_0 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_S_0P75 ZBUF_28_inst_241 ( .A ( n1200 ) , .X ( ZBUF_28_0 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V2_1 copt_h_inst_2684 ( .A ( n1073 ) , .X ( copt_net_709 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V1_1 copt_h_inst_2685 ( .A ( \cic/add_cast_5 [18] ) , 
    .X ( copt_net_710 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_S_3 ZBUF_1627_inst_244 ( .A ( ZBUF_2091_0 ) , 
    .X ( ZBUF_1627_0 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_S_3 ZBUF_2091_inst_245 ( .A ( \cic/input_register [1] ) , 
    .X ( ZBUF_2091_0 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 ZBUF_5_inst_246 ( .A ( \intadd_0/SUM[13] ) , 
    .X ( ZBUF_5_0 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V1_1 copt_h_inst_2686 ( .A ( n634 ) , .X ( copt_net_711 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V2_1 copt_h_inst_2687 ( .A ( \cic/sub_cast_5 [12] ) , 
    .X ( copt_net_712 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_4 ZBUF_125_inst_250 ( .A ( \cic/add_cast_5 [0] ) , 
    .X ( ZBUF_125_0 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 ZBUF_9_inst_251 ( .A ( \intadd_0/SUM[15] ) , 
    .X ( ZBUF_9_0 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V2_1 copt_h_inst_2688 ( .A ( \cic/sub_cast_5 [10] ) , 
    .X ( copt_net_713 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_UCDC_0P5 ZBUF_2_inst_253 ( .A ( \cic/sub_cast_1 [0] ) , 
    .X ( ZBUF_2_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V1_1 copt_h_inst_2779 ( .A ( N44 ) , .X ( copt_net_792 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_UCDC_0P5 ZBUF_53_inst_257 ( .A ( ZBUF_106_2 ) , 
    .X ( ZBUF_53_2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_ECO_2 ZBUF_106_inst_258 ( .A ( \cic/add_cast_3 [0] ) , 
    .X ( ZBUF_106_2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V2_1 copt_h_inst_2780 ( .A ( \cic/sub_cast_3 [17] ) , 
    .X ( copt_net_793 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 ZBUF_9_inst_265 ( .A ( \intadd_0/SUM[16] ) , 
    .X ( ZBUF_9_4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V1_1 copt_h_inst_2691 ( .A ( \cic/add_cast_1 [19] ) , 
    .X ( copt_net_716 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_1P5 ZBUF_78_inst_263 ( .A ( \cic/add_cast_1 [0] ) , 
    .X ( ZBUF_78_3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V1_1 copt_h_inst_2694 ( .A ( n670 ) , .X ( copt_net_717 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOINV_IW_2 gre_d_INV_14_inst_2845 ( .A ( tmp_net598 ) , 
    .X ( gre_d_INV_14_0 ) , .VDD ( VDD ) , .VDDR ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 ZBUF_5_inst_267 ( .A ( \intadd_0/SUM[10] ) , 
    .X ( ZBUF_5_4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V1_1 copt_h_inst_2696 ( .A ( n1041 ) , .X ( copt_net_719 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 ZBUF_9_inst_271 ( .A ( n1743 ) , .X ( ZBUF_9_5 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 ZBUF_2_inst_270 ( .A ( n1964 ) , .X ( ZBUF_2_5 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 gre_h_inst_2848 ( .A ( gre_net_850 ) , 
    .X ( gre_net_851 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V1_1 copt_h_inst_2698 ( .A ( \cic/sub_cast_5 [17] ) , 
    .X ( copt_net_721 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V2_1 copt_h_inst_2699 ( .A ( n1142 ) , .X ( copt_net_722 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_1P5 ZBUF_9_inst_277 ( .A ( n1178 ) , .X ( ZBUF_9_6 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_S_0P5 copt_h_inst_2700 ( .A ( \cic/sub_cast_5 [11] ) , 
    .X ( copt_net_723 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V2_1 copt_h_inst_2701 ( .A ( \cic/add_cast_5 [17] ) , 
    .X ( copt_net_724 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 copt_h_inst_2702 ( .A ( \cic/add_cast_5 [5] ) , 
    .X ( copt_net_725 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 ZBUF_8_inst_281 ( .A ( \intadd_0/SUM[17] ) , 
    .X ( ZBUF_8_8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_S_1P5 ZBUF_137_inst_282 ( .A ( ZBUF_2091_0 ) , 
    .X ( ZBUF_137_8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_UCDC_0P5 copt_h_inst_2703 ( .A ( \cic/add_cast_5 [5] ) , 
    .X ( copt_net_726 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_UCDC_0P5 ZBUF_46_inst_284 ( .A ( n1907 ) , .X ( ZBUF_46_8 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_S_0P5 gre_h_inst_2849 ( .A ( n566 ) , .X ( gre_net_852 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 ZBUF_9_inst_286 ( .A ( \cic/add_cast_1 [1] ) , 
    .X ( ZBUF_9_9 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 ZBUF_2_inst_297 ( .A ( \intadd_0/SUM[9] ) , 
    .X ( ZBUF_2_12 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V1_2 copt_h_inst_2705 ( .A ( n1033 ) , .X ( copt_net_728 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V2_1 copt_h_inst_2706 ( .A ( n1102 ) , .X ( copt_net_729 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V2_1 copt_h_inst_2707 ( .A ( n1070 ) , .X ( copt_net_730 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_UCDC_0P5 copt_h_inst_2708 ( .A ( \cic/add_cast_5 [1] ) , 
    .X ( copt_net_731 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 ZBUF_9_inst_298 ( .A ( \intadd_0/SUM[12] ) , 
    .X ( ZBUF_9_13 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V1_1 copt_h_inst_2709 ( .A ( n1505 ) , .X ( copt_net_732 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_1P5 ZBUF_32_inst_519 ( .A ( \intadd_1/B[0] ) , 
    .X ( ZBUF_32_14 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V1_2 copt_h_inst_2712 ( .A ( \cic/add_cast_5 [19] ) , 
    .X ( copt_net_733 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 ZBUF_2_inst_527 ( .A ( \intadd_0/B[1] ) , 
    .X ( ZBUF_2_16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_4 ZBUF_47_inst_529 ( .A ( \cic/add_cast_3 [0] ) , 
    .X ( ZBUF_47_16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 ZBUF_2_inst_526 ( .A ( n1751 ) , .X ( ZBUF_2_15 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 ZBUF_56_inst_530 ( .A ( n2004 ) , .X ( ZBUF_56_16 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V2_1 copt_h_inst_2713 ( .A ( n1549 ) , .X ( copt_net_734 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V2_1 copt_h_inst_2714 ( .A ( n1576 ) , .X ( copt_net_735 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 ZBUF_2_inst_543 ( .A ( n1759 ) , .X ( ZBUF_2_19 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V2_1 copt_h_inst_2715 ( .A ( n1603 ) , .X ( copt_net_736 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AN2_MM_0P5 ctmTdsLR_1_2387 ( .A1 ( copt_net_423 ) , 
    .A2 ( \cic/add_cast_1 [5] ) , .X ( copt_net_431 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_4 ctmTdsLR_1_711 ( .A1 ( n1865 ) , .A2 ( n1864 ) , 
    .B ( n1863 ) , .X ( n1866 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EN3_2 ctmTdsLR_1_549 ( .A1 ( \intadd_0/n3 ) , 
    .A2 ( \intadd_0/B[16] ) , .A3 ( copt_net_0 ) , .X ( \intadd_0/SUM[16] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_550 ( .A ( \cic/sub_cast_3 [17] ) , 
    .X ( copt_net_0 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_MM_1 ctmTdsLR_3_1984 ( .A1 ( n1759 ) , .A2 ( \intadd_1/B[5] ) , 
    .X ( copt_net_499 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_2 ctmTdsLR_6_744 ( .A1 ( \intadd_1/CI ) , 
    .A2 ( \cic/sub_cast_1 [1] ) , .B ( \intadd_1/B[0] ) , 
    .X ( copt_net_114 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_4 ctmTdsLR_5_553 ( .A1 ( copt_net_1 ) , .A2 ( copt_net_2 ) , 
    .B ( copt_net_3 ) , .X ( copt_net_4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_MM_1 ctmTdsLR_6_554 ( .A1 ( \intadd_0/n3 ) , 
    .A2 ( \cic/sub_cast_3 [17] ) , .X ( copt_net_1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_7_555 ( .A ( \intadd_0/B[16] ) , 
    .X ( copt_net_2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_1 ctmTdsLR_8_556 ( .A1 ( \cic/sub_cast_3 [17] ) , 
    .A2 ( \intadd_0/n3 ) , .X ( copt_net_3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_2 ctmTdsLR_9_557 ( .A1 ( \cic/sub_cast_3 [18] ) , 
    .A2 ( copt_net_4 ) , .X ( copt_net_6 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_3_2445 ( .A ( ZBUF_6889_0 ) , .X ( tmp_net554 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_ECO_1 ctmTdsLR_1_2446 ( .A1 ( n1948 ) , .A2 ( tmp_net556 ) , 
    .X ( n1946 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EO2_0P5 ctmTdsLR_1_560 ( .A1 ( copt_net_8 ) , 
    .A2 ( \intadd_1/n15 ) , .X ( \intadd_0/B[4] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_EO2_1 ctmTdsLR_2_561 ( .A1 ( \cic/sub_cast_1 [5] ) , 
    .A2 ( \intadd_1/B[4] ) , .X ( copt_net_8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_1 ctmTdsLR_3_562 ( .A1 ( copt_net_13 ) , .A2 ( copt_net_14 ) , 
    .X ( \intadd_1/n13 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_2 ctmTdsLR_4_563 ( .A1 ( copt_net_12 ) , 
    .A2 ( \cic/sub_cast_1 [6] ) , .B ( \intadd_1/B[5] ) , .X ( copt_net_13 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_4 ctmTdsLR_5_564 ( .A1 ( copt_net_9 ) , .A2 ( copt_net_10 ) , 
    .B ( copt_net_11 ) , .X ( copt_net_12 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_1378 ( .A1 ( ZBUF_2_12 ) , .A2 ( n1129 ) , 
    .B ( copt_net_349 ) , .X ( n1125 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_1 ctmTdsLR_7_566 ( .A ( \intadd_1/B[4] ) , 
    .X ( copt_net_10 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_1 ctmTdsLR_8_567 ( .A1 ( \intadd_1/n15 ) , 
    .A2 ( \cic/sub_cast_1 [5] ) , .X ( copt_net_11 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_1 ctmTdsLR_2_786 ( .A ( \intadd_1/B[1] ) , 
    .X ( copt_net_136 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EN2_0P5 ctmTdsLR_10_569 ( .A1 ( copt_net_12 ) , 
    .A2 ( copt_net_15 ) , .X ( \intadd_0/B[5] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_EN2_1 ctmTdsLR_11_570 ( .A1 ( \intadd_1/B[5] ) , 
    .A2 ( \cic/sub_cast_1 [6] ) , .X ( copt_net_15 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_MUXI2_U_0P5 ctmTdsLR_2_1379 ( .D0 ( copt_net_348 ) , 
    .D1 ( ZBUF_2_12 ) , .S ( copt_net_130 ) , .X ( copt_net_349 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_2_572 ( .A1 ( n1164 ) , 
    .A2 ( \cic/sub_cast_5 [15] ) , .X ( copt_net_16 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_4_1041 ( .A1 ( copt_net_248 ) , 
    .A2 ( copt_net_249 ) , .X ( copt_net_250 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AN2_2 ctmTdsLR_2_574 ( .A1 ( n1809 ) , 
    .A2 ( \cic/add_cast_3 [19] ) , .X ( copt_net_17 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_1_575 ( .A1 ( copt_net_20 ) , .A2 ( copt_net_18 ) , 
    .X ( n1163 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_MM_1 ctmTdsLR_2_576 ( .A1 ( n1155 ) , .A2 ( n1154 ) , 
    .X ( copt_net_18 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_1 ctmTdsLR_3_577 ( .A1 ( copt_net_19 ) , .A2 ( n1153 ) , 
    .X ( copt_net_20 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_4_578 ( .A ( \cic/sub_cast_5 [14] ) , 
    .X ( copt_net_19 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EO2_1 ctmTdsLR_1_579 ( .A1 ( \intadd_1/n10 ) , .A2 ( copt_net_21 ) , 
    .X ( \intadd_0/B[9] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EO2_1 ctmTdsLR_2_580 ( .A1 ( \cic/sub_cast_1 [10] ) , 
    .A2 ( \intadd_1/B[9] ) , .X ( copt_net_21 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_ND2_1 ctmTdsLR_3_581 ( .A1 ( copt_net_26 ) , .A2 ( copt_net_27 ) , 
    .X ( \intadd_1/n8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_2 ctmTdsLR_4_582 ( .A1 ( copt_net_25 ) , 
    .A2 ( \cic/sub_cast_1 [11] ) , .B ( \intadd_1/B[10] ) , 
    .X ( copt_net_26 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_4 ctmTdsLR_5_583 ( .A1 ( copt_net_22 ) , .A2 ( copt_net_23 ) , 
    .B ( copt_net_24 ) , .X ( copt_net_25 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_6_584 ( .A1 ( \intadd_1/n10 ) , 
    .A2 ( \cic/sub_cast_1 [10] ) , .X ( copt_net_22 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_1 ctmTdsLR_7_585 ( .A ( \intadd_1/B[9] ) , 
    .X ( copt_net_23 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_2 ctmTdsLR_8_586 ( .A1 ( \cic/sub_cast_1 [10] ) , 
    .A2 ( \intadd_1/n10 ) , .X ( copt_net_24 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_0P5 ctmTdsLR_7_745 ( .A1 ( \cic/sub_cast_1 [1] ) , 
    .A2 ( \intadd_1/CI ) , .X ( copt_net_115 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EN2_1P5 ctmTdsLR_10_588 ( .A1 ( copt_net_25 ) , 
    .A2 ( copt_net_28 ) , .X ( \intadd_0/B[10] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_EN2_1 ctmTdsLR_11_589 ( .A1 ( \intadd_1/B[10] ) , 
    .A2 ( \cic/sub_cast_1 [11] ) , .X ( copt_net_28 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 ctmTdsLR_2_2574 ( .CK ( tmp_net631 ) , .EN ( n1433 ) , 
    .X ( tmp_net632 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_3_1063 ( .A ( \intadd_0/SUM[17] ) , 
    .X ( copt_net_259 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P5 ctmTdsLR_2_2447 ( .A1 ( n1949 ) , .A2 ( ZBUF_1627_0 ) , 
    .B ( n1998 ) , .X ( tmp_net556 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_1 ctmTdsLR_1_2448 ( .A1 ( tmp_net557 ) , 
    .A2 ( ZBUF_6889_0 ) , .X ( n1906 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_4 ctmTdsLR_1_594 ( .A1 ( copt_net_33 ) , .A2 ( copt_net_34 ) , 
    .X ( n1129 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_0P5 ctmTdsLR_2_595 ( .A1 ( copt_net_32 ) , .A2 ( n1119 ) , 
    .X ( copt_net_33 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_3_596 ( .A ( \cic/sub_cast_5 [10] ) , 
    .X ( copt_net_32 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_MM_1 ctmTdsLR_4_597 ( .A1 ( n1121 ) , .A2 ( n1120 ) , 
    .X ( copt_net_34 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_1_598 ( .A1 ( n1748 ) , .A2 ( \cic/add_cast_3 [4] ) , 
    .X ( n1751 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P75 ctmTdsLR_4_1531 ( .A ( n1803 ) , .X ( copt_net_407 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_1 ctmTdsLR_2_2381 ( .A1 ( \cic/add_cast_3 [1] ) , 
    .A2 ( ZBUF_47_16 ) , .X ( tmp_net539 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_1 ctmTdsLR_3_601 ( .A1 ( copt_net_40 ) , 
    .A2 ( copt_net_41 ) , .X ( \intadd_0/n4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_2 ctmTdsLR_4_602 ( .A1 ( copt_net_39 ) , 
    .A2 ( \cic/sub_cast_3 [15] ) , .B ( \intadd_0/B[14] ) , 
    .X ( copt_net_40 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_4 ctmTdsLR_5_603 ( .A1 ( copt_net_36 ) , .A2 ( copt_net_37 ) , 
    .B ( copt_net_38 ) , .X ( copt_net_39 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_6_604 ( .A1 ( \intadd_0/n6 ) , 
    .A2 ( \cic/sub_cast_3 [14] ) , .X ( copt_net_36 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P75 ctmTdsLR_7_605 ( .A ( \intadd_0/B[13] ) , 
    .X ( copt_net_37 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_3_787 ( .A1 ( copt_net_116 ) , 
    .A2 ( \cic/sub_cast_1 [2] ) , .X ( copt_net_137 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_ND2_0P5 ctmTdsLR_9_607 ( .A1 ( copt_net_39 ) , 
    .A2 ( \cic/sub_cast_3 [15] ) , .X ( copt_net_41 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_EN3_2 ctmTdsLR_10_608 ( .A1 ( copt_net_42 ) , 
    .A2 ( \intadd_0/B[14] ) , .A3 ( \cic/sub_cast_3 [15] ) , 
    .X ( \intadd_0/SUM[14] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_1 ctmTdsLR_1_1054 ( .A1 ( copt_net_65 ) , 
    .A2 ( copt_net_64 ) , .X ( \intadd_1/n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_4_1153 ( .A ( \cic/add_cast_1 [16] ) , 
    .X ( copt_net_291 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_2_611 ( .A1 ( n1787 ) , .A2 ( \intadd_1/B[12] ) , 
    .X ( copt_net_43 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_1_2400 ( .A ( n1942 ) , 
    .B ( \cic/add_cast_1 [9] ) , .X ( copt_net_220 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_2_2410 ( .A ( n1952 ) , 
    .B ( \cic/add_cast_1 [11] ) , .X ( tmp_net544 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_2_636 ( .A1 ( n1779 ) , 
    .A2 ( \intadd_1/B[10] ) , .X ( copt_net_56 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_1_2388 ( .A ( n1839 ) , .B ( copt_net_436 ) , 
    .X ( copt_net_441 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_2 ctmTdsLR_8_746 ( .A1 ( \cic/sub_cast_1 [2] ) , 
    .A2 ( copt_net_116 ) , .X ( copt_net_118 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_2_1266 ( .A1 ( n1076 ) , .A2 ( copt_net_322 ) , 
    .X ( copt_net_323 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_4_638 ( .A ( \cic/add_cast_3 [12] ) , 
    .X ( copt_net_57 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_MM_1 ctmTdsLR_3_1380 ( .A1 ( copt_net_347 ) , .A2 ( n1129 ) , 
    .X ( copt_net_348 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EO2_1P5 ctmTdsLR_1_640 ( .A1 ( \intadd_1/n3 ) , 
    .A2 ( copt_net_59 ) , .X ( \intadd_0/B[16] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_EO2_0P5 ctmTdsLR_2_641 ( .A1 ( \intadd_1/B[16] ) , 
    .A2 ( \cic/sub_cast_1 [17] ) , .X ( copt_net_59 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_4 ctmTdsLR_1_1060 ( .A1 ( copt_net_237 ) , 
    .A2 ( copt_net_236 ) , .X ( copt_net_238 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_3_2375 ( .A ( ZBUF_7033_0 ) , 
    .X ( copt_net_536 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_4 ctmTdsLR_5_644 ( .A1 ( copt_net_60 ) , .A2 ( copt_net_61 ) , 
    .B ( copt_net_62 ) , .X ( copt_net_63 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_6_645 ( .A1 ( \intadd_1/n3 ) , 
    .A2 ( \cic/sub_cast_1 [17] ) , .X ( copt_net_60 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_7_646 ( .A ( \intadd_1/B[16] ) , 
    .X ( copt_net_61 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AN2_0P5 ctmTdsLR_1_2382 ( .A1 ( n1067 ) , 
    .A2 ( \cic/sub_cast_5 [0] ) , .X ( copt_net_99 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_1 ctmTdsLR_9_648 ( .A1 ( copt_net_63 ) , 
    .A2 ( \cic/sub_cast_1 [18] ) , .X ( copt_net_65 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_EN2_3 ctmTdsLR_10_649 ( .A1 ( copt_net_63 ) , .A2 ( copt_net_66 ) , 
    .X ( \intadd_0/B[17] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EN2_0P5 ctmTdsLR_11_650 ( .A1 ( \intadd_1/B[17] ) , 
    .A2 ( \cic/sub_cast_1 [18] ) , .X ( copt_net_66 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_3_1267 ( .A ( \cic/sub_cast_5 [5] ) , 
    .X ( copt_net_322 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OA21B_1 ctmTdsLR_1_2389 ( .A1 ( n1775 ) , .A2 ( \intadd_1/B[9] ) , 
    .B ( copt_net_455 ) , .X ( n1779 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_2 ctmTdsLR_1_1214 ( .A1 ( \cic/sub_cast_5 [4] ) , 
    .A2 ( n1061 ) , .X ( n1077 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_1 ctmTdsLR_2_1215 ( .A ( \intadd_0/SUM[3] ) , .X ( n1093 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_5_655 ( .A ( copt_net_71 ) , 
    .X ( \intadd_0/B[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EO2_1P5 ctmTdsLR_6_656 ( .A1 ( \intadd_1/n16 ) , 
    .A2 ( copt_net_70 ) , .X ( copt_net_71 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EN2_1 ctmTdsLR_7_657 ( .A1 ( \intadd_1/B[3] ) , 
    .A2 ( \cic/sub_cast_1 [4] ) , .X ( copt_net_70 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_3_1216 ( .A1 ( n1061 ) , 
    .A2 ( \cic/sub_cast_5 [4] ) , .X ( n1076 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_1P5 ctmTdsLR_4_1217 ( .A1 ( n1077 ) , .A2 ( n1093 ) , 
    .B ( n1076 ) , .X ( n1078 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_2 ctmTdsLR_10_660 ( .A1 ( \cic/sub_cast_3 [4] ) , 
    .A2 ( \intadd_0/n16 ) , .X ( copt_net_73 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EN3_1 ctmTdsLR_11_661 ( .A1 ( \intadd_0/n16 ) , 
    .A2 ( \cic/sub_cast_3 [4] ) , .A3 ( copt_net_71 ) , 
    .X ( \intadd_0/SUM[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_1_662 ( .A1 ( copt_net_75 ) , .A2 ( copt_net_76 ) , 
    .X ( n1795 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_2 ctmTdsLR_2_663 ( .A1 ( n1791 ) , .A2 ( \intadd_1/B[13] ) , 
    .B ( copt_net_74 ) , .X ( copt_net_75 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_3_664 ( .A ( \cic/add_cast_3 [15] ) , 
    .X ( copt_net_74 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_1 ctmTdsLR_4_665 ( .A ( n1790 ) , .X ( copt_net_76 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_1P5 ctmTdsLR_4_1381 ( .A ( n1128 ) , .X ( copt_net_347 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EN2_0P5 ctmTdsLR_6_906 ( .A1 ( \intadd_0/B[5] ) , 
    .A2 ( \cic/sub_cast_3 [6] ) , .X ( copt_net_185 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_2 ctmTdsLR_2_668 ( .A1 ( copt_net_77 ) , .A2 ( n1758 ) , 
    .X ( copt_net_78 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_3_669 ( .A ( \cic/add_cast_3 [7] ) , 
    .X ( copt_net_77 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OR3_1 ctmTdsLR_1_2411 ( .A1 ( n1954 ) , 
    .A2 ( \cic/add_cast_1 [10] ) , .A3 ( \cic/add_cast_1 [11] ) , 
    .X ( n1964 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_1 ctmTdsLR_1_713 ( .A ( \cic/sub_cast_1 [0] ) , .X ( n1200 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2B_U_0P5 ctmTdsLR_9_1621 ( .A ( \cic/add_cast_3 [16] ) , 
    .B ( \intadd_1/B[15] ) , .X ( copt_net_420 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_2_1945 ( .A1 ( n1787 ) , .A2 ( \intadd_1/B[12] ) , 
    .X ( copt_net_489 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_3_2575 ( .A ( n1426 ) , .B ( n1431 ) , 
    .X ( tmp_net631 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_2 ctmTdsLR_1_1991 ( .A1 ( \cic/sub_cast_5 [10] ) , 
    .A2 ( n1122 ) , .X ( copt_net_93 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_1_2044 ( .A1 ( n1816 ) , 
    .A2 ( \cic/add_cast_1 [2] ) , .X ( n1820 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P75 ctmTdsLR_4_949 ( .A ( n1893 ) , .X ( copt_net_205 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_1_1302 ( .A1 ( n1836 ) , 
    .A2 ( \cic/add_cast_1 [6] ) , .X ( n1840 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EN3_1 ctmTdsLR_9_747 ( .A1 ( copt_net_116 ) , 
    .A2 ( \intadd_1/B[1] ) , .A3 ( copt_net_119 ) , .X ( \intadd_0/B[1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_2 ctmTdsLR_1_680 ( .A1 ( n1996 ) , .A2 ( tmp_net577 ) , 
    .B1 ( n1990 ) , .B2 ( tmp_net578 ) , .X ( n1999 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_AO32_U_0P5 ctmTdsLR_2_2449 ( .A1 ( n1914 ) , .A2 ( ZBUF_78_3 ) , 
    .A3 ( \cic/input_register [0] ) , .B1 ( n1914 ) , .B2 ( ZBUF_137_8 ) , 
    .X ( tmp_net557 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_2450 ( .A1 ( ZBUF_2_5 ) , .A2 ( ZBUF_1627_0 ) , 
    .B ( tmp_net559 ) , .X ( n1961 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OR4_1 ctmTdsLR_1_2424 ( .A1 ( tmp_net548 ) , .A2 ( counter[2] ) , 
    .A3 ( counter[5] ) , .A4 ( counter[1] ) , .X ( n1484 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OR2_MM_0P5 ctmTdsLR_2_2425 ( .A1 ( counter[4] ) , 
    .A2 ( counter[3] ) , .X ( tmp_net548 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 ctmTdsLR_2_2451 ( .CK ( n1963 ) , .EN ( tmp_net558 ) , 
    .X ( tmp_net559 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_3_2452 ( .A ( ZBUF_6889_0 ) , .X ( tmp_net558 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OR4_1 ctmTdsLR_1_2426 ( .A1 ( tmp_net549 ) , .A2 ( tmp_net550 ) , 
    .A3 ( tmp_net551 ) , .A4 ( \cic/cur_count [1] ) , .X ( n2004 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_2427 ( .A ( ZBUF_7033_0 ) , .X ( tmp_net549 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_10_748 ( .A ( \cic/sub_cast_1 [2] ) , 
    .X ( copt_net_119 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 ctmTdsLR_1_723 ( .A ( n1095 ) , .X ( n1087 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_1 ctmTdsLR_1_749 ( .A1 ( \cic/sub_cast_1 [6] ) , 
    .A2 ( copt_net_12 ) , .X ( copt_net_14 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P5 ctmTdsLR_1_2415 ( .A1 ( tmp_net546 ) , 
    .A2 ( \cic/add_cast_1 [17] ) , .B ( \cic/add_cast_1 [18] ) , 
    .X ( copt_net_493 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_2416 ( .A ( n1894 ) , .X ( tmp_net546 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO21_2 ctmTdsLR_1_2419 ( .A1 ( n1800 ) , 
    .A2 ( \cic/add_cast_3 [17] ) , .B ( \cic/add_cast_3 [18] ) , 
    .X ( copt_net_30 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_V1_4 ctmTdsLR_1_750 ( .A1 ( copt_net_120 ) , 
    .A2 ( copt_net_121 ) , .B ( copt_net_122 ) , .X ( \intadd_0/n10 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_2_751 ( .A1 ( \intadd_0/n11 ) , 
    .A2 ( \cic/sub_cast_3 [9] ) , .X ( copt_net_120 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_3 ctmTdsLR_3_752 ( .A ( \intadd_0/B[8] ) , 
    .X ( copt_net_121 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_2 ctmTdsLR_4_753 ( .A1 ( \cic/sub_cast_3 [9] ) , 
    .A2 ( \intadd_0/n11 ) , .X ( copt_net_122 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 ctmTdsLR_2_2379 ( .CK ( ZBUF_2_1 ) , .EN ( n1736 ) , 
    .X ( tmp_net538 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_6_755 ( .A ( \cic/sub_cast_3 [9] ) , 
    .X ( copt_net_123 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_1_2576 ( .A ( n935 ) , 
    .B ( \enc/sampDiff [18] ) , .X ( n883 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_1_757 ( .A1 ( n1841 ) , 
    .A2 ( \cic/add_cast_1 [7] ) , .X ( n1845 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_0P5 ctmTdsLR_4_1006 ( .A1 ( \cic/sub_cast_1 [14] ) , 
    .A2 ( copt_net_238 ) , .X ( copt_net_239 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_4 ctmTdsLR_1_1897 ( .A1 ( copt_net_476 ) , 
    .A2 ( copt_net_479 ) , .X ( n1800 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_1303 ( .A ( \cic/add_cast_3 [6] ) , 
    .X ( n1839 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_1 ctmTdsLR_3_1304 ( .A1 ( n1836 ) , 
    .A2 ( \cic/add_cast_1 [6] ) , .X ( n1838 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_4_1305 ( .A1 ( n1840 ) , .A2 ( n1839 ) , 
    .B ( n1838 ) , .X ( n1841 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_4 ctmTdsLR_1_763 ( .A1 ( n1747 ) , .A2 ( \intadd_1/B[2] ) , 
    .B ( n1746 ) , .X ( n1748 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_V1_4 ctmTdsLR_2_1219 ( .A1 ( copt_net_314 ) , 
    .A2 ( copt_net_315 ) , .B ( copt_net_316 ) , .X ( \intadd_0/n17 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_1_2423 ( .A ( n1983 ) , 
    .B ( \cic/add_cast_1 [17] ) , .X ( copt_net_176 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OR4_1 ctmTdsLR_3_2428 ( .A1 ( \cic/cur_count [2] ) , 
    .A2 ( \cic/cur_count [5] ) , .A3 ( \cic/cur_count [3] ) , 
    .A4 ( \cic/cur_count [4] ) , .X ( tmp_net550 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_4_2429 ( .A ( \cic/cur_count [0] ) , 
    .X ( tmp_net551 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_1_1418 ( .A1 ( copt_net_363 ) , .A2 ( n1137 ) , 
    .X ( n1132 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_2 ctmTdsLR_2_1419 ( .A ( n1135 ) , .X ( copt_net_363 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_ECO_1 ctmTdsLR_1_2453 ( .A1 ( tmp_net561 ) , 
    .A2 ( ZBUF_6889_0 ) , .X ( n1911 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 ctmTdsLR_2_2454 ( .CK ( tmp_net560 ) , .EN ( n1913 ) , 
    .X ( tmp_net561 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_1_2432 ( .A1 ( n1838 ) , .A2 ( copt_net_437 ) , 
    .B ( copt_net_459 ) , .X ( n1846 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OR2_MM_0P5 ctmTdsLR_1_2433 ( .A1 ( n1899 ) , .A2 ( copt_net_227 ) , 
    .X ( copt_net_229 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_2_2617 ( .A1 ( n1261 ) , .A2 ( n1281 ) , 
    .X ( tmp_net656 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_ECO_1 ctmTdsLR_1_2456 ( .A1 ( n1958 ) , .A2 ( tmp_net563 ) , 
    .X ( n1956 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 ctmTdsLR_2_2457 ( .CK ( tmp_net562 ) , .EN ( n1998 ) , 
    .X ( tmp_net563 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_1 ctmTdsLR_9_825 ( .A1 ( copt_net_155 ) , 
    .A2 ( \cic/sub_cast_1 [16] ) , .X ( copt_net_157 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_EN2_0P5 ctmTdsLR_10_826 ( .A1 ( copt_net_155 ) , 
    .A2 ( copt_net_158 ) , .X ( \intadd_0/B[15] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_EN2_1 ctmTdsLR_11_827 ( .A1 ( \intadd_1/B[15] ) , 
    .A2 ( \cic/sub_cast_1 [16] ) , .X ( copt_net_158 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_1 ctmTdsLR_1_828 ( .A1 ( n1806 ) , .A2 ( copt_net_160 ) , 
    .X ( n1809 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_2 ctmTdsLR_2_829 ( .A1 ( copt_net_30 ) , .A2 ( copt_net_31 ) , 
    .B ( copt_net_159 ) , .X ( copt_net_160 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_3_830 ( .A ( \intadd_1/B[17] ) , 
    .X ( copt_net_159 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_1_831 ( .A1 ( n1784 ) , 
    .A2 ( \cic/add_cast_3 [13] ) , .X ( n1787 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_EO3_1 ctmTdsLR_1_2383 ( .A1 ( \intadd_0/B[0] ) , 
    .A2 ( \intadd_0/CI ) , .A3 ( \cic/sub_cast_3 [1] ) , 
    .X ( \intadd_0/SUM[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_1 ctmTdsLR_3_856 ( .A ( \intadd_1/B[2] ) , 
    .X ( copt_net_166 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_1_834 ( .A1 ( n1830 ) , .A2 ( n1829 ) , 
    .B ( n1828 ) , .X ( n1831 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OR2_MM_0P5 ctmTdsLR_1_2618 ( .A1 ( tmp_net657 ) , .A2 ( n1734 ) , 
    .X ( n745 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_1_836 ( .A1 ( copt_net_163 ) , .A2 ( copt_net_161 ) , 
    .X ( n1865 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_2_837 ( .A1 ( n1860 ) , .A2 ( n1859 ) , 
    .X ( copt_net_161 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_1 ctmTdsLR_3_838 ( .A1 ( n1858 ) , .A2 ( copt_net_162 ) , 
    .X ( copt_net_163 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_4_839 ( .A ( \cic/add_cast_1 [11] ) , 
    .X ( copt_net_162 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_3_1220 ( .A1 ( \intadd_0/n18 ) , 
    .A2 ( \cic/sub_cast_3 [2] ) , .X ( copt_net_314 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OA21B_1 ctmTdsLR_1_952 ( .A1 ( n1933 ) , .A2 ( copt_net_207 ) , 
    .B ( ZBUF_1627_0 ) , .X ( n1943 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_V1_6 ctmTdsLR_1_886 ( .A1 ( n1104 ) , .A2 ( n1105 ) , 
    .B ( n1103 ) , .X ( n1106 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO21_2 ctmTdsLR_1_2397 ( .A1 ( n1784 ) , 
    .A2 ( \cic/add_cast_3 [13] ) , .B ( \cic/add_cast_3 [14] ) , 
    .X ( copt_net_45 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_1_2398 ( .A ( n1932 ) , 
    .B ( \cic/add_cast_1 [7] ) , .X ( copt_net_207 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_3_862 ( .A ( \cic/add_cast_1 [3] ) , 
    .X ( copt_net_168 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_2402 ( .A ( \cic/add_cast_3 [16] ) , 
    .X ( tmp_net542 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_1P5 ctmTdsLR_1_867 ( .A1 ( n1099 ) , .A2 ( n1105 ) , 
    .X ( n1100 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_1_1420 ( .A1 ( n1086 ) , 
    .A2 ( \cic/sub_cast_5 [6] ) , .X ( n1097 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_2_2619 ( .A1 ( n1733 ) , .A2 ( n1732 ) , 
    .X ( tmp_net657 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_MM_1 ctmTdsLR_1_889 ( .A1 ( copt_net_177 ) , 
    .A2 ( ZBUF_1627_0 ) , .X ( n1996 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_2_890 ( .A1 ( n1984 ) , .A2 ( copt_net_176 ) , 
    .X ( copt_net_177 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_1_2620 ( .A1 ( n1700 ) , .A2 ( n1699 ) , 
    .B ( tmp_net660 ) , .X ( n746 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO221_0P5 ctmTdsLR_1_2461 ( .A1 ( n1998 ) , .A2 ( n1998 ) , 
    .B1 ( n1939 ) , .B2 ( ZBUF_1627_0 ) , .C ( tmp_net565 ) , .X ( n1936 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_0P5 ctmTdsLR_1_911 ( .A1 ( \intadd_1/n3 ) , 
    .A2 ( \cic/sub_cast_1 [17] ) , .X ( copt_net_62 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_1 ctmTdsLR_2_1421 ( .A ( \intadd_0/SUM[5] ) , .X ( n1096 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_2 ctmTdsLR_3_1422 ( .A1 ( \cic/sub_cast_5 [6] ) , 
    .A2 ( n1086 ) , .X ( n1095 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_2462 ( .A ( n1938 ) , .X ( tmp_net565 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_1P5 ctmTdsLR_4_1221 ( .A ( \intadd_0/B[1] ) , 
    .X ( copt_net_315 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_ECO_1 ctmTdsLR_1_2463 ( .A1 ( tmp_net566 ) , 
    .A2 ( ZBUF_6889_0 ) , .X ( n1931 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_MM_1 ctmTdsLR_1_917 ( .A1 ( n1078 ) , 
    .A2 ( \cic/sub_cast_5 [5] ) , .X ( n1085 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_1 ctmTdsLR_1_1970 ( .A1 ( copt_net_291 ) , .A2 ( n1883 ) , 
    .X ( copt_net_292 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_1_2577 ( .A ( tmp_net633 ) , .X ( tmp_net560 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_1 ctmTdsLR_1_920 ( .A1 ( copt_net_190 ) , 
    .A2 ( copt_net_191 ) , .X ( n1060 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_V1_4 ctmTdsLR_4_1423 ( .A1 ( n1097 ) , .A2 ( n1096 ) , 
    .B ( n1095 ) , .X ( n1098 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_1 ctmTdsLR_3_922 ( .A1 ( n1058 ) , 
    .A2 ( \cic/sub_cast_5 [2] ) , .X ( copt_net_191 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_1_923 ( .A1 ( n1990 ) , 
    .A2 ( \cic/add_cast_1 [17] ) , .B ( ZBUF_1627_0 ) , .X ( n1991 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_2464 ( .A1 ( n1934 ) , .A2 ( ZBUF_1627_0 ) , 
    .B ( n1933 ) , .X ( tmp_net566 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_2465 ( .A1 ( n1974 ) , .A2 ( ZBUF_1627_0 ) , 
    .B ( tmp_net568 ) , .X ( n1971 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 ctmTdsLR_2_2466 ( .CK ( n1973 ) , .EN ( tmp_net567 ) , 
    .X ( tmp_net568 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_4_927 ( .A1 ( \cic/add_cast_1 [2] ) , 
    .A2 ( \cic/add_cast_1 [3] ) , .X ( copt_net_193 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_3_2467 ( .A ( ZBUF_6889_0 ) , .X ( tmp_net567 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_2468 ( .A1 ( n1841 ) , 
    .A2 ( \cic/add_cast_1 [7] ) , .B ( tmp_net570 ) , .X ( n1842 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 ctmTdsLR_2_2469 ( .CK ( n1845 ) , .EN ( tmp_net569 ) , 
    .X ( tmp_net570 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_4_990 ( .A ( \cic/add_cast_1 [19] ) , 
    .X ( copt_net_227 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_2 ctmTdsLR_1_967 ( .A1 ( copt_net_215 ) , 
    .A2 ( copt_net_216 ) , .X ( \intadd_0/n14 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_ND2_0P5 ctmTdsLR_2_968 ( .A1 ( \intadd_0/n15 ) , 
    .A2 ( \cic/sub_cast_3 [5] ) , .X ( copt_net_215 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_2 ctmTdsLR_3_969 ( .A1 ( \intadd_0/n15 ) , 
    .A2 ( \cic/sub_cast_3 [5] ) , .B ( \intadd_0/B[4] ) , 
    .X ( copt_net_216 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EN3_U_0P5 ctmTdsLR_4_970 ( .A1 ( \intadd_0/n15 ) , 
    .A2 ( copt_net_217 ) , .A3 ( \intadd_0/B[4] ) , .X ( \intadd_0/SUM[4] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_5_971 ( .A ( \cic/sub_cast_3 [5] ) , 
    .X ( copt_net_217 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EN2_1P5 ctmTdsLR_1_1437 ( .A1 ( \intadd_0/n6 ) , 
    .A2 ( copt_net_369 ) , .X ( \intadd_0/SUM[13] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_1_973 ( .A1 ( copt_net_221 ) , .A2 ( ZBUF_1627_0 ) , 
    .X ( n1953 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_2_974 ( .A1 ( n1943 ) , .A2 ( copt_net_220 ) , 
    .X ( copt_net_221 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_3_2470 ( .A ( ZBUF_3910_0 ) , .X ( tmp_net569 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_1_2471 ( .A ( n1146 ) , .B ( n1144 ) , 
    .X ( tmp_net571 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_1_2472 ( .A ( n1163 ) , .B ( n1161 ) , 
    .X ( tmp_net572 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_1P5 ctmTdsLR_5_1042 ( .A ( copt_net_6 ) , 
    .X ( copt_net_248 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EO2_1P5 ctmTdsLR_6_1043 ( .A1 ( n2003 ) , 
    .A2 ( \cic/sub_cast_3 [19] ) , .X ( copt_net_249 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_2 ctmTdsLR_1_994 ( .A1 ( n1060 ) , 
    .A2 ( \cic/sub_cast_5 [3] ) , .B ( \intadd_0/SUM[2] ) , .X ( n1059 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EN2_0P5 ctmTdsLR_2_1438 ( .A1 ( \intadd_0/B[13] ) , 
    .A2 ( \cic/sub_cast_3 [14] ) , .X ( copt_net_369 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_4 ctmTdsLR_1_1542 ( .A1 ( n1820 ) , .A2 ( n1819 ) , 
    .B ( n1818 ) , .X ( n1821 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_2 ctmTdsLR_6_1008 ( .A1 ( \intadd_1/n7 ) , 
    .A2 ( \cic/sub_cast_1 [13] ) , .B ( \intadd_1/B[12] ) , 
    .X ( copt_net_236 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_4 ctmTdsLR_1_1154 ( .A1 ( n1791 ) , .A2 ( \intadd_1/B[13] ) , 
    .B ( n1790 ) , .X ( n1792 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_4 ctmTdsLR_8_1010 ( .A1 ( copt_net_238 ) , 
    .A2 ( \cic/sub_cast_1 [14] ) , .B ( \intadd_1/B[13] ) , 
    .X ( copt_net_240 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EO2_1P5 ctmTdsLR_9_1011 ( .A1 ( copt_net_238 ) , 
    .A2 ( copt_net_241 ) , .X ( \intadd_0/B[13] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_EO2_V1_0P75 ctmTdsLR_10_1012 ( .A1 ( \intadd_1/B[13] ) , 
    .A2 ( \cic/sub_cast_1 [14] ) , .X ( copt_net_241 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_1_1027 ( .A1 ( n1087 ) , .A2 ( n1097 ) , 
    .X ( n1088 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_3_1091 ( .A ( ZBUF_3972_0 ) , 
    .X ( copt_net_274 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_3 ctmTdsLR_1_1015 ( .A ( \intadd_0/SUM[9] ) , .X ( n1128 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_2 ctmTdsLR_2_1543 ( .A1 ( \cic/add_cast_1 [3] ) , 
    .A2 ( n1821 ) , .X ( n1823 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_MM_1 ctmTdsLR_2_1065 ( .A1 ( n1188 ) , .A2 ( copt_net_261 ) , 
    .X ( copt_net_262 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_3_1066 ( .A ( n1187 ) , .X ( copt_net_261 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_2_2578 ( .A1 ( n1909 ) , .A2 ( ZBUF_9_9 ) , 
    .B ( ZBUF_137_8 ) , .X ( tmp_net633 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_1P5 ctmTdsLR_1_1049 ( .A ( copt_net_39 ) , 
    .X ( copt_net_42 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_1P5 ctmTdsLR_2_2036 ( .A1 ( n1895 ) , .A2 ( copt_net_508 ) , 
    .X ( copt_net_509 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_2_2390 ( .A ( \cic/add_cast_3 [11] ) , 
    .B ( n1774 ) , .X ( copt_net_455 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_2391 ( .A1 ( n1774 ) , .A2 ( \intadd_1/B[9] ) , 
    .B ( copt_net_413 ) , .X ( n1778 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_0P5 ctmTdsLR_1_1071 ( .A1 ( \intadd_1/n7 ) , 
    .A2 ( \cic/sub_cast_1 [13] ) , .X ( copt_net_237 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_2 ctmTdsLR_1_1987 ( .A1 ( ZBUF_106_2 ) , 
    .A2 ( copt_net_500 ) , .X ( n1813 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_1_1451 ( .A1 ( copt_net_380 ) , 
    .A2 ( copt_net_381 ) , .X ( n1743 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_2 ctmTdsLR_2_1452 ( .A1 ( copt_net_267 ) , 
    .A2 ( ZBUF_32_14 ) , .B ( copt_net_379 ) , .X ( copt_net_380 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_1098 ( .A ( \cic/add_cast_5 [14] ) , 
    .X ( \intadd_1/B[13] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO21_2 ctmTdsLR_1_2473 ( .A1 ( n1796 ) , 
    .A2 ( \cic/add_cast_3 [16] ) , .B ( tmp_net573 ) , .X ( n1797 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_0P5 ctmTdsLR_5_1222 ( .A1 ( \intadd_0/n18 ) , 
    .A2 ( \cic/sub_cast_3 [2] ) , .X ( copt_net_316 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_1_1101 ( .A1 ( n1856 ) , 
    .A2 ( \cic/add_cast_1 [10] ) , .X ( n1860 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_1102 ( .A ( \cic/add_cast_3 [10] ) , 
    .X ( n1859 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AN2_2 ctmTdsLR_2_2046 ( .A1 ( n1873 ) , .A2 ( ZBUF_6889_0 ) , 
    .X ( copt_net_510 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_3 ctmTdsLR_4_1104 ( .A1 ( n1860 ) , .A2 ( n1859 ) , 
    .B ( n1858 ) , .X ( n1861 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_4 ctmTdsLR_1_1155 ( .A1 ( n1112 ) , .A2 ( n1113 ) , 
    .B ( n1111 ) , .X ( n1114 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_2 ctmTdsLR_2_1156 ( .A1 ( \cic/sub_cast_5 [9] ) , 
    .A2 ( n1114 ) , .X ( n1119 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_2_2474 ( .A1 ( n1796 ) , 
    .A2 ( \cic/add_cast_3 [16] ) , .B ( ZBUF_7033_0 ) , .X ( tmp_net573 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_EN3_1 ctmTdsLR_6_1223 ( .A1 ( \intadd_0/n18 ) , 
    .A2 ( copt_net_317 ) , .A3 ( \intadd_0/B[1] ) , .X ( \intadd_0/SUM[1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_1 ctmTdsLR_3_2047 ( .A ( n1875 ) , .X ( copt_net_511 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_1110 ( .A ( \cic/add_cast_3 [2] ) , 
    .X ( n1819 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_0P5 ctmTdsLR_3_1111 ( .A1 ( n1816 ) , 
    .A2 ( \cic/add_cast_1 [2] ) , .X ( n1818 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_V1_4 ctmTdsLR_1_1864 ( .A1 ( copt_net_463 ) , 
    .A2 ( copt_net_459 ) , .B ( copt_net_465 ) , .X ( n1851 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_1_2579 ( .A1 ( \enc/n4 ) , .A2 ( tmp_net634 ) , 
    .B ( tmp_net636 ) , .X ( n1260 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_1118 ( .A ( \cic/add_cast_3 [8] ) , 
    .X ( n1849 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_2_2580 ( .A1 ( \enc/n5 ) , .A2 ( n1356 ) , 
    .X ( tmp_net634 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OR2_2 ctmTdsLR_2_1898 ( .A1 ( n1794 ) , .A2 ( copt_net_414 ) , 
    .X ( copt_net_476 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 ctmTdsLR_7_1224 ( .A ( \cic/sub_cast_3 [2] ) , 
    .X ( copt_net_317 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_8_1225 ( .A1 ( n1058 ) , 
    .A2 ( \cic/sub_cast_5 [2] ) , .B ( \intadd_0/SUM[1] ) , 
    .X ( copt_net_190 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_2_1545 ( .A1 ( n1890 ) , .A2 ( copt_net_409 ) , 
    .X ( copt_net_410 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_3_1453 ( .A ( \cic/add_cast_3 [2] ) , 
    .X ( copt_net_379 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_1P5 ctmTdsLR_4_1454 ( .A ( n1738 ) , .X ( copt_net_381 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_3_2037 ( .A ( ZBUF_7033_0 ) , 
    .X ( copt_net_508 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_1P5 ctmTdsLR_1_1403 ( .A1 ( copt_net_360 ) , .A2 ( n1155 ) , 
    .X ( n1149 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_4 ctmTdsLR_1_1166 ( .A1 ( copt_net_297 ) , 
    .A2 ( copt_net_298 ) , .B ( copt_net_299 ) , .X ( copt_net_155 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_2_1167 ( .A1 ( \intadd_1/n5 ) , 
    .A2 ( \cic/sub_cast_1 [15] ) , .X ( copt_net_297 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_3_1168 ( .A ( \intadd_1/B[14] ) , 
    .X ( copt_net_298 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_0P5 ctmTdsLR_4_1169 ( .A1 ( \intadd_1/n5 ) , 
    .A2 ( \cic/sub_cast_1 [15] ) , .X ( copt_net_299 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_1_1170 ( .A ( copt_net_300 ) , .X ( n1763 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OR2_MM_4 ctmTdsLR_2_1171 ( .A1 ( copt_net_78 ) , 
    .A2 ( copt_net_164 ) , .X ( copt_net_300 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_1P5 ctmTdsLR_3_1172 ( .A ( \cic/add_cast_5 [7] ) , 
    .X ( \intadd_1/B[6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_2 ctmTdsLR_2_1404 ( .A ( n1153 ) , .X ( copt_net_360 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_1 ctmTdsLR_1_1409 ( .A1 ( copt_net_100 ) , 
    .A2 ( copt_net_361 ) , .X ( n1058 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_1P5 ctmTdsLR_2_1410 ( .A1 ( \intadd_0/SUM[0] ) , 
    .A2 ( \cic/sub_cast_5 [1] ) , .B ( copt_net_305 ) , .X ( copt_net_361 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_1_1176 ( .A1 ( n1831 ) , 
    .A2 ( \cic/add_cast_1 [5] ) , .X ( n1835 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_1177 ( .A ( \cic/add_cast_3 [5] ) , 
    .X ( n1834 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 ctmTdsLR_3_2581 ( .CK ( tmp_net635 ) , .EN ( n1273 ) , 
    .X ( tmp_net636 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_1796 ( .A ( copt_net_724 ) , 
    .X ( copt_net_448 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_2 ctmTdsLR_1_1180 ( .A1 ( copt_net_302 ) , 
    .A2 ( copt_net_303 ) , .X ( \intadd_0/n18 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_1 ctmTdsLR_2_1181 ( .A1 ( \cic/sub_cast_3 [1] ) , 
    .A2 ( \intadd_0/CI ) , .X ( copt_net_302 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_2 ctmTdsLR_3_1182 ( .A1 ( \intadd_0/CI ) , 
    .A2 ( \cic/sub_cast_3 [1] ) , .B ( \intadd_0/B[0] ) , 
    .X ( copt_net_303 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 ctmTdsLR_4_2582 ( .A ( n1379 ) , .X ( tmp_net635 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_2_2476 ( .A ( n1998 ) , .B ( n1919 ) , 
    .X ( tmp_net574 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AN2_0P5 ctmTdsLR_2_2052 ( .A1 ( n1774 ) , .A2 ( ZBUF_6889_0 ) , 
    .X ( copt_net_512 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_7_1186 ( .A1 ( copt_net_95 ) , 
    .A2 ( copt_net_96 ) , .X ( copt_net_305 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_S_0P5 copt_h_inst_2716 ( .A ( \cic/sub_cast_5 [13] ) , 
    .X ( copt_net_737 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_1458 ( .A ( \cic/add_cast_3 [15] ) , 
    .X ( n1884 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_1_1797 ( .A1 ( copt_net_449 ) , 
    .A2 ( copt_net_451 ) , .X ( n1885 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_4 ctmTdsLR_1_1993 ( .A1 ( copt_net_16 ) , 
    .A2 ( copt_net_502 ) , .B ( n1169 ) , .X ( n1172 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_3_1546 ( .A ( ZBUF_7033_0 ) , 
    .X ( copt_net_409 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_1 ctmTdsLR_2_1994 ( .A ( \intadd_0/SUM[14] ) , 
    .X ( copt_net_502 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_1P5 ctmTdsLR_1_2583 ( .A ( tmp_net637 ) , .X ( n1990 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_5_1655 ( .A ( n1834 ) , .X ( copt_net_423 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_2_1798 ( .A1 ( n1880 ) , .A2 ( n1879 ) , 
    .X ( copt_net_449 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_1 ctmTdsLR_7_1657 ( .A1 ( copt_net_427 ) , 
    .A2 ( copt_net_424 ) , .X ( copt_net_428 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_8_1658 ( .A ( n1829 ) , .X ( copt_net_427 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AO21B_0P5 ctmTdsLR_1_2477 ( .A1 ( n1985 ) , .A2 ( ZBUF_1627_0 ) , 
    .B ( tmp_net576 ) , .X ( n1982 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_2_2478 ( .A1 ( n1984 ) , .A2 ( tmp_net575 ) , 
    .X ( tmp_net576 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_1 ctmTdsLR_4_1867 ( .A1 ( \cic/add_cast_1 [8] ) , 
    .A2 ( copt_net_461 ) , .X ( copt_net_462 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_5_1868 ( .A ( n1849 ) , .X ( copt_net_461 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_MM_0P5 ctmTdsLR_6_1869 ( .A1 ( copt_net_461 ) , 
    .A2 ( \cic/add_cast_1 [8] ) , .X ( copt_net_465 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_4_1764 ( .A ( copt_net_436 ) , 
    .X ( copt_net_437 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OR2_0P5 ctmTdsLR_5_1765 ( .A1 ( copt_net_435 ) , 
    .A2 ( \cic/add_cast_1 [7] ) , .X ( copt_net_436 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_6_1766 ( .A ( n1844 ) , .X ( copt_net_435 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_7_1767 ( .A1 ( copt_net_435 ) , 
    .A2 ( \cic/add_cast_1 [7] ) , .X ( copt_net_438 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_2 ctmTdsLR_1_1879 ( .A1 ( n1795 ) , .A2 ( copt_net_470 ) , 
    .B ( n1794 ) , .X ( n1796 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_3_2479 ( .A ( ZBUF_6889_0 ) , .X ( tmp_net575 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OR3_0P5 ctmTdsLR_1_2480 ( .A1 ( ZBUF_1627_0 ) , .A2 ( n1995 ) , 
    .A3 ( n1998 ) , .X ( tmp_net577 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_2_2584 ( .A1 ( n1985 ) , 
    .A2 ( \cic/add_cast_1 [16] ) , .X ( tmp_net637 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_2_1772 ( .A1 ( n1826 ) , 
    .A2 ( \cic/add_cast_1 [4] ) , .X ( copt_net_444 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_AO21_2 ctmTdsLR_1_1773 ( .A1 ( n1784 ) , 
    .A2 ( \cic/add_cast_3 [13] ) , .B ( copt_net_445 ) , .X ( n1785 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_1 ctmTdsLR_2_1774 ( .A1 ( n1784 ) , 
    .A2 ( \cic/add_cast_3 [13] ) , .B ( ZBUF_7033_0 ) , .X ( copt_net_445 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_1 ctmTdsLR_3_1799 ( .A1 ( n1878 ) , .A2 ( copt_net_450 ) , 
    .X ( copt_net_451 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_4_1800 ( .A ( \cic/add_cast_1 [15] ) , 
    .X ( copt_net_450 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_4 ctmTdsLR_1_1801 ( .A1 ( n1783 ) , .A2 ( copt_net_452 ) , 
    .B ( n1782 ) , .X ( n1784 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_1802 ( .A ( copt_net_700 ) , 
    .X ( copt_net_452 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OR4_1 ctmTdsLR_2_2481 ( .A1 ( n1998 ) , 
    .A2 ( \cic/add_cast_1 [17] ) , .A3 ( n1994 ) , 
    .A4 ( \cic/add_cast_1 [18] ) , .X ( tmp_net578 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_3_2053 ( .A ( n1775 ) , .X ( copt_net_513 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2B_U_0P5 ctmTdsLR_1_2482 ( .A ( n1121 ) , .B ( n1119 ) , 
    .X ( tmp_net579 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_CDC_1 ctmTdsLR_1_2483 ( .A1 ( n1893 ) , .A2 ( copt_net_509 ) , 
    .X ( n1892 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AOI21_0P75 ctmTdsLR_2_2171 ( .A1 ( copt_net_204 ) , 
    .A2 ( copt_net_521 ) , .B ( \cic/add_cast_1 [19] ) , .X ( copt_net_523 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_1819 ( .A ( copt_net_424 ) , 
    .X ( copt_net_456 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_1_2585 ( .A ( tmp_net638 ) , .X ( tmp_net562 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_2_2586 ( .A1 ( n1954 ) , 
    .A2 ( \cic/add_cast_1 [10] ) , .B ( ZBUF_1627_0 ) , .X ( tmp_net638 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 ctmTdsLR_2_2621 ( .CK ( tmp_net658 ) , 
    .EN ( tmp_net659 ) , .X ( tmp_net660 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OA21_MM_2 ctmTdsLR_4_1823 ( .A1 ( n1840 ) , .A2 ( copt_net_441 ) , 
    .B ( copt_net_438 ) , .X ( copt_net_459 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_2_1880 ( .A ( \cic/add_cast_5 [15] ) , 
    .X ( copt_net_470 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_4 ctmTdsLR_3_1899 ( .A1 ( copt_net_478 ) , 
    .A2 ( copt_net_420 ) , .X ( copt_net_479 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_4_1900 ( .A1 ( n1795 ) , .A2 ( copt_net_477 ) , 
    .X ( copt_net_478 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 ctmTdsLR_3_2622 ( .CK ( n1698 ) , .EN ( n1697 ) , 
    .X ( tmp_net658 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_AN2_MM_2 ctmTdsLR_1_2102 ( .A1 ( n1881 ) , 
    .A2 ( \cic/add_cast_1 [15] ) , .X ( copt_net_487 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_3_2172 ( .A ( n1899 ) , .X ( copt_net_521 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V1_1 copt_h_inst_2718 ( .A ( n1176 ) , .X ( copt_net_738 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OR3_4 ctmTdsLR_1_2140 ( .A1 ( copt_net_497 ) , 
    .A2 ( copt_net_518 ) , .A3 ( copt_net_431 ) , .X ( n1836 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V2_1 copt_h_inst_2720 ( .A ( n1066 ) , .X ( copt_net_739 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_2 ctmTdsLR_2_2141 ( .A1 ( copt_net_444 ) , 
    .A2 ( copt_net_428 ) , .X ( copt_net_518 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_4_2623 ( .A1 ( n1712 ) , .A2 ( n1711 ) , 
    .X ( tmp_net659 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI22_0P5 ctmTdsLR_1_2624 ( .A1 ( n1251 ) , .A2 ( tmp_net661 ) , 
    .B1 ( n1030 ) , .B2 ( n1029 ) , .X ( n700 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 ctmTdsLR_3_2182 ( .A ( \cic/add_cast_3 [2] ) , 
    .X ( copt_net_527 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_1 ctmTdsLR_4_2183 ( .A1 ( n1738 ) , .A2 ( ZBUF_32_14 ) , 
    .X ( copt_net_529 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_2_2625 ( .A1 ( n1027 ) , 
    .A2 ( \enc/predictorSamp [0] ) , .X ( tmp_net661 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_1_2626 ( .A1 ( n1488 ) , .A2 ( tmp_net662 ) , 
    .B ( tmp_net664 ) , .X ( n761 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_2_2627 ( .A1 ( n1487 ) , 
    .A2 ( \enc/doneCounter ) , .X ( tmp_net662 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 ctmTdsLR_3_2628 ( .CK ( tmp_net663 ) , .EN ( n1491 ) , 
    .X ( tmp_net664 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 ctmTdsLR_4_2629 ( .A ( n1490 ) , .X ( tmp_net663 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_1_2630 ( .A1 ( \enc/sampDiff [6] ) , 
    .A2 ( tmp_net665 ) , .B ( tmp_net667 ) , .X ( n755 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_2_2631 ( .A1 ( n1602 ) , .A2 ( n1584 ) , 
    .X ( tmp_net665 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 ctmTdsLR_3_2632 ( .CK ( tmp_net666 ) , .EN ( n1587 ) , 
    .X ( tmp_net667 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 ctmTdsLR_4_2633 ( .A ( n1586 ) , .X ( tmp_net666 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OR2_MM_0P5 ctmTdsLR_1_2634 ( .A1 ( tmp_net668 ) , .A2 ( n1337 ) , 
    .X ( \enc/N1093 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_2_2635 ( .A1 ( n1336 ) , .A2 ( n1335 ) , 
    .X ( tmp_net668 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_1_2636 ( .A1 ( \enc/sampDiff [9] ) , 
    .A2 ( tmp_net669 ) , .B ( tmp_net671 ) , .X ( n752 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_2_2637 ( .A1 ( n1643 ) , .A2 ( n1629 ) , 
    .X ( tmp_net669 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 ctmTdsLR_3_2638 ( .CK ( tmp_net670 ) , .EN ( n1632 ) , 
    .X ( tmp_net671 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 ctmTdsLR_4_2639 ( .A ( n1631 ) , .X ( tmp_net670 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_1_2640 ( .A1 ( \enc/sampDiff [12] ) , 
    .A2 ( tmp_net672 ) , .B ( tmp_net674 ) , .X ( n749 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_2_2641 ( .A1 ( n1665 ) , .A2 ( n1682 ) , 
    .X ( tmp_net672 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 ctmTdsLR_3_2642 ( .CK ( tmp_net673 ) , .EN ( n1668 ) , 
    .X ( tmp_net674 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 ctmTdsLR_4_2643 ( .A ( n1667 ) , .X ( tmp_net673 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_OAI21_0P5 ctmTdsLR_1_2644 ( .A1 ( n1455 ) , .A2 ( tmp_net675 ) , 
    .B ( tmp_net677 ) , .X ( \enc/N1106 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_ND2_MM_0P5 ctmTdsLR_2_2645 ( .A1 ( \enc/n3 ) , .A2 ( \enc/n1 ) , 
    .X ( tmp_net675 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_NR2_ISO_1 ctmTdsLR_3_2646 ( .CK ( tmp_net676 ) , .EN ( n1270 ) , 
    .X ( tmp_net677 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_0P5 ctmTdsLR_4_2647 ( .A ( n1281 ) , .X ( tmp_net676 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_S_0P5 copt_h_inst_2721 ( .A ( \cic/add_cast_3 [19] ) , 
    .X ( copt_net_740 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 gre_h_inst_2850 ( .A ( \cic/sub_cast_5 [8] ) , 
    .X ( gre_net_853 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_S_0P5 copt_h_inst_2724 ( .A ( n1715 ) , .X ( copt_net_742 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_UCDC_0P5 copt_h_inst_2725 ( .A ( \cic/add_cast_3 [11] ) , 
    .X ( copt_net_743 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V1_1 copt_h_inst_2727 ( .A ( n1152 ) , .X ( copt_net_744 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V1_1 copt_h_inst_2728 ( .A ( n1619 ) , .X ( copt_net_745 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_S_0P5 copt_h_inst_2729 ( .A ( n1683 ) , .X ( copt_net_746 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_UCDC_0P5 copt_h_inst_2730 ( .A ( \cic/add_cast_3 [18] ) , 
    .X ( copt_net_747 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_UCDC_0P5 copt_h_inst_2731 ( .A ( \cic/add_cast_3 [9] ) , 
    .X ( copt_net_748 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_UCDC_0P5 copt_h_inst_2732 ( .A ( \cic/sub_cast_5 [16] ) , 
    .X ( copt_net_749 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 copt_h_inst_2735 ( .A ( n1045 ) , .X ( copt_net_750 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_S_0P5 copt_h_inst_2736 ( .A ( n1221 ) , .X ( copt_net_751 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 copt_h_inst_2737 ( .A ( n1994 ) , .X ( copt_net_752 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_S_0P5 copt_h_inst_2738 ( .A ( n1071 ) , .X ( copt_net_753 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 copt_h_inst_2781 ( .A ( \cic/sub_cast_1 [14] ) , 
    .X ( copt_net_794 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_S_0P5 copt_h_inst_2740 ( .A ( n1065 ) , .X ( copt_net_755 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V1_1 copt_h_inst_2741 ( .A ( n1110 ) , .X ( copt_net_756 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 gre_h_inst_2851 ( .A ( \cic/sub_cast_1 [10] ) , 
    .X ( gre_net_854 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 copt_h_inst_2745 ( .A ( \cic/add_cast_5 [7] ) , 
    .X ( copt_net_758 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 copt_h_inst_2746 ( .A ( \cic/add_cast_5 [7] ) , 
    .X ( copt_net_759 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V1_1 copt_h_inst_2747 ( .A ( n1692 ) , .X ( copt_net_760 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_S_0P5 copt_h_inst_2748 ( .A ( n1082 ) , .X ( copt_net_761 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_S_0P5 copt_h_inst_2750 ( .A ( n1151 ) , .X ( copt_net_763 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 copt_h_inst_2751 ( .A ( n1202 ) , .X ( copt_net_764 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 copt_h_inst_2752 ( .A ( \cic/add_cast_3 [15] ) , 
    .X ( copt_net_765 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_S_0P5 gre_h_inst_2852 ( .A ( \cic/sub_cast_5 [9] ) , 
    .X ( gre_net_855 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 copt_h_inst_2754 ( .A ( \cic/sub_cast_1 [7] ) , 
    .X ( copt_net_767 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 copt_h_inst_2755 ( .A ( \cic/add_cast_3 [10] ) , 
    .X ( copt_net_768 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 copt_h_inst_2756 ( .A ( \cic/add_cast_1 [9] ) , 
    .X ( copt_net_769 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V2_1 copt_h_inst_2797 ( .A ( n572 ) , .X ( copt_net_809 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_UCDC_0P5 copt_h_inst_2758 ( .A ( n657 ) , .X ( copt_net_771 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V2_1 copt_h_inst_2798 ( .A ( N48 ) , .X ( copt_net_810 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 copt_h_inst_2760 ( .A ( \cic/add_cast_3 [12] ) , 
    .X ( copt_net_773 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 copt_h_inst_2761 ( .A ( \cic/add_cast_1 [14] ) , 
    .X ( copt_net_774 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 copt_h_inst_2762 ( .A ( \cic/add_cast_1 [13] ) , 
    .X ( copt_net_775 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 copt_h_inst_2763 ( .A ( \cic/add_cast_3 [14] ) , 
    .X ( copt_net_776 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 copt_h_inst_2764 ( .A ( \cic/add_cast_1 [16] ) , 
    .X ( copt_net_777 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 copt_h_inst_2765 ( .A ( \cic/add_cast_1 [10] ) , 
    .X ( copt_net_778 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V2_1 copt_h_inst_2784 ( .A ( \cic/sub_cast_1 [17] ) , 
    .X ( copt_net_797 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 copt_h_inst_2767 ( .A ( \cic/sub_cast_5 [4] ) , 
    .X ( copt_net_780 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 copt_h_inst_2768 ( .A ( n1143 ) , .X ( copt_net_781 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V1_1 copt_h_inst_2769 ( .A ( n1069 ) , .X ( copt_net_782 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V2_1 copt_h_inst_2770 ( .A ( n1134 ) , .X ( copt_net_783 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V2_1 copt_h_inst_2771 ( .A ( n1126 ) , .X ( copt_net_784 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_S_0P5 copt_h_inst_2772 ( .A ( n1168 ) , .X ( copt_net_785 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V2_1 copt_h_inst_2773 ( .A ( n1118 ) , .X ( copt_net_786 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V1_1 copt_h_inst_2799 ( .A ( n695 ) , .X ( copt_net_811 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V1_1 copt_h_inst_2786 ( .A ( \cic/sub_cast_1 [15] ) , 
    .X ( copt_net_799 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V2_1 copt_h_inst_2787 ( .A ( \cic/sub_cast_1 [18] ) , 
    .X ( copt_net_800 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V1_1 copt_h_inst_2788 ( .A ( \cic/sub_cast_1 [16] ) , 
    .X ( copt_net_801 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V2_1 copt_h_inst_2789 ( .A ( n766 ) , .X ( copt_net_802 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 copt_h_inst_2791 ( .A ( \cic/add_cast_1 [3] ) , 
    .X ( copt_net_804 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V1_1 copt_h_inst_2800 ( .A ( n696 ) , .X ( copt_net_812 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V2_1 copt_h_inst_2801 ( .A ( n636 ) , .X ( copt_net_813 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 copt_h_inst_2794 ( .A ( \cic/sub_cast_1 [13] ) , 
    .X ( copt_net_807 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_S_0P5 copt_h_inst_2796 ( .A ( copt_net_767 ) , 
    .X ( copt_net_808 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_S_0P5 copt_h_inst_2802 ( .A ( N46 ) , .X ( copt_net_814 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 copt_h_inst_2803 ( .A ( n653 ) , .X ( copt_net_815 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V1_1 copt_h_inst_2804 ( .A ( n676 ) , .X ( copt_net_816 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 copt_h_inst_2805 ( .A ( n697 ) , .X ( copt_net_817 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 copt_h_inst_2807 ( .A ( n635 ) , .X ( copt_net_818 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_S_0P5 copt_h_inst_2808 ( .A ( n655 ) , .X ( copt_net_819 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V1_1 copt_h_inst_2810 ( .A ( n693 ) , .X ( copt_net_820 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_4 gre_h_inst_2853 ( .A ( n687 ) , .X ( gre_net_856 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_S_0P5 copt_h_inst_2812 ( .A ( n567 ) , .X ( copt_net_822 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V2_1 copt_h_inst_2813 ( .A ( N49 ) , .X ( copt_net_823 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 copt_h_inst_2814 ( .A ( n671 ) , .X ( copt_net_824 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 copt_h_inst_2815 ( .A ( n674 ) , .X ( copt_net_825 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 copt_h_inst_2816 ( .A ( n651 ) , .X ( copt_net_826 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V2_1 copt_h_inst_2817 ( .A ( n609 ) , .X ( copt_net_827 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V1_1 copt_h_inst_2819 ( .A ( n691 ) , .X ( copt_net_829 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 copt_h_inst_2821 ( .A ( n673 ) , .X ( copt_net_830 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 copt_h_inst_2822 ( .A ( n649 ) , .X ( copt_net_831 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 copt_h_inst_2823 ( .A ( n669 ) , .X ( copt_net_832 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 copt_h_inst_2824 ( .A ( n573 ) , .X ( copt_net_833 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 copt_h_inst_2825 ( .A ( n672 ) , .X ( copt_net_834 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 copt_h_inst_2826 ( .A ( n1736 ) , .X ( copt_net_835 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_S_0P5 copt_h_inst_2827 ( .A ( n569 ) , .X ( copt_net_836 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 copt_h_inst_2828 ( .A ( n692 ) , .X ( copt_net_837 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V1_1 copt_h_inst_2829 ( .A ( n689 ) , .X ( copt_net_838 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V1_1 copt_h_inst_2830 ( .A ( n564 ) , .X ( copt_net_839 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_S_0P5 copt_h_inst_2831 ( .A ( n570 ) , .X ( copt_net_840 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 copt_h_inst_2832 ( .A ( n592 ) , .X ( copt_net_841 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V2_1 copt_h_inst_2833 ( .A ( n556 ) , .X ( copt_net_842 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_S_0P5 copt_h_inst_2834 ( .A ( n563 ) , .X ( copt_net_843 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 copt_h_inst_2835 ( .A ( n574 ) , .X ( copt_net_844 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 copt_h_inst_2838 ( .A ( n611 ) , .X ( copt_net_845 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_U_0P5 copt_h_inst_2839 ( .A ( n555 ) , .X ( copt_net_846 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V1_1 copt_h_inst_2840 ( .A ( \cic/sub_cast_5 [14] ) , 
    .X ( copt_net_847 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_BUF_UCDC_0P5 copt_h_inst_2841 ( .A ( gre_net_850 ) , 
    .X ( copt_net_848 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x0y0 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x740y0 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x8880y0 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x9620y0 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x25900y0 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x57720y0 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x102120y0 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x120620y0 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x121360y0 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x122100y0 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x145780y0 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x146520y0 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x147260y0 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x180560y0 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x181300y0 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x228660y0 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x229400y0 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x230140y0 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x236800y0 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x237540y0 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x238280y0 () ;
SAEDRVT14_FILL2 \xofiller!SAEDRVT14_FILL2!x256780y0 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x259740y0 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x260480y0 () ;
SAEDRVT14_FILL2 \xofiller!SAEDRVT14_FILL2!x268620y0 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x271580y0 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x272320y0 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x273060y0 () ;
SAEDRVT14_FILL2 \xofiller!SAEDRVT14_FILL2!x281200y0 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x0y6000 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x740y6000 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x1480y6000 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x19980y6000 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x20720y6000 () ;
SAEDRVT14_FILL2 \xofiller!SAEDRVT14_FILL2!x43660y6000 () ;
SAEDRVT14_FILL2 \xofiller!SAEDRVT14_FILL2!x46620y6000 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x70300y6000 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x71040y6000 () ;
SAEDRVT14_FILL2 \xofiller!SAEDRVT14_FILL2!x79180y6000 () ;
SAEDRVT14_FILL2 \xofiller!SAEDRVT14_FILL2!x87320y6000 () ;
SAEDRVT14_FILL2 \xofiller!SAEDRVT14_FILL2!x90280y6000 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x93240y6000 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x93980y6000 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x113220y6000 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x148000y6000 () ;
SAEDRVT14_FILL2 \xofiller!SAEDRVT14_FILL2!x179820y6000 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x182780y6000 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x183520y6000 () ;
SAEDRVT14_FILL2 \xofiller!SAEDRVT14_FILL2!x199060y6000 () ;
SAEDRVT14_FILL2 \xofiller!SAEDRVT14_FILL2!x202020y6000 () ;
SAEDRVT14_FILL2 \xofiller!SAEDRVT14_FILL2!x204980y6000 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x207940y6000 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x208680y6000 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x271580y6000 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x334480y6000 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x335220y6000 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x335960y6000 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x8880y12000 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x28120y12000 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x28860y12000 () ;
SAEDRVT14_FILL2 \xofiller!SAEDRVT14_FILL2!x35520y12000 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x159100y12000 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x165020y12000 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x215340y12000 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x216080y12000 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x216820y12000 () ;
SAEDRVT14_FILL2 \xofiller!SAEDRVT14_FILL2!x239020y12000 () ;
SAEDRVT14_FILL2 \xofiller!SAEDRVT14_FILL2!x241980y12000 () ;
SAEDRVT14_FILL2 \xofiller!SAEDRVT14_FILL2!x244940y12000 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x247900y12000 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x248640y12000 () ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x249380y12000 () ;
endmodule


