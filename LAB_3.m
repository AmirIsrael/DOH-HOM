clear all;
close all;
clc;

plate_info=[1,4358,0.112637363,328.0656312;
2,4338,0.225274725,326.615793;
3,4324,0.337912088,325.599021;
4,4321,0.450549451,325.3809385;
5,4297,0.563186813,323.6336887;
6,4273,0.675824176,321.8818089;
7,4264,0.788461538,321.2236525;
8,4250,0.901098901,320.1985439;
9,4252,1.013736264,320.3450859;
10,4229,1.126373626,318.6578764;
11,4222,1.239010989,318.1435153;
12,4196,1.351648352,316.2294847;
13,4197,1.464285714,316.303205;
14,4193,1.576923077,316.0082738;
15,4191,1.68956044,315.8607583;
16,4169,1.802197802,314.2358803;
17,4152,1.914835165,312.9775085;
18,4156,2.027472527,313.2738152;
19,4141,2.14010989,312.1619667;
20,4142,2.252747253,312.2361492;
21,4126,2.365384615,311.0482083;
22,4133,2.478021978,311.5682005;
23,4127,2.590659341,311.1225185;
24,4104,2.703296703,309.4112199;
25,4114,2.815934066,310.1558196;
26,4104,2.928571429,309.4112199;
27,4089,3.041208791,308.2927067;
28,4089,3.153846154,308.2927067;
29,4076,3.266483516,307.321755;
30,4071,3.379120879,306.9479215;
31,4070,3.491758242,306.8731287;
32,4059,3.604395604,306.0498325;
33,4060,3.717032967,306.1247213;
34,4039,3.82967033,304.5502175;
35,4050,3.942307692,305.37544;
36,4020,4.054945055,303.1223211;
37,4017,4.167582418,302.8965717;
38,4005,4.28021978,301.9927745;
39,3991,4.392857143,300.9367213;
40,3949,4.505494505,297.7579859;
41,3913,4.618131868,295.0205846;
42,3860,4.730769231,290.9687142;
43,3779,4.843406593,284.7249597;
44,3704,4.956043956,278.8869281;
45,3594,5.068681319,270.2222098;
46,3483,5.181318681,261.3504103;
47,3387,5.293956044,253.5688943;
48,3297,5.406593407,246.1782749;
49,3216,5.519230769,239.4445887;
50,3151,5.631868132,233.9827115;
51,3087,5.744505495,228.552477;
52,3041,5.857142857,224.616495;
53,3005,5.96978022,221.5164546;
54,2953,6.082417582,217.0073984;
55,2919,6.195054945,214.0388154;
56,2874,6.307692308,210.084515;
57,2843,6.42032967,207.3433636;
58,2807,6.532967033,204.1422683;
59,2774,6.645604396,201.190811;
60,2739,6.758241758,198.0422531;
61,2717,6.870879121,196.0534026;
62,2686,6.983516484,193.2379437;
63,2664,7.096153846,191.2305328;
64,2639,7.208791209,188.9398331;
65,2612,7.321428571,186.4543076;
66,2589,7.434065934,184.3273977;
67,2567,7.546703297,182.2845759;
68,2539,7.659340659,179.6725956;
69,2522,7.771978022,178.0800943;
70,2494,7.884615385,175.4460319;
71,2475,7.997252747,173.6506527;
72,2447,8.10989011,170.9928957;
73,2432,8.222527473,169.5631751;
74,2406,8.335164835,167.0750682;
75,2384,8.447802198,164.9597891;
76,2364,8.56043956,163.0287762;
77,2345,8.673076923,161.1871388;
78,2329,8.785714286,159.6308013;
79,2307,8.898351648,157.4825505;
80,2287,9.010989011,155.5211659;
81,2259,9.123626374,152.7615375;
82,2231,9.236263736,149.9856729;
83,2192,9.348901099,146.0916652;
84,2147,9.461538462,141.5576091;
85,2100,9.574175824,136.7737625;
86,2053,9.686813187,131.9389802;
87,2015,9.799450549,127.9915914;
88,1984,9.912087912,124.7451937;
89,1954,10.02472527,121.5805892;
90,1934,10.13736264,119.4580686;
91,1916,10.25,117.5389046;
92,1905,10.36263736,116.3618817;
93,1901,10.47527473,115.9330765;
94,1900,10.58791209,115.8258086;
95,1894,10.70054945,115.1816392;
96,1896,10.81318681,115.3964695;
97,1890,10.92582418,114.7516566;
98,1886,11.03846154,114.3212433;
99,1888,11.1510989,114.5365039;
100,1888,11.26373626,114.5365039;
101,1888,11.37637363,114.5365039;
102,1885,11.48901099,114.2135725;
103,1887,11.60164835,114.4288871;
104,1885,11.71428571,114.2135725;
105,1884,11.82692308,114.1058747;
106,1885,11.93956044,114.2135725;
107,1885,12.0521978,114.2135725;
108,1876,12.16483516,113.2433169;
109,1886,12.27747253,114.3212433;
110,1881,12.39010989,113.7826189;
111,1885,12.50274725,114.2135725;
112,1883,12.61538462,113.9981499;
113,1882,12.72802198,113.8903979;
114,1878,12.84065934,113.4591192;
115,1880,12.9532967,113.6748128;
116,1879,13.06593407,113.5669796;
117,1873,13.17857143,112.9194093;
118,1875,13.29120879,113.135375;
119,1874,13.40384615,113.0274058;
120,1875,13.51648352,113.135375;
121,1875,13.62912088,113.135375;
122,1872,13.74175824,112.8113856;
123,1875,13.8543956,113.135375;
124,1877,13.96703297,113.3512317;
125,1873,14.07967033,112.9194093;
126,1873,14.19230769,112.9194093;
127,1869,14.30494505,112.4871505;
128,1874,14.41758242,113.0274058;
129,1866,14.53021978,112.1626692;
130,1868,14.64285714,112.3790175;
131,1866,14.75549451,112.1626692;
132,1867,14.86813187,112.270857;
133,1870,14.98076923,112.5952562;
134,1867,15.09340659,112.270857;
135,1867,15.20604396,112.270857;
136,1863,15.31868132,111.837941;
137,1865,15.43131868,112.0544539;
138,1870,15.54395604,112.5952562;
139,1866,15.65659341,112.1626692;
140,1863,15.76923077,111.837941;
141,1865,15.88186813,112.0544539;
142,1865,15.99450549,112.0544539;
143,1865,16.10714286,112.0544539;
144,1867,16.21978022,112.270857;
145,1863,16.33241758,111.837941;
146,1862,16.44505495,111.7296433;
147,1862,16.55769231,111.7296433;
148,1866,16.67032967,112.1626692;
149,1856,16.78296703,111.0792786;
150,1862,16.8956044,111.7296433;
151,1860,17.00824176,111.5129654;
152,1860,17.12087912,111.5129654;
153,1858,17.23351648,111.2961772;
154,1855,17.34615385,110.9707878;
155,1857,17.45879121,111.1877417;
156,1853,17.57142857,110.7537233;
157,1854,17.68406593,110.8622694;
158,1851,17.7967033,110.5365479;
159,1851,17.90934066,110.5365479;
160,1851,18.02197802,110.5365479;
161,1843,18.13461538,109.6667345;
162,1831,18.24725275,108.3586587;
163,1821,18.35989011,107.265495;
164,1806,18.47252747,105.6204114;
165,1790,18.58516484,103.8585165;
166,1775,18.6978022,102.1999628;
167,1759,18.81043956,100.4235157;
168,1747,18.92307692,99.0861601;
169,1731,19.03571429,97.29624278;
170,1724,19.14835165,96.51069453;
171,1707,19.26098901,94.59663081;
172,1695,19.37362637,93.24009471;
173,1675,19.48626374,90.9690687;
174,1661,19.5989011,89.37171294;
175,1642,19.71153846,87.1936548;
176,1636,19.82417582,86.50337404;
177,1627,19.93681319,85.46570458;
178,1609,20.04945055,83.38219092;
179,1592,20.16208791,81.40428539;
180,1568,20.27472527,78.59486846;
181,1541,20.38736264,75.40986281;
182,1518,20.5,72.67584173;];

T=plate_info(:,4);
X=plate_info(:,3)+0.5;
DI=plate_info(:,2);
N=plate_info(:,1);
T_steel=T(5:1:39);
X_steel=X(5:1:39);
T_gra=T(50:1:85);
X_gra=X(50:1:85);
T_Al=T(98:1:156);
X_Al=X(98:1:156);
T_glass=T(161:1:178);
X_glass=X(161:1:178);

F_steel = fit(X_steel,T_steel,'poly1');

figure(1);
hold on;
grid on;
plot(X_steel,T_steel);
%xlim([0,0]);
%ylim([0,0]);
plot(F_steel);
%scatter(X,Y,'filled');
% errorbar(X_steel,T_steel,{0},{0},{0},{0},'o');
R_steel_sqr=(corr2(X_steel,T_steel)^2);
%title('');
%xlabel('');
%ylabel('');
%legend('');
hold off;

F_gra = fit(X_gra,T_gra,'poly1');

figure(2);
hold on;
grid on
plot(X_gra,T_gra);
%xlim([0,0]);
%ylim([0,0]);
plot(F_gra);
%scatter(X,Y,'filled');
% errorbar(T_kiol,DI_kiol,0,0,0,0,'o');
R_gra_sqr=(corr2(X_gra,T_gra)^2);
%title('');
%xlabel('');
%ylabel('');
%legend('');
hold off;


F_Al = fit(X_Al,T_Al,'poly1');

figure(3);
hold on;
grid on
plot(X_Al,T_Al);

%xlim([0,0]);
%ylim([0,0]);
plot(F_Al);
%scatter(X,Y,'filled');
% errorbar(T_kiol,DI_kiol,0,0,0,0,'o');
R_Al_sqr=(corr2(X_Al,T_Al)^2);
%title('');
%xlabel('');
%ylabel('');
%legend('');
hold off;


F_glass = fit(X_glass,T_glass,'poly1');

figure(4);
grid on
hold on;
plot(X_glass,T_glass);
%xlim([0,0]);
%ylim([0,0]);
plot(F_glass);
%scatter(X,Y,'filled');
% errorbar(T_kiol,DI_kiol,0,0,0,0,'o');
R_glass_sqr=(corr2(X_glass,T_glass)^2);
%title('');
%xlabel('');
%ylabel('');
%legend('');
hold off;



big_info=[1,3687
2,3679;
3,3623;
4,3550;
5,3446;
6,3345;
7,3244;
8,3148;
9,3127;
10,3043;
11,2967;
12,2902;
13,2827;
14,2766;
15,2710;
16,2651;
17,2600;
18,2545;
19,2495;
20,2449;
21,2406;
22,2362;
23,2344;
24,2294;
25,2264;
26,2223;
27,2193;
28,2161;
29,2125;
30,2092;
31,2059;
32,2034;
33,2004;
34,1977;
35,1948;
36,1930;
37,1918;
38,1896;
39,1867;
40,1852;
41,1833;
42,1808;
43,1794;
44,1772;
45,1752;
46,1743;
47,1718;
48,1709;
49,1688;
50,1673;
51,1659;
52,1648;
53,1640;
54,1627;
55,1616;
56,1603;
57,1592;
58,1580;
59,1570;
60,1562;
61,1547;
62,1537;
63,1529;
64,1520;
65,1513;
66,1505;
67,1501;
68,1493;
69,1484;
70,1475;
71,1466;
72,1459;
73,1453;
74,1447;
75,1440;
76,1432;
77,1426;
78,1419;
79,1414;
80,1410;
81,1408;
82,1402;
83,1397;
84,1395;
85,1381;
86,1384;
87,1375;
88,1372;
89,1368;
90,1362;
91,1359;
92,1357;
93,1349;
94,1348;
95,1343;
96,1344;
97,1337;
98,1335;
99,1330;
100,1331;
101,1326;
102,1324;
103,1321;
104,1318;
105,1312;
106,1309;
107,1307;
108,1308;
109,1306;
110,1301;
111,1298;
112,1297;
113,1294;
114,1291;
115,1289;
116,1287;
117,1287;
118,1283;
119,1280;
120,1280;
121,1279;
122,1277;
123,1274;
124,1275;
125,1271;
126,1270;
127,1271;
128,1271;
129,1266;
130,1266;
131,1261;
132,1262;
133,1263;
134,1256;
135,1263;
136,1256;
137,1262;
138,1258;
139,1256;
140,1257;
141,1255;
142,1255;
143,1253;
144,1251;
145,1253;
146,1250;
147,1248;
148,1244;
149,1248;
150,1251;
151,1245;
152,1247;
153,1243;
154,1246;
155,1243;
156,1244;
157,1243;
158,1243;
159,1242;
160,1241;
161,1241;
162,1240;
163,1238;
164,1239;
165,1238;
166,1238;
167,1234;
168,1236;
169,1235;
170,1235;
171,1236;
172,1232;
173,1231;
174,1235;
175,1231;
176,1231;
177,1232;
178,1232;
179,1234;
180,1232;
181,1229;
182,1230;
183,1230;
184,1234;
185,1230;
186,1231;
187,1233;
188,1231;
189,1232;
190,1230;
191,1234;
192,1231;
193,1237;
194,1240;
195,1238;
196,1237;
197,1240;
198,1241;
199,1240;
200,1245;
201,1245;
202,1247];


middle_info=[1,4260;
2,4166;
3,4068;
4,3971;
5,3889;
6,3781;
7,3696;
8,3617;
9,3542;
10,3477;
11,3412;
12,3356;
13,3289;
14,3239;
15,3178;
16,3125;
17,3081;
18,3029;
19,2970;
20,2926;
21,2884;
22,2844;
23,2800;
24,2756;
25,2719;
26,2681;
27,2646;
28,2613;
29,2576;
30,2545;
31,2509;
32,2479;
33,2451;
34,2425;
35,2387;
36,2366;
37,2332;
38,2308;
39,2285;
40,2260;
41,2235;
42,2213;
43,2186;
44,2169;
45,2142;
46,2123;
47,2104;
48,2084;
49,2061;
50,2043;
51,2021;
52,2002;
53,1985;
54,1970;
55,1952;
56,1939;
57,1927;
58,1900;
59,1889;
60,1871;
61,1861;
62,1844;
63,1835;
64,1816;
65,1807;
66,1795;
67,1779;
68,1766;
69,1754;
70,1747;
71,1737;
72,1725;
73,1717;
74,1704;
75,1697;
76,1687;
77,1684;
78,1672;
79,1665;
80,1660;
81,1654;
82,1644;
83,1633;
84,1630;
85,1619;
86,1615;
87,1606;
88,1602;
89,1595;
90,1591;
91,1581;
92,1580;
93,1573;
94,1567;
95,1558;
96,1558;
97,1551;
98,1547;
99,1544;
100,1540;
101,1537;
102,1534;
103,1530;
104,1524;
105,1520;
106,1517;
107,1511;
108,1514;
109,1510;
110,1504;
111,1504;
112,1502;
113,1496;
114,1492;
115,1493;
116,1492;
117,1489;
118,1484;
119,1484;
120,1482;
121,1482;
122,1472;
123,1471;];


small_info=[1,4541
2,4525;
3,4490;
4,4418;
5,4335;
6,4208;
7,4068;
8,3938;
9,3804;
10,3690;
11,3607;
12,3536;
13,3487;
14,3431;
15,3385;
16,3351;
17,3297;
18,3265;
19,3220;
20,3175;
21,3144;
22,3126;
23,3085;
24,3057;
25,3014;
26,2981;
27,2950;
28,2925;
29,2893;
30,2873;
31,2833;
32,2805;
33,2782;
34,2743;
35,2725;
36,2699;
37,2672;
38,2650;
39,2632;
40,2608;
41,2579;
42,2560;
43,2538;
44,2521;
45,2500;
46,2481;
47,2464;
48,2440;
49,2429;
50,2411;
51,2391;
52,2372;
53,2355;
54,2345;
55,2331;
56,2312;
57,2298;
58,2279;
59,2266;
60,2258;
61,2243;
62,2229;
63,2215;
64,2208;
65,2194;
66,2180;
67,2169;
68,2158;
69,2145;
70,2135;
71,2123;
72,2115;
73,2101;
74,2097;
75,2085;
76,2075;
77,2071;
78,2063;
79,2055;
80,2047;
81,2043;
82,2035;
83,2025;
84,2022;
85,2010;
86,2012;
87,2004;
88,1998;
89,1994;
90,1987;
91,1990;
92,1980;
93,1979;
94,1977;
95,1966;
96,1965;
97,1963;
98,1952;
99,1942;
100,1924;
101,1899;
102,1869;
103,1836;
104,1806;
105,1774;
106,1756;
107,1729];

T_big=(((big_info(:,2)-5.5846)/0.0225).^(1/1.9027))-273.15;
plot(big_info(:,1),T_big);

