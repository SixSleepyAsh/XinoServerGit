//Maya ASCII 2023 scene
//Name: grandma_maya_scene_02.ma
//Last modified: Thu, Oct 17, 2024 12:38:47 PM
//Codeset: UTF-8
requires maya "2023";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.2.1.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202211021031-847a9f9623";
fileInfo "osv" "Mac OS X 10.16";
fileInfo "UUID" "E433B00F-0F45-1121-D8A2-D2A44065847F";
createNode transform -s -n "persp";
	rename -uid "D7FC867B-AD43-75F6-EC31-B8802B4FB190";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.6676224125307808 7.2907559445048431 -53.663655618271434 ;
	setAttr ".r" -type "double3" 0.86164727266421604 3412.9999999960964 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "AB1C21CC-DC44-5918-B2A8-9FAA23E18AEF";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 65.277053028150831;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "CDFA2066-084F-76C1-C18F-F094ADCFBC6A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "D08C00DC-0F4C-D7F3-B06D-55BA18FDB52A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "80618DA9-1B43-203B-2AB1-BC9DE7104E43";
	setAttr ".t" -type "double3" 6.6779525339096431 6.2197236010312817 1000.7863143067946 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "76E1C551-BB4F-0E7A-0F5D-FD937B506A12";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 914.50073071658574;
	setAttr ".ow" 33.439717106658989;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 0 40.228817468749611 86.285583590208859 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "FD49DE82-9A4B-3EFF-5C90-B8B81577E694";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1025.1633223325434 3.2801925610205869 -9.1850098331296675 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "BCD86AC6-8547-646D-2089-8C9B9A926704";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1108.284350145206;
	setAttr ".ow" 53.775313784688066;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" -83.121027812662732 127.93018977028549 -196.36769649460936 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "imagePlane1";
	rename -uid "9CEF9E60-E94A-ADCD-12AF-32BE24DD9EBE";
	setAttr ".t" -type "double3" -83.121027812662732 127.93018977028549 -510.49223339272703 ;
	setAttr ".s" -type "double3" 12.244561765496671 12.244561765496671 12.244561765496671 ;
createNode imagePlane -n "imagePlaneShape1" -p "imagePlane1";
	rename -uid "5BA0DA92-144E-F022-2242-ABA131D6C4E9";
	setAttr -k off ".v";
	setAttr ".fc" 153;
	setAttr ".imn" -type "string" "/Users/somsan/Documents/DigiPen Documents/Fall 2024/PRJ302/Lost_Seraphim_p4v/Art Assets/Art_Source/Character/MC_Concept/character_turnaround_01.png";
	setAttr ".cov" -type "short2" 4000 2251 ;
	setAttr ".cg" -type "float3" 0.6631 0.6631 0.6631 ;
	setAttr ".dlc" no;
	setAttr ".w" 40;
	setAttr ".h" 22.509999999999998;
	setAttr ".cs" -type "string" "sRGB";
createNode transform -n "bounding_cube";
	rename -uid "B58775A9-A648-618D-4286-509A0070D350";
	setAttr ".t" -type "double3" 0 50 0 ;
	setAttr ".rp" -type "double3" 0 -50 0 ;
	setAttr ".sp" -type "double3" 0 -50 0 ;
createNode mesh -n "bounding_cubeShape" -p "bounding_cube";
	rename -uid "848FB8CE-EE4C-BE89-9366-6F9745830594";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "imagePlane2";
	rename -uid "3C6A79D4-C548-4D1A-3816-C984CD30857D";
	setAttr ".t" -type "double3" -494.54563517195538 127.93018977028549 0.8919519898244701 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".s" -type "double3" 12.244561765496671 12.244561765496671 12.244561765496671 ;
createNode imagePlane -n "imagePlaneShape2" -p "imagePlane2";
	rename -uid "92E062C2-8D48-7988-1B8B-2595AD258852";
	setAttr -k off ".v";
	setAttr ".fc" 153;
	setAttr ".imn" -type "string" "/Users/somsan/Documents/DigiPen Documents/Fall 2024/PRJ302/Lost_Seraphim_p4v/Art Assets/Art_Source/Character/MC_Concept/character_turnaround_01.png";
	setAttr ".cov" -type "short2" 4000 2251 ;
	setAttr ".cg" -type "float3" 0.6631 0.6631 0.6631 ;
	setAttr ".dlc" no;
	setAttr ".w" 40;
	setAttr ".h" 22.509999999999998;
	setAttr ".cs" -type "string" "sRGB";
createNode transform -n "pSphere1";
	rename -uid "5FD4DA93-3447-3602-4B34-4298F68A9837";
	setAttr ".t" -type "double3" 0 74.490777175762844 -1.5049702116519761 ;
	setAttr ".s" -type "double3" 28.253684908957496 22.916877907443986 26.370105941302157 ;
createNode mesh -n "pSphereShape1" -p "pSphere1";
	rename -uid "B51C3CEC-AC4F-9707-FD75-F2862F76B1EF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.44810850918292999 0.04999999888241291 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 152 ".pt[898:1049]" -type "float3"  -0.0033311252 0 0 -0.0033311252 
		0 0 -0.0033311252 0 0 -0.0033311252 0 0 -0.0033311252 0 0 -0.0033311252 0 0 -0.0033311252 
		0 0 -0.0033311252 0 0 -0.0033311252 0 0 -0.0033311252 0 0 -0.0033311252 0 0 -0.0033311252 
		0 0 -0.0033311252 0 0 -0.0033311252 0 0 0.0033311252 0 0 0.0033311252 0 0 0.0033311252 
		0 0 0.0033311252 0 0 0.0033311252 0 0 0.0033311252 0 0 0.0033311252 0 0 0.0033311252 
		0 0 0.0033311252 0 0 0.0033311252 0 0 0.0033311252 0 0 0.0033311252 0 0 0.0033311252 
		0 0 0.0033311252 0 0 -0.0084659243 -0.020763323 0 -0.010372089 -0.020763323 0 -0.005862602 
		-0.020763323 0 -0.0013560787 -0.020763323 0 -0.0023642788 -0.020763323 0 -0.0045637684 
		-0.020763323 0 -0.0058655562 -0.020763323 0 -0.0084684854 -0.020763323 0 -0.010373553 
		-0.020763323 0 -0.0013546025 -0.020763323 0 -0.00065783446 -0.020763323 0 -0.011070325 
		-0.020763323 0 -0.002370182 -0.020763323 0 -0.004548714 -0.020763323 0 0.0058350628 
		-0.020763323 0 0.0013274312 -0.020763323 0 0.002343012 -0.020763323 0 0.0045206342 
		-0.020763323 0 0.0084394887 -0.020763323 0 0.010347288 -0.020763323 0 0.01035189 
		-0.020763323 0 0.0084474506 -0.020763323 0 0.0058442624 -0.020763323 0 0.0013320328 
		-0.020763323 0 0.0045417193 -0.020763323 0 0.0023412085 -0.020763323 0 0.011047286 
		-0.020763323 0 0.00063204195 -0.020763323 0 -0.01106506 4.4408921e-16 0 -0.014180708 
		4.4408921e-16 0 -0.0068099098 4.4408921e-16 0 0.00055604544 4.4408921e-16 0 -0.0010918647 
		4.4408921e-16 0 -0.0046869535 4.4408921e-16 0 -0.0068147397 4.4408921e-16 0 -0.011069252 
		4.4408921e-16 0 -0.014183103 4.4408921e-16 0 0.00055846036 4.4408921e-16 0 0.0016973316 
		4.4408921e-16 0 -0.015321988 4.4408921e-16 0 -0.0011015132 4.4408921e-16 0 -0.004662347 
		4.4408921e-16 0 0.0067648971 4.4408921e-16 0 -0.00060287048 4.4408921e-16 0 0.0010571058 
		4.4408921e-16 0 0.0046164491 4.4408921e-16 0 0.011021853 4.4408921e-16 0 0.014140174 
		4.4408921e-16 0 0.014147693 4.4408921e-16 0 0.011034871 4.4408921e-16 0 0.0067799324 
		4.4408921e-16 0 -0.00059535285 4.4408921e-16 0 0.0046509118 4.4408921e-16 0 0.0010541563 
		4.4408921e-16 0 0.015284325 4.4408921e-16 0 -0.0017394925 4.4408921e-16 0 -0.011214268 
		4.4408921e-16 0 -0.015326442 4.4408921e-16 0 -0.0055981143 4.4408921e-16 0 0.0041238177 
		4.4408921e-16 0 0.0019488281 4.4408921e-16 0 -0.0027961372 4.4408921e-16 0 -0.0056044902 
		4.4408921e-16 0 -0.011219797 4.4408921e-16 0 -0.015329607 4.4408921e-16 0 0.0041270065 
		4.4408921e-16 0 0.0056301407 4.4408921e-16 0 -0.016832748 4.4408921e-16 0 0.0019360876 
		4.4408921e-16 0 -0.002763663 4.4408921e-16 0 0.0055387053 4.4408921e-16 0 -0.0041856212 
		4.4408921e-16 0 -0.0019947051 4.4408921e-16 0 0.0027030879 4.4408921e-16 0 0.011157244 
		4.4408921e-16 0 0.015272936 4.4408921e-16 0 0.01528286 4.4408921e-16 0 0.011174419 
		4.4408921e-16 0 0.0055585545 4.4408921e-16 0 -0.0041756895 4.4408921e-16 0 0.0027485718 
		4.4408921e-16 0 -0.0019985961 4.4408921e-16 0 0.016783046 4.4408921e-16 0 -0.0056857835 
		4.4408921e-16 0 -0.013420401 -0.022903206 0 -0.0063204067 -0.022903206 0 -0.018573651 
		-0.022903206 0 -0.0063204067 -0.022903206 0 -0.0063824165 -0.022903206 0 -0.0063204067 
		-0.022903206 0 0.005800799 -0.022903206 0 0.0030751694 -0.022903206 0 -0.0028710701 
		-0.022903206 0 -0.0063904049 -0.022903206 0 -0.0063204067 -0.022903206 0 -0.013427324 
		-0.022903206 0 -0.018577617 -0.022903206 0 0.0058047925 -0.022903206 0 0.0076884823 
		-0.022903206 0 -0.0063204067 -0.022903206 0 -0.0063204067 -0.022903206 0 -0.020461323 
		-0.022903206 0 0.0030592214 -0.022903206 0 -0.0028303706 -0.022903206 0 0.0063079614 
		-0.022903206 0 0.0063204067 -0.022903206 0 -0.0058782562 -0.022903206 0 -0.0031326674 
		-0.022903206 0 0.0027544557 -0.022903206 0 0.013348936 -0.022903206 0 0.0063204067 
		-0.022903206 0 0.018506611 -0.022903206 0 0.0063204067 -0.022903206 0 0.018519046 
		-0.022903206 0 0.013370465 -0.022903206 0 0.0063204067 -0.022903206 0 0.006332837 
		-0.022903206 0 -0.0058658174 -0.022903206 0 0.0028114568 -0.022903206 0 -0.003137541 
		-0.022903206 0 0.020399027 -0.022903206 0 0.0063204067 -0.022903206 0 0.0063204067 
		-0.022903206 0 -0.007758216 -0.022903206 0;
	setAttr ".dr" 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "9AFC85E0-1845-415E-3942-AAA4677FE8B9";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "2401D3AB-4543-22EE-4718-6A8DB0199EC9";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "5768874B-A04B-4CEE-E82A-F691088380DC";
createNode displayLayerManager -n "layerManager";
	rename -uid "FCDFA94A-8C4A-7762-5B25-6BA16E1A00AE";
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "980ADD6D-954B-D0AE-34B2-778A8D175783";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "096C817A-F84A-5C7F-410A-26AC2897ED8E";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "ADFBE3E2-4047-730A-A6BF-ED841E98D137";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "BF5402F3-5E4E-5812-9E4F-68861C921A5C";
	setAttr ".version" -type "string" "5.2.1.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "1AADE3D1-2946-60FB-17C9-A29637161977";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "A73A0CBF-914A-7664-3B1D-4482F5E5FE89";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "8C89AD07-B248-A02E-1CD6-A0B66E206B00";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode polyCube -n "polyCube1";
	rename -uid "BCAF5A53-0C48-9C4B-151C-56828CA5D621";
	setAttr ".w" 100;
	setAttr ".h" 100;
	setAttr ".d" 100;
	setAttr ".cuv" 4;
createNode displayLayer -n "layer1";
	rename -uid "CA929545-AF46-10FA-D311-D89287AC9C68";
	setAttr ".dt" 1;
	setAttr ".ufem" -type "stringArray" 0  ;
	setAttr ".do" 1;
createNode polySphere -n "polySphere1";
	rename -uid "0AB0EA6D-6540-8147-EA76-DC90AF229678";
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "84B7ECB0-784A-4F53-1595-FE9E69121FD6";
	setAttr ".ics" -type "componentList" 1 "f[360:379]";
	setAttr ".ix" -type "matrix" 28.253684908957496 0 0 0 0 22.916877907443986 0 0 0 0 26.370105941302157 0
		 0 74.490777175762844 -1.5049702116519761 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -6.3151907e-07 51.71497 -1.504971 ;
	setAttr ".rs" 268124742;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -4.4198516674515274 51.573899268318854 -5.6301658912741424 ;
	setAttr ".cbx" -type "double3" 4.4198504044133875 51.85604355949161 2.6202238961893931 ;
	setAttr ".raf" no;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "0DC7B861-DA48-5B89-5F7E-8EA481F7F96D";
	setAttr ".ics" -type "componentList" 1 "f[360:379]";
	setAttr ".ix" -type "matrix" 28.253684908957496 0 0 0 0 22.916877907443986 0 0 0 0 26.370105941302157 0
		 0 74.490777175762844 -1.5049702116519761 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -8.4202543e-07 50.097019 -1.5049708 ;
	setAttr ".rs" 171427407;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -4.41985208846424 49.955947812899993 -5.6301658912741424 ;
	setAttr ".cbx" -type "double3" 4.4198504044133875 50.238088006215634 2.6202242891345922 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak1";
	rename -uid "AD18322D-B643-6076-9937-20AFDAB5B110";
	setAttr ".uopa" yes;
	setAttr -s 77 ".tk";
	setAttr ".tk[21]" -type "float3" 0 -4.6566129e-09 1.4901161e-08 ;
	setAttr ".tk[22]" -type "float3" 0 -4.6566129e-09 2.2351742e-08 ;
	setAttr ".tk[23]" -type "float3" 0 -4.6566129e-09 2.2351742e-08 ;
	setAttr ".tk[24]" -type "float3" 0 -4.6566129e-09 2.2351742e-08 ;
	setAttr ".tk[25]" -type "float3" 0 -4.6566129e-09 2.2351742e-08 ;
	setAttr ".tk[26]" -type "float3" 0 -4.6566129e-09 2.2351742e-08 ;
	setAttr ".tk[27]" -type "float3" 0 -4.6566129e-09 1.4901161e-08 ;
	setAttr ".tk[41]" -type "float3" 0 -4.6566129e-09 1.4901161e-08 ;
	setAttr ".tk[42]" -type "float3" 0 -4.6566129e-09 2.2351742e-08 ;
	setAttr ".tk[43]" -type "float3" 0 -4.6566129e-09 2.2351742e-08 ;
	setAttr ".tk[44]" -type "float3" 0 -4.6566129e-09 2.2351742e-08 ;
	setAttr ".tk[45]" -type "float3" 0 -4.6566129e-09 2.2351742e-08 ;
	setAttr ".tk[46]" -type "float3" 0 -4.6566129e-09 2.2351742e-08 ;
	setAttr ".tk[47]" -type "float3" 0 -4.6566129e-09 1.4901161e-08 ;
	setAttr ".tk[61]" -type "float3" 0 -4.6566129e-09 1.4901161e-08 ;
	setAttr ".tk[62]" -type "float3" 0 -4.6566129e-09 2.2351742e-08 ;
	setAttr ".tk[63]" -type "float3" 0 -4.6566129e-09 2.2351742e-08 ;
	setAttr ".tk[64]" -type "float3" 0 -4.6566129e-09 2.2351742e-08 ;
	setAttr ".tk[65]" -type "float3" 0 -4.6566129e-09 2.2351742e-08 ;
	setAttr ".tk[66]" -type "float3" 0 -4.6566129e-09 2.2351742e-08 ;
	setAttr ".tk[67]" -type "float3" 0 -4.6566129e-09 1.4901161e-08 ;
	setAttr ".tk[81]" -type "float3" 0 -4.6566129e-09 1.4901161e-08 ;
	setAttr ".tk[82]" -type "float3" 0 -4.6566129e-09 2.2351742e-08 ;
	setAttr ".tk[83]" -type "float3" 0 -4.6566129e-09 2.2351742e-08 ;
	setAttr ".tk[84]" -type "float3" 0 -4.6566129e-09 2.2351742e-08 ;
	setAttr ".tk[85]" -type "float3" 0 -4.6566129e-09 2.2351742e-08 ;
	setAttr ".tk[86]" -type "float3" 0 -4.6566129e-09 2.2351742e-08 ;
	setAttr ".tk[87]" -type "float3" 0 -4.6566129e-09 1.4901161e-08 ;
	setAttr ".tk[101]" -type "float3" 0 -4.6566129e-09 1.4901161e-08 ;
	setAttr ".tk[102]" -type "float3" 0 -4.6566129e-09 2.2351742e-08 ;
	setAttr ".tk[103]" -type "float3" 0 -4.6566129e-09 2.2351742e-08 ;
	setAttr ".tk[104]" -type "float3" 0 -4.6566129e-09 2.2351742e-08 ;
	setAttr ".tk[105]" -type "float3" 0 -4.6566129e-09 2.2351742e-08 ;
	setAttr ".tk[106]" -type "float3" 0 -4.6566129e-09 2.2351742e-08 ;
	setAttr ".tk[107]" -type "float3" 0 -4.6566129e-09 1.4901161e-08 ;
	setAttr ".tk[121]" -type "float3" 0 -4.6566129e-09 1.4901161e-08 ;
	setAttr ".tk[122]" -type "float3" 0 -4.6566129e-09 2.2351742e-08 ;
	setAttr ".tk[123]" -type "float3" 0 -4.6566129e-09 2.2351742e-08 ;
	setAttr ".tk[124]" -type "float3" 0 -4.6566129e-09 2.2351742e-08 ;
	setAttr ".tk[125]" -type "float3" 0 -4.6566129e-09 2.2351742e-08 ;
	setAttr ".tk[126]" -type "float3" 0 -4.6566129e-09 2.2351742e-08 ;
	setAttr ".tk[127]" -type "float3" 0 -4.6566129e-09 1.4901161e-08 ;
	setAttr ".tk[141]" -type "float3" 0 -4.6566129e-09 1.4901161e-08 ;
	setAttr ".tk[142]" -type "float3" 0 -4.6566129e-09 1.4901161e-08 ;
	setAttr ".tk[143]" -type "float3" 0 -4.6566129e-09 1.4901161e-08 ;
	setAttr ".tk[144]" -type "float3" 0 -4.6566129e-09 1.4901161e-08 ;
	setAttr ".tk[145]" -type "float3" 0 -4.6566129e-09 1.4901161e-08 ;
	setAttr ".tk[146]" -type "float3" 0 -4.6566129e-09 1.4901161e-08 ;
	setAttr ".tk[147]" -type "float3" 0 -4.6566129e-09 1.4901161e-08 ;
	setAttr ".tk[161]" -type "float3" 0 -9.3132257e-10 0 ;
	setAttr ".tk[162]" -type "float3" 0 -9.3132257e-10 0 ;
	setAttr ".tk[163]" -type "float3" 0 -9.3132257e-10 0 ;
	setAttr ".tk[164]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[165]" -type "float3" 0 -9.3132257e-10 0 ;
	setAttr ".tk[166]" -type "float3" 0 -9.3132257e-10 0 ;
	setAttr ".tk[167]" -type "float3" 0 -9.3132257e-10 0 ;
	setAttr ".tk[381]" -type "float3" 0 -0.07060086 0 ;
	setAttr ".tk[382]" -type "float3" 0 -0.07060086 0 ;
	setAttr ".tk[383]" -type "float3" 0 -0.07060086 0 ;
	setAttr ".tk[384]" -type "float3" 0 -0.07060086 0 ;
	setAttr ".tk[385]" -type "float3" 0 -0.07060086 0 ;
	setAttr ".tk[386]" -type "float3" 0 -0.07060086 0 ;
	setAttr ".tk[387]" -type "float3" 0 -0.07060086 0 ;
	setAttr ".tk[388]" -type "float3" 0 -0.07060086 0 ;
	setAttr ".tk[389]" -type "float3" 0 -0.07060086 0 ;
	setAttr ".tk[390]" -type "float3" 0 -0.07060086 0 ;
	setAttr ".tk[391]" -type "float3" 0 -0.07060086 0 ;
	setAttr ".tk[392]" -type "float3" 0 -0.07060086 0 ;
	setAttr ".tk[393]" -type "float3" 0 -0.07060086 0 ;
	setAttr ".tk[394]" -type "float3" 0 -0.07060086 0 ;
	setAttr ".tk[395]" -type "float3" 0 -0.07060086 0 ;
	setAttr ".tk[396]" -type "float3" 0 -0.07060086 0 ;
	setAttr ".tk[397]" -type "float3" 0 -0.07060086 0 ;
	setAttr ".tk[398]" -type "float3" 0 -0.07060086 0 ;
	setAttr ".tk[399]" -type "float3" 0 -0.07060086 0 ;
	setAttr ".tk[400]" -type "float3" 0 -0.07060086 0 ;
	setAttr ".tk[401]" -type "float3" 0 -0.07060086 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "146A9C79-AB47-19B2-1EF6-F1857665D85D";
	setAttr ".ics" -type "componentList" 1 "f[360:379]";
	setAttr ".ix" -type "matrix" 28.253684908957496 0 0 0 0 22.916877907443986 0 0 0 0 26.370105941302157 0
		 0 74.490777175762844 -1.5049702116519761 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.2630381e-06 48.059952 -1.5049729 ;
	setAttr ".rs" 758919782;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -9.2839584758936908 48.059948557457112 -9.3698728996686143 ;
	setAttr ".cbx" -type "double3" 9.2839559498174111 48.059954021266577 6.3599269751318719 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak2";
	rename -uid "E6CEE04F-AC46-8AEA-42EB-A98C4B7B73C3";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk[401:421]" -type "float3"  0.16373225 -0.095044851 -0.043823678
		 0.13927902 -0.095044874 -0.083357424 3.2797832e-08 -0.082733832 -5.9700255e-08 0.10119209
		 -0.095044859 -0.11473159 0.05319988 -0.095044911 -0.13487515 3.2797832e-08 -0.095044881
		 -0.14181615 -0.053199783 -0.095044918 -0.1348751 -0.10119209 -0.095044859 -0.11473163
		 -0.13927889 -0.095044881 -0.083357438 -0.16373219 -0.095044851 -0.043823678 -0.17215827
		 -0.095044889 -3.7097038e-08 -0.16373219 -0.095044844 0.043823544 -0.13927889 -0.095044829
		 0.083357349 -0.10119207 -0.095044822 0.11473145 -0.053199776 -0.095044792 0.13487485
		 2.7667124e-08 -0.095044792 0.14181598 0.053199865 -0.095044792 0.13487485 0.10119209
		 -0.095044822 0.11473145 0.13927892 -0.095044851 0.083357364 0.16373222 -0.095044866
		 0.043823507 0.17215827 -0.095044889 -3.7097038e-08;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "C298ED40-6844-0F32-F8D1-D88155392ED2";
	setAttr ".ics" -type "componentList" 1 "f[360:379]";
	setAttr ".ix" -type "matrix" 28.253684908957496 0 0 0 0 22.916877907443986 0 0 0 0 26.370105941302157 0
		 0 74.490777175762844 -1.5049702116519761 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.2630381e-06 40.326996 -1.5049729 ;
	setAttr ".rs" 352136888;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -9.2839584758936908 40.32699169815578 -9.3698736855590141 ;
	setAttr ".cbx" -type "double3" 9.2839559498174111 40.326997161965245 6.3599277610222709 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak3";
	rename -uid "C7970AC5-C94A-07CE-711E-6896FE033936";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk[421:441]" -type "float3"  0 -0.33743507 0 0 -0.33743507
		 0 0 -0.33743507 0 0 -0.33743507 0 0 -0.33743507 0 0 -0.33743507 0 0 -0.33743507 0
		 0 -0.33743507 0 0 -0.33743507 0 0 -0.33743507 0 0 -0.33743507 0 0 -0.33743507 0 0
		 -0.33743507 0 0 -0.33743507 0 0 -0.33743507 0 0 -0.33743507 0 0 -0.33743507 0 0 -0.33743507
		 0 0 -0.33743507 0 0 -0.33743507 0 0 -0.33743507 0;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "9CC79E62-034E-8CAF-F479-4BAE91C5064E";
	setAttr ".ics" -type "componentList" 1 "f[360:379]";
	setAttr ".ix" -type "matrix" 28.253684908957496 0 0 0 0 22.916877907443986 0 0 0 0 26.370105941302157 0
		 0 74.490777175762844 -1.5049702116519761 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.2630381e-06 32.237137 -0.19631986 ;
	setAttr ".rs" 1850855448;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -9.2839584758936908 32.237136072491019 -5.5269745524780429 ;
	setAttr ".cbx" -type "double3" 9.2839559498174111 32.237138804395755 5.1343348278730243 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak4";
	rename -uid "29B09FB8-1C42-9239-FA58-599B0D774EDC";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk[441:461]" -type "float3"  0 -0.35300872 0.079323858
		 0 -0.35300872 0.10611427 0 -0.35300872 0.049626391 0 -0.35300872 0.1273753 0 -0.35300872
		 0.14102575 0 -0.35300872 0.14572941 0 -0.35300872 0.14102571 0 -0.35300872 0.1273753
		 0 -0.35300872 0.10611427 0 -0.35300872 0.079323858 0 -0.35300872 0.049626384 0 -0.35300872
		 0.01992894 0 -0.35300872 -0.0068615233 0 -0.35300872 -0.02812252 0 -0.35300872 -0.041772902
		 0 -0.35300872 -0.04647661 0 -0.35300872 -0.041772902 0 -0.35300872 -0.02812252 0
		 -0.35300872 -0.0068615233 0 -0.35300872 0.019928947 0 -0.35300872 0.049626384;
createNode polyTweak -n "polyTweak5";
	rename -uid "50FC4491-E648-B547-63AA-7FBC76E927D6";
	setAttr ".uopa" yes;
	setAttr -s 81 ".tk[401:481]" -type "float3"  0 0.009158168 0 0 0.009158168
		 0 0 0.009158168 0 0 0.009158168 0 0 0.009158168 0 0 0.009158168 0 0 0.009158168 0
		 0 0.009158168 0 0 0.009158168 0 0 0.009158168 0 0 0.009158168 0 0 0.009158168 0 0
		 0.009158168 0 0 0.009158168 0 0 0.009158168 0 0 0.009158168 0 0 0.009158168 0 0 0.009158168
		 0 0 0.009158168 0 0 0.009158168 0 -0.017361695 0 0 -0.014768738 0 0 -0.010730119
		 0 0 -0.0056411587 0 0 -4.3056287e-09 0 0 0.0056411484 0 0 0.010730107 0 0 0.014768725
		 0 0 0.017361678 0 0 0.018255154 0 0 0.017361678 0 0 0.014768725 0 0 0.010730107 0
		 0 0.0056411475 0 0 -3.761583e-09 0 0 -0.0056411568 0 0 -0.010730112 0 0 -0.01476873
		 0 0 -0.017361684 0 0 -0.018255154 0 0 -0.10764249 0.032053597 0 -0.091566168 0.032053597
		 0 -0.066526741 0.032053597 0 -0.034975186 0.032053597 0 -2.6694902e-08 0.032053597
		 0 0.034975123 0.032053597 0 0.066526659 0.032053597 0 0.091566101 0.032053597 0 0.1076424
		 0.032053597 0 0.11318195 0.032053597 0 0.1076424 0.032053597 0 0.091566101 0.032053597
		 0 0.066526644 0.032053597 0 0.034975123 0.032053597 0 -2.3321821e-08 0.032053597
		 0 -0.034975175 0.032053597 0 -0.066526681 0.032053597 0 -0.091566116 0.032053597
		 0 -0.10764242 0.032053597 0 -0.11318195 0.032053597 0 -0.072919041 -0.10514383 0.039388426
		 -0.062028721 -0.10514383 0.046432104 -1.3232905e-19 -0.1051442 0.031580441 -0.045066502
		 -0.10514383 0.052021999 -0.023692871 -0.10514383 0.05561094 -1.8083638e-08 -0.10514383
		 0.056847602 0.023692824 -0.10514383 0.05561094 0.045066454 -0.10514383 0.052021999
		 0.062028646 -0.10514383 0.046432104 0.072919048 -0.10514383 0.039388426 0.076671645
		 -0.10514383 0.031580437 0.072919048 -0.10514383 0.023772452 0.062028646 -0.10514383
		 0.016728772 0.045066439 -0.10514383 0.011138881 0.02369282 -0.10514383 0.0075499532
		 -1.5798646e-08 -0.10514383 0.0063132797 -0.023692859 -0.10514383 0.0075499532 -0.045066476
		 -0.10514383 0.011138881 -0.062028661 -0.10514383 0.016728772 -0.072919063 -0.10514383
		 0.023772456 -0.076671645 -0.10514383 0.031580437;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "C6FF6AD6-D64C-75D1-FF01-ED90CC67DF37";
	setAttr ".dc" -type "componentList" 1 "f[360:379]";
createNode polyCloseBorder -n "polyCloseBorder1";
	rename -uid "23199A37-D947-A717-F5B3-8C8678558C38";
	setAttr ".ics" -type "componentList" 19 "e[922]" "e[924]" "e[926]" "e[928]" "e[930]" "e[932]" "e[934]" "e[936]" "e[938]" "e[940]" "e[942]" "e[944]" "e[946]" "e[948]" "e[950]" "e[952]" "e[954]" "e[956]" "e[958:959]";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "E48CA536-EB4B-7C57-C9E5-848265225473";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1120\n            -height 670\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n"
		+ "            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 1120\n            -height 668\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n"
		+ "            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n"
		+ "            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1120\n            -height 668\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n"
		+ "            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 2254\n            -height 1428\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n"
		+ "            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n"
		+ "            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n"
		+ "            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n"
		+ "            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n"
		+ "                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n"
		+ "                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n"
		+ "                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n"
		+ "                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n"
		+ "                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n"
		+ "                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2254\\n    -height 1428\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2254\\n    -height 1428\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 100 -size 100 -divisions 10 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "8C2C1B89-BE41-4891-7ADF-40A5EFB479B2";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polySplit -n "polySplit1";
	rename -uid "92CEDEA8-C145-EF08-F31F-6D9B8CBE577C";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147482720 -2147482700;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "E52DCC64-DD40-5636-1A52-E48A0FA6C6CC";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147482718 -2147482702;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit3";
	rename -uid "10D18E2E-1141-F884-BA80-6BAC028C21B6";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147482716 -2147482704;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit4";
	rename -uid "DAB268A5-8F49-56FA-9386-B0A61D97E13D";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147482714 -2147482706;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit5";
	rename -uid "8CEF75D0-8E43-61A3-9002-0187817EEE25";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147482722 -2147482698;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit6";
	rename -uid "85C3AD7E-EC4F-DA84-FDD0-33AB090DFA8F";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147482724 -2147482696;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit7";
	rename -uid "5CFFFF4A-7045-F785-F913-4EAD46DBA47F";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147482726 -2147482694;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit8";
	rename -uid "690370AF-1749-5943-302B-F69A881A4CA4";
	setAttr -s 9 ".e[0:8]"  1 0.5 0.5 0.5 0.5 0.5 0.5 0.5 1;
	setAttr -s 9 ".d[0:8]"  -2147482690 -2147482682 -2147482683 -2147482684 -2147482688 -2147482687 
		-2147482686 -2147482685 -2147482710;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "FB0155D1-864C-F370-F93A-D18302C2FE3A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[840:841]" "e[843]" "e[845]" "e[847]" "e[849]" "e[851]" "e[853]" "e[855]" "e[857]" "e[859]" "e[861]" "e[863]" "e[865]" "e[867]" "e[869]" "e[871]" "e[873]" "e[875]" "e[877]";
	setAttr ".ix" -type "matrix" 28.253684908957496 0 0 0 0 22.916877907443986 0 0 0 0 26.370105941302157 0
		 0 74.490777175762844 -1.5049702116519761 1;
	setAttr ".wt" 0.34464830160140991;
	setAttr ".re" 845;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing2";
	rename -uid "FE5F4EAD-0141-201F-74D1-3CA674A9FC20";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[880:881]" "e[883]" "e[885]" "e[887]" "e[889]" "e[891]" "e[893]" "e[895]" "e[897]" "e[899]" "e[901]" "e[903]" "e[905]" "e[907]" "e[909]" "e[911]" "e[913]" "e[915]" "e[917]";
	setAttr ".ix" -type "matrix" 28.253684908957496 0 0 0 0 22.916877907443986 0 0 0 0 26.370105941302157 0
		 0 74.490777175762844 -1.5049702116519761 1;
	setAttr ".wt" 0.57158017158508301;
	setAttr ".dr" no;
	setAttr ".re" 885;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "90B15F7A-F246-D6F4-F37F-918CC0002EAD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[800:801]" "e[803]" "e[805]" "e[807]" "e[809]" "e[811]" "e[813]" "e[815]" "e[817]" "e[819]" "e[821]" "e[823]" "e[825]" "e[827]" "e[829]" "e[831]" "e[833]" "e[835]" "e[837]";
	setAttr ".ix" -type "matrix" 28.253684908957496 0 0 0 0 22.916877907443986 0 0 0 0 26.370105941302157 0
		 0 74.490777175762844 -1.5049702116519761 1;
	setAttr ".wt" 0.5343090295791626;
	setAttr ".dr" no;
	setAttr ".re" 801;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak6";
	rename -uid "359C8C88-5F41-DF6F-2EFA-54AE442FA325";
	setAttr ".uopa" yes;
	setAttr -s 127 ".tk[401:527]" -type "float3"  -0.014221465 0 0.10102664
		 -0.0097430674 0 0.1182191 -0.0027678083 0 0.13186304 0.0060215332 0 0.14062306 0
		 0 0.14364149 -0.0060215439 0 0.14062309 0.002767799 0 0.13186304 0.0097430497 0 0.1182191
		 0.014221443 0 0.10102662 0.015764602 0 0.081968732 0.014221443 0 0.06291078 0.0097430497
		 0 0.045718379 0.0027677955 0 0.032074448 -0.0060215453 0 0.023314506 0 0 0.020295983
		 0.0060215374 0 0.023314506 -0.0027677955 0 0.032074448 -0.0097430497 0 0.045718379
		 -0.014221447 0 0.062910795 -0.01576459 0 0.081968732 0 0.07902503 0.048758581 0 0.07902503
		 0.060768075 0 0.07902503 0.070298873 0 0.07902503 0.076418042 0 0.07902503 0.078526571
		 0 0.07902503 0.076418042 0 0.07902503 0.070298873 0 0.07902503 0.060768075 0 0.07902503
		 0.048758581 0 0.07902503 0.035445936 0 0.07902503 0.022133283 0 0.07902503 0.010123769
		 0 0.07902503 0.0005929675 0 0.07902503 -0.0055261701 0 0.07902503 -0.0076347161 0
		 0.07902503 -0.0055261701 0 0.07902503 0.0005929675 0 0.07902503 0.010123769 0 0.07902503
		 0.022133287 0 0.07902503 0.035445936 0 0.035688736 -0.0022153724 0 0.035688736 -0.0022153724
		 0 0.035688736 -0.0022153724 0 0.035688736 -0.0022153724 0 0.035688736 -0.0022153724
		 0 0.035688736 -0.0022153724 0 0.035688736 -0.0022153724 0 0.035688736 -0.0022153724
		 0 0.035688736 -0.0022153724 0 0.035688736 -0.0022153724 0 0.035688736 -0.0022153724
		 0 0.035688736 -0.0022153724 0 0.035688736 -0.0022153724 0 0.035688736 -0.0022153724
		 0 0.035688736 -0.0022153724 0 0.035688736 -0.0022153724 0 0.035688736 -0.0022153724
		 0 0.035688736 -0.0022153724 0 0.035688736 -0.0022153724 0 0.035688736 -0.0022153724
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0.097862251 0 0 0.10004826 0 0 0.097862221 0 0 0.091518149 0 0 0.08163707 0 0 0.069186211
		 0 0 0.055384271 0 0 0.041582383 0 0 0.029131493 0 0 0.019250419 0 0 0.012906395 0
		 0 0.01072035 0 0 0.012906395 0 0 0.019250419 0 0 0.029131493 0 0 0.041582391 0 0
		 0.055384271 0 0 0.069186211 0 0 0.08163707 0 0 0.091518149 0 0.086672612 -0.0022153724
		 0 0.086672612 -0.0022153724 0 0.086672612 -0.0022153724 0 0.086672612 -0.0022153724
		 0 0.086672612 -0.0022153724 0 0.086672612 -0.0022153724 0 0.086672612 -0.0022153724
		 0 0.086672612 -0.0022153724 0 0.086672612 -0.0022153724 0 0.086672612 -0.0022153724
		 0 0.086672612 -0.0022153724 0 0.086672612 -0.0022153724 0 0.086672612 -0.0022153724
		 0 0.086672612 -0.0022153724 0 0.086672612 -0.0022153724 0 0.086672612 -0.0022153724
		 0 0.086672612 -0.0022153724 0 0.086672612 -0.0022153724 0 0.086672612 -0.0022153724
		 0 0.086672612 -0.0022153724;
createNode polySplitRing -n "polySplitRing4";
	rename -uid "CD53C1B1-194E-6DD7-1456-3CA84B76A844";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[800:801]" "e[803]" "e[805]" "e[807]" "e[809]" "e[811]" "e[813]" "e[815]" "e[817]" "e[819]" "e[821]" "e[823]" "e[825]" "e[827]" "e[829]" "e[831]" "e[833]" "e[835]" "e[837]";
	setAttr ".ix" -type "matrix" 28.253684908957496 0 0 0 0 22.916877907443986 0 0 0 0 26.370105941302157 0
		 0 74.490777175762844 -1.5049702116519761 1;
	setAttr ".wt" 0.53566890954971313;
	setAttr ".re" 837;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak7";
	rename -uid "23BFC955-6643-E444-D45D-AB92FEA1BE5F";
	setAttr ".uopa" yes;
	setAttr -s 80 ".tk";
	setAttr ".tk[0]" -type "float3" -0.0572122 0 0.031915054 ;
	setAttr ".tk[1]" -type "float3" -0.048667576 0 0.041121341 ;
	setAttr ".tk[2]" -type "float3" -0.035359088 0 0.048427597 ;
	setAttr ".tk[3]" -type "float3" -0.018589377 0 0.053118549 ;
	setAttr ".tk[4]" -type "float3" -1.7190583e-08 0 0.054734752 ;
	setAttr ".tk[5]" -type "float3" 0.018589338 0 0.053118534 ;
	setAttr ".tk[6]" -type "float3" 0.035359029 0 0.048427582 ;
	setAttr ".tk[7]" -type "float3" 0.048667561 0 0.041121334 ;
	setAttr ".tk[8]" -type "float3" 0.057212107 0 0.031915054 ;
	setAttr ".tk[9]" -type "float3" 0.060156424 0 0.021709725 ;
	setAttr ".tk[10]" -type "float3" 0.057212107 0 0.011504403 ;
	setAttr ".tk[11]" -type "float3" 0.048667561 0 0.0022980552 ;
	setAttr ".tk[12]" -type "float3" 0.035359025 0 -0.0050080996 ;
	setAttr ".tk[13]" -type "float3" 0.018589336 0 -0.0096990019 ;
	setAttr ".tk[14]" -type "float3" -1.5397788e-08 0 -0.011315299 ;
	setAttr ".tk[15]" -type "float3" -0.018589363 0 -0.0096990019 ;
	setAttr ".tk[16]" -type "float3" -0.035359062 0 -0.0050080847 ;
	setAttr ".tk[17]" -type "float3" -0.048667561 0 0.0022980701 ;
	setAttr ".tk[18]" -type "float3" -0.057212159 0 0.011504411 ;
	setAttr ".tk[19]" -type "float3" -0.060156424 0 0.021709725 ;
	setAttr ".tk[381]" -type "float3" -0.0572122 0.0017381478 0.047406342 ;
	setAttr ".tk[382]" -type "float3" -0.048667576 0.0017381478 0.056612726 ;
	setAttr ".tk[383]" -type "float3" -0.035359088 0.0017381478 0.063918963 ;
	setAttr ".tk[384]" -type "float3" -0.018589377 0.0017381478 0.068609677 ;
	setAttr ".tk[385]" -type "float3" -1.7190583e-08 0.0017381478 0.070226043 ;
	setAttr ".tk[386]" -type "float3" 0.018589338 0.0017381478 0.068609662 ;
	setAttr ".tk[387]" -type "float3" 0.035359029 0.0017381478 0.063918918 ;
	setAttr ".tk[388]" -type "float3" 0.048667561 0.0017381478 0.056612711 ;
	setAttr ".tk[389]" -type "float3" 0.057212107 0.0017381478 0.047406342 ;
	setAttr ".tk[390]" -type "float3" 0.060156424 0.0017381478 0.037201133 ;
	setAttr ".tk[391]" -type "float3" 0.057212107 0.0017381478 0.026995741 ;
	setAttr ".tk[392]" -type "float3" 0.048667561 0.0017381478 0.01778942 ;
	setAttr ".tk[393]" -type "float3" 0.035359025 0.0017381478 0.010483261 ;
	setAttr ".tk[394]" -type "float3" 0.018589336 0.0017381478 0.0057923794 ;
	setAttr ".tk[395]" -type "float3" -1.5397788e-08 0.0017381478 0.0041759964 ;
	setAttr ".tk[396]" -type "float3" -0.018589363 0.0017381478 0.0057923794 ;
	setAttr ".tk[397]" -type "float3" -0.035359062 0.0017381478 0.010483223 ;
	setAttr ".tk[398]" -type "float3" -0.048667561 0.0017381478 0.017789423 ;
	setAttr ".tk[399]" -type "float3" -0.057212159 0.0017381478 0.026995748 ;
	setAttr ".tk[400]" -type "float3" -0.060156424 0.0017381478 0.037201133 ;
	setAttr ".tk[401]" -type "float3" 0 -0.033024803 -0.013010617 ;
	setAttr ".tk[402]" -type "float3" 0 -0.033024803 -0.015208961 ;
	setAttr ".tk[403]" -type "float3" 0 -0.033024803 -0.016953578 ;
	setAttr ".tk[404]" -type "float3" 0 -0.033024803 -0.018073697 ;
	setAttr ".tk[405]" -type "float3" 0 -0.033024803 -0.018459663 ;
	setAttr ".tk[406]" -type "float3" 0 -0.033024803 -0.018073693 ;
	setAttr ".tk[407]" -type "float3" 0 -0.033024803 -0.016953578 ;
	setAttr ".tk[408]" -type "float3" 0 -0.033024803 -0.015208961 ;
	setAttr ".tk[409]" -type "float3" 0 -0.033024803 -0.013010617 ;
	setAttr ".tk[410]" -type "float3" 0 -0.033024803 -0.01057373 ;
	setAttr ".tk[411]" -type "float3" 0 -0.033024803 -0.0081368424 ;
	setAttr ".tk[412]" -type "float3" 0 -0.033024803 -0.0059384988 ;
	setAttr ".tk[413]" -type "float3" 0 -0.033024803 -0.004193882 ;
	setAttr ".tk[414]" -type "float3" 0 -0.033024803 -0.0030737713 ;
	setAttr ".tk[415]" -type "float3" 0 -0.033024803 -0.0026878014 ;
	setAttr ".tk[416]" -type "float3" 0 -0.033024803 -0.0030737713 ;
	setAttr ".tk[417]" -type "float3" 0 -0.033024803 -0.004193882 ;
	setAttr ".tk[418]" -type "float3" 0 -0.033024803 -0.0059384988 ;
	setAttr ".tk[419]" -type "float3" 0 -0.033024803 -0.0081368452 ;
	setAttr ".tk[420]" -type "float3" 0 -0.033024803 -0.01057373 ;
	setAttr ".tk[528]" -type "float3" 0 0.010428886 0.028259654 ;
	setAttr ".tk[529]" -type "float3" 0 0.010428886 0.026956791 ;
	setAttr ".tk[530]" -type "float3" 0 0.010428886 0.026120316 ;
	setAttr ".tk[531]" -type "float3" 0 0.010428886 0.025832064 ;
	setAttr ".tk[532]" -type "float3" 0 0.010428886 0.02612032 ;
	setAttr ".tk[533]" -type "float3" 0 0.010428886 0.026956795 ;
	setAttr ".tk[534]" -type "float3" 0 0.010428886 0.028259654 ;
	setAttr ".tk[535]" -type "float3" 0 0.010428886 0.029901335 ;
	setAttr ".tk[536]" -type "float3" 0 0.010428886 0.031721201 ;
	setAttr ".tk[537]" -type "float3" 0 0.010428886 0.033541024 ;
	setAttr ".tk[538]" -type "float3" 0 0.010428886 0.035182733 ;
	setAttr ".tk[539]" -type "float3" 0 0.010428886 0.036485605 ;
	setAttr ".tk[540]" -type "float3" 0 0.010428886 0.037322089 ;
	setAttr ".tk[541]" -type "float3" 0 0.010428886 0.03761033 ;
	setAttr ".tk[542]" -type "float3" 0 0.010428886 0.037322089 ;
	setAttr ".tk[543]" -type "float3" 0 0.010428886 0.036485605 ;
	setAttr ".tk[544]" -type "float3" 0 0.010428886 0.035182733 ;
	setAttr ".tk[545]" -type "float3" 0 0.010428886 0.033541024 ;
	setAttr ".tk[546]" -type "float3" 0 0.010428886 0.031721201 ;
	setAttr ".tk[547]" -type "float3" 0 0.010428886 0.029901335 ;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "9B1ABE29-6043-0FE8-0AB6-F6B9FEBFE3DC";
	setAttr ".ics" -type "componentList" 1 "f[480:495]";
	setAttr ".ix" -type "matrix" 28.253684908957496 0 0 0 0 22.916877907443986 0 0 0 0 26.370105941302157 0
		 0 74.490777175762844 -1.5049702116519761 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -8.4202543e-07 29.827572 0.63645989 ;
	setAttr ".rs" 668068100;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -7.1177015543201909 29.827571509900089 -4.0278972618277793 ;
	setAttr ".cbx" -type "double3" 7.1176998702693384 29.827571509900089 5.3008170640348373 ;
	setAttr ".raf" no;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "E0AC5FBA-6D4C-23F3-D731-F98BBB665F2B";
	setAttr ".ics" -type "componentList" 1 "f[480:495]";
	setAttr ".ix" -type "matrix" 28.253684908957496 0 0 0 0 22.916877907443986 0 0 0 0 26.370105941302157 0
		 0 74.490777175762844 -1.5049702116519761 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -8.4202543e-07 25.786346 0.63645971 ;
	setAttr ".rs" 288972819;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -9.3320970695150969 25.78634679393474 -5.6345099004527377 ;
	setAttr ".cbx" -type "double3" 9.3320953854642443 25.78634679393474 6.9074293097145958 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak8";
	rename -uid "47A4CAA5-5C48-3FA8-1516-8299413D388D";
	setAttr ".uopa" yes;
	setAttr -s 27 ".tk[561:587]" -type "float3"  -0.063407056 -0.17634274 -0.035811111
		 -0.063407056 -0.17634274 1.2698446e-08 -0.078375466 -0.17634274 1.5390494e-08 -0.07453949
		 -0.17634274 -0.018827012 0.024219371 -0.17634274 -0.057943609 0.02421936 -0.17634274
		 -1.7885462e-08 1.2681697e-08 -0.17634274 2.2167777e-09 1.3849585e-08 -0.17634274
		 -0.060925521 -0.024219338 -0.17634274 -1.5390494e-08 -0.02421934 -0.17634274 -0.057943609
		 -0.046067927 -0.17634274 4.7493027e-09 -0.046067931 -0.17634274 -0.049289733 0.046067979
		 -0.17634274 -0.049289733 0.046067961 -0.17634274 4.7493027e-09 0.063407123 -0.17634274
		 -0.035811111 0.063407108 -0.17634274 1.2698446e-08 0.074539565 -0.17634274 -0.018827012
		 0.078375466 -0.17634274 1.5390494e-08 0.074539505 -0.17634274 0.018827032 0.063407063
		 -0.17634274 0.035811126 0.046067931 -0.17634274 0.049289756 0.024219358 -0.17634274
		 0.057943549 1.1513816e-08 -0.17634274 0.060925521 -0.024219338 -0.17634274 0.057943549
		 -0.046067927 -0.17634274 0.049289756 -0.063407056 -0.17634274 0.035811126 -0.07453949
		 -0.17634274 0.018827038;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "C017723C-2D44-528E-6BB3-6FBF708E06BC";
	setAttr ".ics" -type "componentList" 1 "f[480:495]";
	setAttr ".ix" -type "matrix" 28.253684908957496 0 0 0 0 22.916877907443986 0 0 0 0 26.370105941302157 0
		 0 74.490777175762844 -1.5049702116519761 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -8.4202543e-07 18.209839 -0.74695337 ;
	setAttr ".rs" 1963628571;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -11.716966526441837 18.209835191134573 -7.0179229857897631 ;
	setAttr ".cbx" -type "double3" 11.716964842390984 18.209840654944038 5.5240162243775712 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak9";
	rename -uid "9822585D-AB42-542C-8046-95BBCCF71035";
	setAttr ".uopa" yes;
	setAttr -s 27 ".tk[581:607]" -type "float3"  -0.068288393 -0.33060822 -0.052461412
		 -0.068288393 -0.33060822 -0.052461412 -0.08440914 -0.33060822 -0.052461412 -0.080277853
		 -0.33060822 -0.052461427 0.026083883 -0.33060822 -0.052461427 0.026083872 -0.33060822
		 -0.052461427 1.3657987e-08 -0.33060825 -0.052461419 1.4915782e-08 -0.33060825 -0.052461419
		 -0.026083834 -0.33060822 -0.052461427 -0.026083846 -0.33060822 -0.052461419 -0.049614433
		 -0.33060822 -0.052461419 -0.049614448 -0.33060822 -0.052461419 0.049614489 -0.33060822
		 -0.052461419 0.049614467 -0.33060822 -0.052461419 0.068288468 -0.33060822 -0.052461412
		 0.068288453 -0.33060822 -0.052461412 0.080277927 -0.33060822 -0.052461427 0.08440914
		 -0.33060822 -0.052461412 0.080277897 -0.33060822 -0.052461442 0.068288408 -0.33060822
		 -0.052461389 0.049614437 -0.33060822 -0.052461389 0.026083864 -0.33060822 -0.052461389
		 1.2400196e-08 -0.33060825 -0.052461419 -0.026083834 -0.33060822 -0.052461389 -0.049614429
		 -0.33060822 -0.052461389 -0.068288393 -0.33060822 -0.052461389 -0.080277853 -0.33060822
		 -0.052461442;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "ABE89D86-A046-C082-5906-8A8F3BD6ECA3";
	setAttr ".ics" -type "componentList" 3 "f[480]" "f[483:490]" "f[493:495]";
	setAttr ".ix" -type "matrix" 28.253684908957496 0 0 0 0 22.916877907443986 0 0 0 0 26.370105941302157 0
		 0 74.490777175762844 -1.5049702116519761 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -8.4202543e-07 13.788323 -0.74695534 ;
	setAttr ".rs" 160098816;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -10.851847710803099 13.788323872377433 -5.7303665241581401 ;
	setAttr ".cbx" -type "double3" 10.851846026752247 13.788323872377433 4.2364558332939541 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak10";
	rename -uid "F704DA04-644E-277F-2303-E3ACBC370AA1";
	setAttr ".uopa" yes;
	setAttr -s 67 ".tk[561:627]" -type "float3"  -0.008907184 -0.049468398
		 0 -0.011009888 -0.049468398 0 -0.010471025 -0.049468398 0 0.0034022452 -0.049468398
		 0 1.9455368e-09 -0.049468398 0 -0.003402241 -0.049468398 0 -0.0064714509 -0.049468398
		 0 0.0064714542 -0.049468398 0 0.0089071915 -0.049468398 0 0.010471035 -0.049468398
		 0 0.011009888 -0.049468398 0 0.010471027 -0.049468398 0 0.008907184 -0.049468398
		 0 0.0064714486 -0.049468398 0 0.0034022438 -0.049468398 0 1.6174171e-09 -0.049468398
		 0 -0.0034022399 -0.049468398 0 -0.0064714476 -0.049468398 0 -0.008907184 -0.049468398
		 0 -0.010471025 -0.049468398 0 -0.0017315198 -0.00021658884 0.019723909 -0.0021402771
		 -0.00021658884 0.027489398 -0.0020355275 -0.00021658884 0.023406833 0.00066138175
		 -0.00021658884 0.014924563 3.7820375e-10 -0.00021658884 0.014277954 -0.00066138234
		 -0.00021658884 0.014924571 -0.0012580233 -0.00021658884 0.016801121 0.0012580224
		 -0.00021658884 0.016801121 0.0017315184 -0.00021658884 0.019723909 0.0020355275 -0.00021658884
		 0.023406833 0.0021402771 -0.00021658884 0.027489398 0.0020355219 -0.00021658884 0.031571962
		 0.0017315242 -0.00021658884 0.035254896 0.0012580163 -0.00021658884 0.038177684 0.00066138245
		 -0.00021658884 0.040054224 3.1441966e-10 -0.00021658884 0.040700842 -0.00066138175
		 -0.00021658884 0.040054224 -0.001258024 -0.00021658884 0.038177684 -0.0017315198
		 -0.00021658884 0.035254896 -0.0020355275 -0.00021658884 0.031571962 0.030832779 -0.1929372
		 0.022983041 0.030832779 -0.1929372 -1.9988097e-08 0.030619688 -0.1929372 -2.1078577e-08
		 0.030674314 -0.1929372 0.012082899 -0.031390708 -0.1929372 0.03718736 -0.031390727
		 -0.1929372 1.0408714e-09 0 -0.10074587 0.015624009 0 -0.10074587 0.060542919 0.031390708
		 -0.1929372 1.0408714e-09 0.031390704 -0.1929372 0.03718736 0.031079652 -0.1929372
		 -1.2405858e-08 0.031079656 -0.1929372 0.03163344 -0.031079642 -0.1929372 0.03163344
		 -0.031079667 -0.1929372 -1.2405858e-08 -0.030832756 -0.1929372 0.022983041 -0.030832803
		 -0.1929372 -1.9988097e-08 -0.030674294 -0.1929372 0.012082899 -0.03061967 -0.1929372
		 -2.1078577e-08 -0.03067432 -0.1929372 -0.012082933 -0.030832779 -0.1929372 -0.022983082
		 -0.031079648 -0.1929372 -0.031633474 -0.031390719 -0.1929372 -0.037187364 0 -0.10074587
		 -0.029294902 0.031390708 -0.1929372 -0.037187364 0.031079652 -0.1929372 -0.031633474
		 0.030832779 -0.1929372 -0.022983082 0.030674314 -0.1929372 -0.012082933;
createNode polyBevel3 -n "polyBevel1";
	rename -uid "7FF70219-8F47-C4B2-A401-FD90DB5DE9E1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 79 "e[384]" "e[394]" "e[404]" "e[414]" "e[424]" "e[434]" "e[444]" "e[454]" "e[464]" "e[474]" "e[484]" "e[494]" "e[504]" "e[514]" "e[524]" "e[534]" "e[544]" "e[554]" "e[564]" "e[574]" "e[584]" "e[594]" "e[604]" "e[614]" "e[624]" "e[634]" "e[644]" "e[654]" "e[664]" "e[674]" "e[684]" "e[694]" "e[704]" "e[714]" "e[724]" "e[734]" "e[744]" "e[754]" "e[767]" "e[787]" "e[807]" "e[827]" "e[847]" "e[867]" "e[887]" "e[907]" "e[927]" "e[947]" "e[961]" "e[981]" "e[1001]" "e[1021]" "e[1045]" "e[1065]" "e[1089]" "e[1109]" "e[1126]" "e[1149]" "e[1166]" "e[1189]" "e[1208:1210]" "e[1214]" "e[1235:1237]" "e[1239]" "e[1253:1255]" "e[1261]" "e[1263:1264]" "e[1267]" "e[1270]" "e[1273:1274]" "e[1279]" "e[1281]" "e[1285]" "e[1287]" "e[1289]" "e[1292]" "e[1294]" "e[1297]" "e[1299:1300]";
	setAttr ".ix" -type "matrix" 28.253684908957496 0 0 0 0 22.916877907443986 0 0 0 0 26.370105941302157 0
		 0 74.490777175762844 -1.5049702116519761 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.7;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak11";
	rename -uid "B769E1E6-A248-5320-4A2A-52AD878536C8";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk[624:647]" -type "float3"  0.037309647 -0.091667064 0
		 0.037309647 -0.091667064 0 0.081429049 -0.091667064 0 0.070122495 -0.091667064 0
		 -0.078196347 -0.091667064 0 -0.078196377 -0.091667064 0 -0.013797523 -0.091667064
		 0 -0.013797493 -0.091667064 0 -0.078196377 -0.091667064 0 -0.01379753 -0.091667064
		 0 0.037309647 -0.091667064 0 0.070122495 -0.091667064 0 0.013797429 -0.091667064
		 0 0.01379748 -0.091667064 0 0.07819631 -0.091667064 0 0.078196287 -0.091667064 0
		 -0.037309796 -0.091667064 0 -0.037309706 -0.091667064 0 -0.070122689 -0.091667064
		 0 -0.08142902 -0.091667064 0 -0.070122533 -0.091667064 0 -0.037309647 -0.091667064
		 0 0.013797565 -0.091667064 0 0.078196324 -0.091667064 0;
createNode polySoftEdge -n "polySoftEdge1";
	rename -uid "0BC24D26-BF4B-D6F6-3F74-8B8C73277547";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 28.253684908957496 0 0 0 0 22.916877907443986 0 0 0 0 26.370105941302157 0
		 0 74.490777175762844 -1.5049702116519761 1;
	setAttr ".a" 0;
createNode polySplitRing -n "polySplitRing5";
	rename -uid "518405E0-1240-4337-7BD2-89A153462ED8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 16 "e[1002:1004]" "e[1007]" "e[1009:1010]" "e[1012]" "e[1014]" "e[1016]" "e[1018]" "e[1020]" "e[1022:1023]" "e[1025]" "e[1215]" "e[1217:1218]" "e[1220]" "e[1460:1461]" "e[1464]" "e[1466]";
	setAttr ".ix" -type "matrix" 28.253684908957496 0 0 0 0 22.916877907443986 0 0 0 0 26.370105941302157 0
		 0 74.490777175762844 -1.5049702116519761 1;
	setAttr ".wt" 0.37511324882507324;
	setAttr ".re" 1009;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak12";
	rename -uid "B4BE74C2-1B49-41FD-BEAC-DC979B65C426";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk";
	setAttr ".tk[540]" -type "float3" -6.5290351e-06 0 -0.006639889 ;
	setAttr ".tk[541]" -type "float3" -1.5666012e-05 0 -0.00014218505 ;
	setAttr ".tk[542]" -type "float3" -1.332443e-05 0 -0.0035582331 ;
	setAttr ".tk[545]" -type "float3" 4.0554442e-06 0 -0.009085509 ;
	setAttr ".tk[546]" -type "float3" -4.0554442e-06 0 -0.009085509 ;
	setAttr ".tk[547]" -type "float3" 6.5289219e-06 0 -0.006639889 ;
	setAttr ".tk[548]" -type "float3" 1.3324317e-05 0 -0.0035582331 ;
	setAttr ".tk[549]" -type "float3" 1.5666245e-05 0 -0.00014218505 ;
	setAttr ".tk[550]" -type "float3" 1.332443e-05 0 0.0032738599 ;
	setAttr ".tk[551]" -type "float3" 6.5290351e-06 0 0.0063555208 ;
	setAttr ".tk[552]" -type "float3" -4.0554733e-06 0 0.008801138 ;
	setAttr ".tk[553]" -type "float3" 4.0554442e-06 0 0.008801138 ;
	setAttr ".tk[554]" -type "float3" -6.5290351e-06 0 0.0063555208 ;
	setAttr ".tk[555]" -type "float3" -1.332443e-05 0 0.0032738599 ;
	setAttr ".tk[691]" -type "float3" -1.5603029e-05 0 -0.010606705 ;
	setAttr ".tk[692]" -type "float3" 1.5603146e-05 0 -0.010606702 ;
	setAttr ".tk[698]" -type "float3" -1.566601e-05 0 0.010606702 ;
	setAttr ".tk[701]" -type "float3" 1.5666126e-05 0 0.010606702 ;
	setAttr ".tk[702]" -type "float3" 0 0.011083352 0 ;
	setAttr ".tk[705]" -type "float3" 0 0.0093386695 0 ;
	setAttr ".tk[707]" -type "float3" 0 0.0032543435 0 ;
	setAttr ".tk[708]" -type "float3" 0 -0.011083352 0 ;
	setAttr ".tk[710]" -type "float3" 0 -0.004612823 0 ;
	setAttr ".tk[713]" -type "float3" 0 -0.011083352 0 ;
	setAttr ".tk[715]" -type "float3" 0 -0.004612823 0 ;
	setAttr ".tk[717]" -type "float3" 0 0.0032543435 0 ;
	setAttr ".tk[719]" -type "float3" 0 0.0093386695 0 ;
	setAttr ".tk[721]" -type "float3" 0 -0.011083352 0 ;
	setAttr ".tk[723]" -type "float3" 0 -0.004612823 0 ;
	setAttr ".tk[725]" -type "float3" 0 0.0032543435 0 ;
	setAttr ".tk[727]" -type "float3" 0 0.0093389936 0 ;
	setAttr ".tk[729]" -type "float3" 0 0.011083352 0 ;
	setAttr ".tk[731]" -type "float3" 0 0.0093389936 0 ;
	setAttr ".tk[733]" -type "float3" 0 0.0032543435 0 ;
	setAttr ".tk[735]" -type "float3" 0 -0.004612823 0 ;
	setAttr ".tk[736]" -type "float3" 0 -0.011083352 0 ;
createNode polySplitRing -n "polySplitRing6";
	rename -uid "33D48C5B-954C-D70E-A92B-97B86AB3C9B3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[1031]" "e[1236]" "e[1238]" "e[1250]" "e[1252]" "e[1475:1481]";
	setAttr ".ix" -type "matrix" 28.253684908957496 0 0 0 0 22.916877907443986 0 0 0 0 26.370105941302157 0
		 0 74.490777175762844 -1.5049702116519761 1;
	setAttr ".wt" 0.48050767183303833;
	setAttr ".dr" no;
	setAttr ".re" 1475;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing7";
	rename -uid "8EEA692B-3647-451E-60BF-D98F0A570311";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[1028]" "e[1239]" "e[1241]" "e[1253]" "e[1255]" "e[1468:1474]";
	setAttr ".ix" -type "matrix" 28.253684908957496 0 0 0 0 22.916877907443986 0 0 0 0 26.370105941302157 0
		 0 74.490777175762844 -1.5049702116519761 1;
	setAttr ".wt" 0.51949232816696167;
	setAttr ".re" 1471;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak13";
	rename -uid "E3D3E692-0247-A302-C2F6-49833BDA41CB";
	setAttr ".uopa" yes;
	setAttr -s 74 ".tk";
	setAttr ".tk[540]" -type "float3" -0.00032627222 0.011681164 0 ;
	setAttr ".tk[541]" -type "float3" 0.0032031219 0.011681164 0 ;
	setAttr ".tk[542]" -type "float3" 0.0022986382 0.011681164 0 ;
	setAttr ".tk[545]" -type "float3" -0.004414659 0.011681164 0 ;
	setAttr ".tk[546]" -type "float3" 0.0044146539 0.011681164 0 ;
	setAttr ".tk[547]" -type "float3" 0.00032626151 0.011681164 0 ;
	setAttr ".tk[548]" -type "float3" -0.002298655 0.011681164 0 ;
	setAttr ".tk[549]" -type "float3" -0.0032031182 0.011681164 0 ;
	setAttr ".tk[550]" -type "float3" -0.0022986419 0.011681164 0 ;
	setAttr ".tk[551]" -type "float3" 0.00032627222 0.011681164 0 ;
	setAttr ".tk[552]" -type "float3" 0.0044146646 0.011681164 0 ;
	setAttr ".tk[553]" -type "float3" -0.0044146604 0.011681164 0 ;
	setAttr ".tk[554]" -type "float3" -0.00032627222 0.011681164 0 ;
	setAttr ".tk[555]" -type "float3" 0.0022986382 0.011681164 0 ;
	setAttr ".tk[557]" -type "float3" 0 4.6566129e-10 1.3288771e-08 ;
	setAttr ".tk[560]" -type "float3" 0 4.6566129e-10 1.3288771e-08 ;
	setAttr ".tk[691]" -type "float3" 0.0088751903 -0.011681164 0 ;
	setAttr ".tk[692]" -type "float3" -0.0088751949 -0.011681164 0 ;
	setAttr ".tk[698]" -type "float3" 0.0088994727 -0.0078728134 0 ;
	setAttr ".tk[701]" -type "float3" -0.0088994764 -0.0078728134 0 ;
	setAttr ".tk[708]" -type "float3" 0 -4.6566129e-10 0.011729268 ;
	setAttr ".tk[709]" -type "float3" 0 4.6566129e-10 0.030746773 ;
	setAttr ".tk[712]" -type "float3" 0 4.6566129e-10 -0.030746786 ;
	setAttr ".tk[713]" -type "float3" 0 -4.6566129e-10 -0.011729269 ;
	setAttr ".tk[720]" -type "float3" 0 4.6566129e-10 0.030746777 ;
	setAttr ".tk[721]" -type "float3" 0 -4.6566129e-10 0.011729269 ;
	setAttr ".tk[736]" -type "float3" 0 -4.6566129e-10 -0.011729269 ;
	setAttr ".tk[737]" -type "float3" 0 4.6566129e-10 -0.030746782 ;
	setAttr ".tk[738]" -type "float3" 0.0021657383 0.026248045 0 ;
	setAttr ".tk[739]" -type "float3" 0.0040303888 0.01748419 0 ;
	setAttr ".tk[740]" -type "float3" 0.00014697305 -0.011131722 0 ;
	setAttr ".tk[741]" -type "float3" 5.3025506e-06 -0.011109315 0 ;
	setAttr ".tk[742]" -type "float3" -0.0040303809 0.01748419 0 ;
	setAttr ".tk[743]" -type "float3" -0.0021657334 0.026248045 0 ;
	setAttr ".tk[744]" -type "float3" -0.0072609205 0.026248045 0 ;
	setAttr ".tk[745]" -type "float3" -0.010532243 0.026248045 0 ;
	setAttr ".tk[746]" -type "float3" -0.011659466 0.026248045 0 ;
	setAttr ".tk[747]" -type "float3" -0.010532243 0.026248045 0 ;
	setAttr ".tk[748]" -type "float3" -0.0072609205 0.026248045 0 ;
	setAttr ".tk[749]" -type "float3" -0.0021657306 0.026248045 0 ;
	setAttr ".tk[750]" -type "float3" 0.0039433031 0.018913135 0 ;
	setAttr ".tk[751]" -type "float3" -0.00022904669 -0.010142844 0 ;
	setAttr ".tk[752]" -type "float3" 0.00022924677 -0.010142844 0 ;
	setAttr ".tk[753]" -type "float3" -0.003943298 0.018913135 0 ;
	setAttr ".tk[754]" -type "float3" 0.0021657252 0.026248045 0 ;
	setAttr ".tk[755]" -type "float3" 0.0072609205 0.026248045 0 ;
	setAttr ".tk[756]" -type "float3" 0.010532247 0.026248045 0 ;
	setAttr ".tk[757]" -type "float3" 0.011659462 0.026248045 0 ;
	setAttr ".tk[758]" -type "float3" 0.010532267 0.026248045 0 ;
	setAttr ".tk[759]" -type "float3" 0.0072609363 0.026248045 0 ;
	setAttr ".tk[760]" -type "float3" -0.0028282886 -0.00025257893 0 ;
	setAttr ".tk[761]" -type "float3" -0.001849337 -0.007216075 0 ;
	setAttr ".tk[762]" -type "float3" -0.011887452 0.01238875 0 ;
	setAttr ".tk[763]" -type "float3" -0.011887458 0.01238875 0 ;
	setAttr ".tk[764]" -type "float3" -0.011887459 0.01238875 0 ;
	setAttr ".tk[765]" -type "float3" -0.0018804208 -0.0052377349 0 ;
	setAttr ".tk[766]" -type "float3" -0.0028283112 -0.00025257893 0 ;
	setAttr ".tk[767]" -type "float3" 0.0052947472 -0.00025257893 0 ;
	setAttr ".tk[768]" -type "float3" 0.010225186 -0.00025257893 0 ;
	setAttr ".tk[769]" -type "float3" 0.011887458 -0.00025257893 0 ;
	setAttr ".tk[770]" -type "float3" 0.010225208 -0.00025257893 0 ;
	setAttr ".tk[771]" -type "float3" 0.0052947747 -0.00025257893 0 ;
	setAttr ".tk[772]" -type "float3" 0.0028282977 -0.00025257893 0 ;
	setAttr ".tk[773]" -type "float3" 0.0018493463 -0.007216075 0 ;
	setAttr ".tk[774]" -type "float3" 0.011887465 0.01238875 0 ;
	setAttr ".tk[775]" -type "float3" 0.011887465 0.01238875 0 ;
	setAttr ".tk[776]" -type "float3" 0.011887465 0.01238875 0 ;
	setAttr ".tk[777]" -type "float3" 0.0018804283 -0.0052377349 0 ;
	setAttr ".tk[778]" -type "float3" 0.0028283005 -0.00025257893 0 ;
	setAttr ".tk[779]" -type "float3" -0.0052947472 -0.00025257893 0 ;
	setAttr ".tk[780]" -type "float3" -0.010225181 -0.00025230326 0 ;
	setAttr ".tk[781]" -type "float3" -0.011887464 -0.00025257893 0 ;
	setAttr ".tk[782]" -type "float3" -0.010225181 -0.00025230326 0 ;
	setAttr ".tk[783]" -type "float3" -0.0052947472 -0.00025257893 0 ;
createNode polySplit -n "polySplit9";
	rename -uid "2D6D4555-CC41-BD2E-2C80-79B05ECDD988";
	setAttr -s 14 ".e[0:13]"  0 0.45024499 0.581074 0.517129 0.59186399
		 0.610093 0.653826 0.35084799 0.393556 0.60019302 0.45685601 0.32598799 0.61262298
		 0;
	setAttr -s 14 ".d[0:13]"  -2147482361 -2147482210 -2147482212 -2147482211 -2147482116 -2147482218 
		-2147482418 -2147482416 -2147482215 -2147482092 -2147482214 -2147482213 -2147482220 -2147482386;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit10";
	rename -uid "B5BC62A1-FB46-31EE-0B66-2092D8333FCB";
	setAttr -s 14 ".e[0:13]"  1 0.43353501 0.54914099 0.465738 0.50188899
		 0.371526 0.324965 0.72423398 0.61298901 0.61799699 0.44225499 0.47341499 0.37169001
		 0;
	setAttr -s 14 ".d[0:13]"  -2147482391 -2147482201 -2147482202 -2147482203 -2147482090 -2147482204 
		-2147482413 -2147482415 -2147482205 -2147482114 -2147482206 -2147482207 -2147482208 -2147482355;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyCircularize -n "polyCircularize1";
	rename -uid "7D8468F0-8543-9E12-6BC5-37BF9DD11E9B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "f[676]" "f[679:686]" "f[689:691]" "f[792:794]" "f[802:807]" "f[815:817]";
	setAttr ".ix" -type "matrix" 28.253684908957496 0 0 0 0 22.916877907443986 0 0 0 0 26.370105941302157 0
		 0 74.490777175762844 -1.5049702116519761 1;
	setAttr ".nor" 1;
	setAttr ".ro" -0.60000002384185791;
createNode polyTweak -n "polyTweak14";
	rename -uid "4ECEC14C-764D-5F18-835F-BCA9D900A0FB";
	setAttr ".uopa" yes;
	setAttr -s 104 ".tk";
	setAttr ".tk[26]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[35]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[44]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[53]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[62]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[71]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[80]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[89]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[98]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[107]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[116]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[125]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[134]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[143]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[152]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[161]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[170]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[179]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[188]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[197]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[206]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[215]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[224]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[233]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[242]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[251]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[260]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[269]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[278]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[287]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[296]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[305]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[314]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[323]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[332]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[341]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[350]" -type "float3" 0 0 -2.3283064e-10 ;
	setAttr ".tk[359]" -type "float3" 0 0 -2.3283064e-10 ;
	setAttr ".tk[368]" -type "float3" 0 0 -5.5879354e-09 ;
	setAttr ".tk[377]" -type "float3" 0 0 -5.5879354e-09 ;
	setAttr ".tk[386]" -type "float3" 0 0 -4.6566129e-10 ;
	setAttr ".tk[395]" -type "float3" 0 0 -4.6566129e-10 ;
	setAttr ".tk[422]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[431]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[437]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[446]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[455]" -type "float3" 0 0 2.7939677e-09 ;
	setAttr ".tk[464]" -type "float3" 0 0 2.7939677e-09 ;
	setAttr ".tk[486]" -type "float3" 0 0 1.8626451e-09 ;
	setAttr ".tk[495]" -type "float3" 0 0 1.8626451e-09 ;
	setAttr ".tk[505]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[513]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[541]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".tk[543]" -type "float3" 0 0 9.4141072e-08 ;
	setAttr ".tk[544]" -type "float3" 0 0 9.4141072e-08 ;
	setAttr ".tk[549]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".tk[556]" -type "float3" 0 0 -8.9456513e-09 ;
	setAttr ".tk[557]" -type "float3" 0 0 8.1614829e-08 ;
	setAttr ".tk[558]" -type "float3" 0 0 2.4742459e-08 ;
	setAttr ".tk[559]" -type "float3" 0 0 2.4742459e-08 ;
	setAttr ".tk[560]" -type "float3" 0 0 8.1614829e-08 ;
	setAttr ".tk[561]" -type "float3" 0 0 -8.9456513e-09 ;
	setAttr ".tk[638]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[639]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[688]" -type "float3" 0 0 -0.012889187 ;
	setAttr ".tk[689]" -type "float3" 0 0 -0.012889187 ;
	setAttr ".tk[702]" -type "float3" 0 0 1.8626451e-09 ;
	setAttr ".tk[703]" -type "float3" 0 0 -1.6339062e-08 ;
	setAttr ".tk[704]" -type "float3" 0 0 -0.00021098727 ;
	setAttr ".tk[718]" -type "float3" 0 0 -0.00021096601 ;
	setAttr ".tk[726]" -type "float3" 0 0 3.5380869e-09 ;
	setAttr ".tk[728]" -type "float3" 0 0 1.5397159e-09 ;
	setAttr ".tk[729]" -type "float3" 0 0 1.8626451e-09 ;
	setAttr ".tk[730]" -type "float3" -1.4901161e-08 0 -2.9754479e-09 ;
	setAttr ".tk[746]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".tk[757]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".tk[763]" -type "float3" 0 0 9.4141072e-08 ;
	setAttr ".tk[769]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".tk[775]" -type "float3" 0 0 9.4141072e-08 ;
	setAttr ".tk[781]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".tk[784]" -type "float3" 0 0 0.001865759 ;
	setAttr ".tk[785]" -type "float3" 0 0 0.0026403281 ;
	setAttr ".tk[786]" -type "float3" 0 0 0.0066682165 ;
	setAttr ".tk[787]" -type "float3" 0 0 0.008812584 ;
	setAttr ".tk[788]" -type "float3" 0 0 0.0082876589 ;
	setAttr ".tk[789]" -type "float3" 0 0 -0.0086092381 ;
	setAttr ".tk[790]" -type "float3" 0 0 -0.0078056268 ;
	setAttr ".tk[791]" -type "float3" 0 0 0.0088821538 ;
	setAttr ".tk[792]" -type "float3" 0 0 0.0075054374 ;
	setAttr ".tk[793]" -type "float3" 0 0 0.0097825015 ;
	setAttr ".tk[794]" -type "float3" 0 0 -0.010200024 ;
	setAttr ".tk[795]" -type "float3" 0 0 -0.015217281 ;
	setAttr ".tk[796]" -type "float3" 2.3283064e-10 0 -0.0038125273 ;
	setAttr ".tk[797]" -type "float3" 0 0 -0.0072631873 ;
	setAttr ".tk[798]" -type "float3" 0 0 -0.0007269535 ;
	setAttr ".tk[799]" -type "float3" -1.8626451e-09 0 -0.024390524 ;
	setAttr ".tk[800]" -type "float3" 3.7252903e-09 0 -0.048943557 ;
	setAttr ".tk[801]" -type "float3" -3.7252903e-09 0 -0.074176624 ;
	setAttr ".tk[802]" -type "float3" 3.7252903e-09 0 -0.082815319 ;
	setAttr ".tk[803]" -type "float3" -7.4505806e-09 0 -0.046381805 ;
	setAttr ".tk[804]" -type "float3" 7.4505806e-09 0 -0.042763289 ;
	setAttr ".tk[805]" -type "float3" 7.4505806e-09 0 -0.011741336 ;
	setAttr ".tk[806]" -type "float3" -1.4901161e-08 0 -0.018000355 ;
	setAttr ".tk[807]" -type "float3" 0 0 -0.0098854527 ;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	rename -uid "CB025D26-5C43-11C2-D1AA-15B273B4E486";
	setAttr ".ics" -type "componentList" 6 "f[676]" "f[679:686]" "f[689:691]" "f[792:794]" "f[802:807]" "f[815:817]";
	setAttr ".ix" -type "matrix" 28.253684908957496 0 0 0 0 22.916877907443986 0 0 0 0 26.370105941302157 0
		 0 74.490777175762844 -1.5049702116519761 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.0036910186 11.687601 -0.74809557 ;
	setAttr ".rs" 970620288;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -8.4536254146661385 11.687598408068204 -2.4363611446107214 ;
	setAttr ".cbx" -type "double3" 8.4462433777537917 11.68760387187767 0.94016999628222298 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak15";
	rename -uid "7F7CD52F-8C4F-E35D-3CE5-D4B56836B52F";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk";
	setAttr ".tk[556]" -type "float3" -0.010199192 0.00082636665 3.0698714e-06 ;
	setAttr ".tk[557]" -type "float3" -0.02469499 -0.0032288728 -8.4967041e-06 ;
	setAttr ".tk[558]" -type "float3" -0.016871078 -0.001040257 -2.3732371e-06 ;
	setAttr ".tk[559]" -type "float3" 0.016881552 -0.0010274444 -9.3445969e-06 ;
	setAttr ".tk[560]" -type "float3" 0.024752164 -0.0032282306 -1.0638796e-05 ;
	setAttr ".tk[561]" -type "float3" 0.010167763 0.00084976357 -1.4122138e-05 ;
	setAttr ".tk[703]" -type "float3" -0.0016105386 0.0032288728 -1.7049827e-06 ;
	setAttr ".tk[704]" -type "float3" -0.0031585507 0.0027873074 0.0058296323 ;
	setAttr ".tk[706]" -type "float3" -0.0073844953 0.0015987477 0.01009756 ;
	setAttr ".tk[709]" -type "float3" -0.018926714 -0.001629922 0.010094159 ;
	setAttr ".tk[711]" -type "float3" -0.013156041 -1.7864719e-05 0.011658475 ;
	setAttr ".tk[712]" -type "float3" -0.01892104 -0.0015989536 -0.010107755 ;
	setAttr ".tk[714]" -type "float3" -0.01314949 1.7737559e-05 -0.011668687 ;
	setAttr ".tk[716]" -type "float3" -0.0073788152 0.001629922 -0.010104364 ;
	setAttr ".tk[718]" -type "float3" -0.0031552697 0.0028052195 -0.0058339536 ;
	setAttr ".tk[720]" -type "float3" 0.018988365 -0.0016747641 0.010098291 ;
	setAttr ".tk[722]" -type "float3" 0.013217095 -7.0304406e-05 0.011666653 ;
	setAttr ".tk[724]" -type "float3" 0.0074430932 0.0015530178 0.010108933 ;
	setAttr ".tk[726]" -type "float3" 0.0032134987 0.0027603556 0.0058425376 ;
	setAttr ".tk[728]" -type "float3" 0.00166163 0.0032282306 1.0640701e-05 ;
	setAttr ".tk[730]" -type "float3" 0.0032033119 0.0028307156 -0.0058241081 ;
	setAttr ".tk[732]" -type "float3" 0.0074254316 0.001675174 -0.010098288 ;
	setAttr ".tk[734]" -type "float3" 0.0131967 7.0304406e-05 -0.011666645 ;
	setAttr ".tk[737]" -type "float3" 0.018970702 -0.0015530178 -0.010108935 ;
	setAttr ".tk[784]" -type "float3" 0.010541248 0.00070703361 0.006604705 ;
	setAttr ".tk[785]" -type "float3" 0.016189262 -0.0008721567 0.0066132154 ;
	setAttr ".tk[786]" -type "float3" 0.023210492 -0.0028307156 0.0058241105 ;
	setAttr ".tk[793]" -type "float3" -0.023150265 -0.0028052195 0.00582375 ;
	setAttr ".tk[794]" -type "float3" -0.016209122 -0.0008644755 0.0066144001 ;
	setAttr ".tk[795]" -type "float3" -0.01055573 0.00071686745 0.0066283531 ;
	setAttr ".tk[796]" -type "float3" -0.010465571 0.00076118606 -0.0066118324 ;
	setAttr ".tk[797]" -type "float3" -0.016117353 -0.00081969245 -0.006610462 ;
	setAttr ".tk[798]" -type "float3" -0.023146985 -0.0027873074 -0.005839834 ;
	setAttr ".tk[805]" -type "float3" 0.023200301 -0.0027603556 -0.0058425409 ;
	setAttr ".tk[806]" -type "float3" 0.016144631 -0.0007830484 -0.0066245212 ;
	setAttr ".tk[807]" -type "float3" 0.010526619 0.00078780839 -0.0066275722 ;
createNode polyTweak -n "polyTweak16";
	rename -uid "F31E0F09-A844-E822-D625-CBAD17C03E19";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[796:831]" -type "float3"  -0.0030432362 -0.18731965
		 0.010355732 -0.0075482475 -0.18731965 0.0067978292 0.0029600803 -0.18731965 0.0059786867
		 -0.019439939 -0.18731965 0.01035225 -0.025439849 -0.18731965 0.0059726532 -0.015579374
		 -0.18731965 0.0067835189 -0.011242216 -0.18731965 0.011956568 -0.015449008 -0.18731965
		 -0.0067794817 -0.025435194 -0.18731965 -0.0059891469 -0.01943188 -0.18731965 -0.010366198
		 -0.011232909 -0.18731965 -0.011967031 -0.007420179 -0.18731965 -0.0067808847 -0.0030351821
		 -0.18731965 -0.010362712 0.0029647057 -0.18731965 -0.0059831166 -0.027634254 -0.18731965
		 -8.7131066e-06 -0.016519738 -0.18731965 -2.4336739e-06 -0.0070417682 -0.18731965
		 3.1490642e-06 0.0051591443 -0.18731965 -1.7486157e-06 0.011328952 -0.18731965 0.011964941
		 0.015551163 -0.18731965 0.0067823073 0.025525412 -0.18731965 0.0059730243 0.019527519
		 -0.18731965 0.010356493 0.0031264992 -0.18731965 0.010367403 0.0075276839 -0.18731965
		 0.0067735766 -0.0028819889 -0.18731965 0.0059919232 0.0075068972 -0.18731965 -0.0067970287
		 -0.0028964812 -0.18731965 -0.0059730238 0.0031014094 -0.18731965 -0.010356492 0.015487758
		 -0.18731965 -0.0067939004 0.01129997 -0.18731965 -0.011964942 0.025510918 -0.18731965
		 -0.0059919218 0.019502426 -0.18731965 -0.010367403 -0.0050865589 -0.18731965 1.0912576e-05
		 0.0069971117 -0.18731965 -1.4483006e-05 0.01653461 -0.18731965 -9.5827045e-06 0.02771548
		 -0.18731965 -1.0910425e-05;
createNode polySplit -n "polySplit11";
	rename -uid "19EF2C03-154B-5B65-2E22-B2A1BBB4A513";
	setAttr -s 7 ".e[0:6]"  0 0.34259 0.238665 0.80813199 0.761428 0.657529
		 1;
	setAttr -s 7 ".d[0:6]"  -2147482398 -2147482397 -2147482065 -2147482107 -2147482074 -2147482109 
		-2147482412;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit12";
	rename -uid "E0A7895F-6241-D1A1-6216-F68558D9A905";
	setAttr -s 7 ".e[0:6]"  1 0.65741003 0.76133502 0.80813199 0.238572
		 0.342471 0;
	setAttr -s 7 ".d[0:6]"  -2147482401 -2147482129 -2147482059 -2147482131 -2147482080 -2147482414 
		-2147482415;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyBevel3 -n "polyBevel2";
	rename -uid "F19D06C9-6745-A64C-EFF3-C49AB7835117";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[1595]" "e[1606]" "e[1635]" "e[1656]";
	setAttr ".ix" -type "matrix" 28.253684908957496 0 0 0 0 22.916877907443986 0 0 0 0 26.370105941302157 0
		 0 74.490777175762844 -1.5049702116519761 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak17";
	rename -uid "0F47BA1C-7648-FA2B-087D-0BAC47FE649D";
	setAttr ".uopa" yes;
	setAttr -s 88 ".tk";
	setAttr ".tk[556]" -type "float3" 0 -0.012527084 0.055988386 ;
	setAttr ".tk[557]" -type "float3" 0 -0.012527084 0.055988386 ;
	setAttr ".tk[698]" -type "float3" 0 -0.0060961437 0.020117098 ;
	setAttr ".tk[699]" -type "float3" 0 -0.012527084 0.055988401 ;
	setAttr ".tk[700]" -type "float3" 0 -0.012527084 0.055988401 ;
	setAttr ".tk[701]" -type "float3" 0 -0.0060959351 0.031079775 ;
	setAttr ".tk[702]" -type "float3" 0 -0.012527084 0.055988401 ;
	setAttr ".tk[703]" -type "float3" 0 -0.0060961437 0.040969335 ;
	setAttr ".tk[704]" -type "float3" -0.0038855746 -0.0060961437 0.067197584 ;
	setAttr ".tk[705]" -type "float3" 0 -0.012527084 0.055988401 ;
	setAttr ".tk[706]" -type "float3" -0.0038855746 -0.0060961437 0.068566546 ;
	setAttr ".tk[707]" -type "float3" 0 -0.012527084 0.055988401 ;
	setAttr ".tk[708]" -type "float3" 0 -0.012527084 0.055988401 ;
	setAttr ".tk[709]" -type "float3" -0.010658678 -0.0060961437 -0.015704116 ;
	setAttr ".tk[710]" -type "float3" 0 -0.012527084 0.055988401 ;
	setAttr ".tk[711]" -type "float3" -0.010658678 -0.0060961437 -0.017073071 ;
	setAttr ".tk[712]" -type "float3" 0 -0.012527084 0.055988401 ;
	setAttr ".tk[713]" -type "float3" 0 -0.0060961437 -0.00073514762 ;
	setAttr ".tk[714]" -type "float3" 0 -0.012527084 0.055988401 ;
	setAttr ".tk[715]" -type "float3" 0 -0.0060959351 0.0091544231 ;
	setAttr ".tk[716]" -type "float3" 0 -0.012527084 0.055988401 ;
	setAttr ".tk[717]" -type "float3" 0.0038855746 -0.0060961437 0.067197584 ;
	setAttr ".tk[718]" -type "float3" 0 -0.012527084 0.055988401 ;
	setAttr ".tk[719]" -type "float3" 0.0038855746 -0.0060961437 0.068566546 ;
	setAttr ".tk[720]" -type "float3" 0 -0.012527084 0.055988401 ;
	setAttr ".tk[721]" -type "float3" 0 -0.0060961437 0.040969335 ;
	setAttr ".tk[722]" -type "float3" 0 -0.012527084 0.055988401 ;
	setAttr ".tk[723]" -type "float3" 0 -0.0060961437 0.031079775 ;
	setAttr ".tk[724]" -type "float3" 0 -0.012527084 0.055988401 ;
	setAttr ".tk[725]" -type "float3" 0 -0.0060961437 0.020117098 ;
	setAttr ".tk[726]" -type "float3" 0 -0.012527084 0.055988401 ;
	setAttr ".tk[727]" -type "float3" 0 -0.0060961437 0.0091544231 ;
	setAttr ".tk[728]" -type "float3" 0 -0.012527084 0.055988401 ;
	setAttr ".tk[729]" -type "float3" 0 -0.0060961437 -0.00073514762 ;
	setAttr ".tk[730]" -type "float3" 0 -0.012527084 0.055988401 ;
	setAttr ".tk[731]" -type "float3" 0.010658678 -0.0060961437 -0.017073071 ;
	setAttr ".tk[732]" -type "float3" 0.010658678 -0.0060961437 -0.015704116 ;
	setAttr ".tk[733]" -type "float3" 0 -0.012527084 0.055988401 ;
	setAttr ".tk[780]" -type "float3" 0 -0.012527084 0.055988386 ;
	setAttr ".tk[787]" -type "float3" 0 -0.012527084 0.055988386 ;
	setAttr ".tk[788]" -type "float3" 0 -0.012527084 0.055988386 ;
	setAttr ".tk[795]" -type "float3" 0 -0.012527084 0.055988386 ;
	setAttr ".tk[796]" -type "float3" 0 -0.035946257 0.079971962 ;
	setAttr ".tk[797]" -type "float3" 0 -0.035946269 0.079971924 ;
	setAttr ".tk[798]" -type "float3" 0 -0.035946257 0.079971962 ;
	setAttr ".tk[799]" -type "float3" 0 -0.035946257 0.079971962 ;
	setAttr ".tk[800]" -type "float3" 0 -0.035946257 0.079971924 ;
	setAttr ".tk[801]" -type "float3" 0 -0.035946269 0.079971924 ;
	setAttr ".tk[802]" -type "float3" 0 -0.035946257 0.079971962 ;
	setAttr ".tk[803]" -type "float3" 0 -0.035946269 0.079971924 ;
	setAttr ".tk[804]" -type "float3" 0 -0.035946257 0.079971924 ;
	setAttr ".tk[805]" -type "float3" 0 -0.035946257 0.079971962 ;
	setAttr ".tk[806]" -type "float3" 0 -0.035946257 0.079971962 ;
	setAttr ".tk[807]" -type "float3" 0 -0.035946269 0.079971924 ;
	setAttr ".tk[808]" -type "float3" 0 -0.035946257 0.079971962 ;
	setAttr ".tk[809]" -type "float3" 0 -0.035946257 0.079971962 ;
	setAttr ".tk[810]" -type "float3" 0 -0.035946257 0.079971924 ;
	setAttr ".tk[811]" -type "float3" 0 -0.035946269 0.079971924 ;
	setAttr ".tk[812]" -type "float3" 0 -0.035946269 0.079971924 ;
	setAttr ".tk[813]" -type "float3" 0 -0.035946257 0.079971962 ;
	setAttr ".tk[814]" -type "float3" 0 -0.035946257 0.079971962 ;
	setAttr ".tk[815]" -type "float3" 0 -0.035946269 0.079971924 ;
	setAttr ".tk[816]" -type "float3" 0 -0.035946257 0.079971924 ;
	setAttr ".tk[817]" -type "float3" 0 -0.035946257 0.079971962 ;
	setAttr ".tk[818]" -type "float3" 0 -0.035946257 0.079971962 ;
	setAttr ".tk[819]" -type "float3" 0 -0.035946269 0.079971924 ;
	setAttr ".tk[820]" -type "float3" 0 -0.035946257 0.079971962 ;
	setAttr ".tk[821]" -type "float3" 0 -0.035946269 0.079971924 ;
	setAttr ".tk[822]" -type "float3" 0 -0.035946257 0.079971962 ;
	setAttr ".tk[823]" -type "float3" 0 -0.035946257 0.079971962 ;
	setAttr ".tk[824]" -type "float3" 0 -0.035946269 0.079971924 ;
	setAttr ".tk[825]" -type "float3" 0 -0.035946257 0.079971962 ;
	setAttr ".tk[826]" -type "float3" 0 -0.035946257 0.079971924 ;
	setAttr ".tk[827]" -type "float3" 0 -0.035946257 0.079971962 ;
	setAttr ".tk[828]" -type "float3" 0 -0.035946257 0.079971962 ;
	setAttr ".tk[829]" -type "float3" 0 -0.035946269 0.079971924 ;
	setAttr ".tk[830]" -type "float3" 0 -0.035946269 0.079971924 ;
	setAttr ".tk[831]" -type "float3" 0 -0.035946257 0.079971924 ;
	setAttr ".tk[832]" -type "float3" 0.010812934 -0.00034662796 0.0039344346 ;
	setAttr ".tk[833]" -type "float3" 0.010812926 0.0058901007 0.013423386 ;
	setAttr ".tk[834]" -type "float3" 0.010812924 0.008698266 0.020117434 ;
	setAttr ".tk[835]" -type "float3" 0.010812924 0.0058952514 0.026820721 ;
	setAttr ".tk[836]" -type "float3" 0.010812935 -0.00033929848 0.036220651 ;
	setAttr ".tk[837]" -type "float3" -0.010812934 -0.00034650008 0.0039336821 ;
	setAttr ".tk[838]" -type "float3" -0.010812926 0.0058899033 0.013421363 ;
	setAttr ".tk[839]" -type "float3" -0.010812924 0.008698266 0.020115737 ;
	setAttr ".tk[840]" -type "float3" -0.010812924 0.0058952514 0.026820993 ;
	setAttr ".tk[841]" -type "float3" -0.010812935 -0.00033962895 0.036223315 ;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "88181413-F847-CE44-2E19-D0981CBF1A5E";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[916]" -type "float2" 0.019318258 -5.0653925e-13 ;
	setAttr ".uvtk[935]" -type "float2" 0.0016563638 -2.4740696e-12 ;
	setAttr ".uvtk[936]" -type "float2" -0.0024292816 7.321227e-13 ;
	setAttr ".uvtk[988]" -type "float2" 0.0084427428 -2.4083999e-12 ;
	setAttr ".uvtk[995]" -type "float2" -0.00071073545 0 ;
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "562113DB-5E40-0DE5-D964-948E10D3D6CC";
	setAttr ".ics" -type "componentList" 3 "vtx[828]" "vtx[833:834]" "vtx[847]";
	setAttr ".ix" -type "matrix" 28.253684908957496 0 0 0 0 22.916877907443986 0 0 0 0 26.370105941302157 0
		 0 74.490777175762844 -1.5049702116519761 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak18";
	rename -uid "3A4C7F5A-8C42-C8FF-FE1E-A195C2080406";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[834]" -type "float3" 0.022902876 0.018279791 -0.030445877 ;
	setAttr ".tk[847]" -type "float3" -0.022901267 0.018326521 -0.030518278 ;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "530E1328-484A-2A71-7B11-53A2406A52A9";
	setAttr ".uopa" yes;
	setAttr -s 6 ".uvtk";
	setAttr ".uvtk[448]" -type "float2" 0.0035444014 -5.6482025e-10 ;
	setAttr ".uvtk[921]" -type "float2" 0.0084709916 -1.1379231e-12 ;
	setAttr ".uvtk[922]" -type "float2" -0.0051470478 4.9046947e-12 ;
	setAttr ".uvtk[937]" -type "float2" -0.019636378 1.2305365e-12 ;
	setAttr ".uvtk[938]" -type "float2" -0.0026999633 -1.8407081e-12 ;
	setAttr ".uvtk[994]" -type "float2" -0.034504782 -1.1204718e-12 ;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "5AA5A9CE-494E-C2BE-70A8-E8A3CC7AB723";
	setAttr ".ics" -type "componentList" 4 "vtx[704]" "vtx[714]" "vtx[836]" "vtx[846]";
	setAttr ".ix" -type "matrix" 28.253684908957496 0 0 0 0 22.916877907443986 0 0 0 0 26.370105941302157 0
		 0 74.490777175762844 -1.5049702116519761 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak19";
	rename -uid "9440BDD3-094F-1CAD-A424-FAB1BFEF87A5";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[836]" -type "float3" 0.012591258 0.021035671 -0.055540983 ;
	setAttr ".tk[846]" -type "float3" -0.012410775 0.021072626 -0.05562545 ;
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "BB99D5DB-D847-6613-A156-FFACE9C6AA1E";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk";
	setAttr ".uvtk[923]" -type "float2" 0.039292824 3.8049108e-10 ;
	setAttr ".uvtk[924]" -type "float2" 0.0085307332 -8.5178711e-11 ;
	setAttr ".uvtk[942]" -type "float2" -0.00078646111 -1.7804577e-12 ;
	setAttr ".uvtk[943]" -type "float2" 0.0020188135 9.1998631e-13 ;
	setAttr ".uvtk[945]" -type "float2" -0.005313789 -1.2811681e-10 ;
	setAttr ".uvtk[948]" -type "float2" 0.00010884885 -3.6471767e-10 ;
	setAttr ".uvtk[987]" -type "float2" 0.016281534 -1.8189894e-12 ;
	setAttr ".uvtk[993]" -type "float2" -0.006628504 -7.7063356e-14 ;
createNode polyMergeVert -n "polyMergeVert3";
	rename -uid "F1BB2E58-0547-C658-7DBC-BF9FB6B09E9E";
	setAttr ".ics" -type "componentList" 4 "vtx[824]" "vtx[829]" "vtx[839]" "vtx[848]";
	setAttr ".ix" -type "matrix" 28.253684908957496 0 0 0 0 22.916877907443986 0 0 0 0 26.370105941302157 0
		 0 74.490777175762844 -1.5049702116519761 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak20";
	rename -uid "B9EA154C-984A-6D4C-A285-1893FD38C3CB";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[839]" -type "float3" 0.028802976 0.022977114 -0.011809498 ;
	setAttr ".tk[848]" -type "float3" -0.028755814 0.022988558 -0.011817291 ;
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "9B015C57-2E4D-36C2-5861-278D58504054";
	setAttr ".uopa" yes;
	setAttr -s 9 ".uvtk";
	setAttr ".uvtk[457]" -type "float2" 0.014702884 1.0623664e-09 ;
	setAttr ".uvtk[811]" -type "float2" -0.0027306343 6.1936634e-10 ;
	setAttr ".uvtk[925]" -type "float2" -0.043751016 -3.2834591e-09 ;
	setAttr ".uvtk[926]" -type "float2" 0.0016470694 -2.2488955e-14 ;
	setAttr ".uvtk[942]" -type "float2" 0.017514601 -1.255919e-12 ;
	setAttr ".uvtk[947]" -type "float2" 0.0015491024 -1.3300641e-09 ;
	setAttr ".uvtk[948]" -type "float2" 0.030079426 1.9814494e-09 ;
	setAttr ".uvtk[985]" -type "float2" 0.007864736 2.5320718e-13 ;
createNode polyMergeVert -n "polyMergeVert4";
	rename -uid "FBD860D6-8349-1CA4-FF8E-9DA845E2E007";
	setAttr ".ics" -type "componentList" 4 "vtx[707]" "vtx[729]" "vtx[839]" "vtx[849]";
	setAttr ".ix" -type "matrix" 28.253684908957496 0 0 0 0 22.916877907443986 0 0 0 0 26.370105941302157 0
		 0 74.490777175762844 -1.5049702116519761 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak21";
	rename -uid "72DF562C-9E4C-8143-54C8-2B9AF4E836D0";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[839]" -type "float3" 0.0077003986 0.019614935 0.015566617 ;
	setAttr ".tk[849]" -type "float3" -0.0075489581 0.019617081 0.015564367 ;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	rename -uid "B74D8E29-2D4A-684E-2D52-CD9978FB56CF";
	setAttr ".ics" -type "componentList" 7 "f[674]" "f[677:683]" "f[686:688]" "f[787:789]" "f[797:802]" "f[810:812]" "f[847]";
	setAttr ".ix" -type "matrix" 28.253684908957496 0 0 0 0 22.916877907443986 0 0 0 0 26.370105941302157 0
		 0 74.490777175762844 -1.5049702116519761 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.0026654315 6.5710416 1.3607459 ;
	setAttr ".rs" 1086019657;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -8.3078615510944189 6.5710413506788541 -0.011975319742144164 ;
	setAttr ".cbx" -type "double3" 8.3025306881205321 6.5710413506788541 2.7334671661295573 ;
createNode polyTweak -n "polyTweak22";
	rename -uid "2B8D1D37-BA4D-7CD7-6D22-17886B3D7F89";
	setAttr ".uopa" yes;
	setAttr -s 112 ".tk";
	setAttr ".tk[540]" -type "float3" 0 -0.0058403006 0 ;
	setAttr ".tk[541]" -type "float3" 0 -0.0058403006 0 ;
	setAttr ".tk[542]" -type "float3" 0 -0.0058403006 0 ;
	setAttr ".tk[543]" -type "float3" 0 0.0058405395 0.043728631 ;
	setAttr ".tk[544]" -type "float3" 0 0.0058405395 0.043728631 ;
	setAttr ".tk[545]" -type "float3" 0 -0.0058403006 0 ;
	setAttr ".tk[546]" -type "float3" 0 -0.0058403006 0 ;
	setAttr ".tk[547]" -type "float3" 0 -0.0058403006 0 ;
	setAttr ".tk[548]" -type "float3" 0 -0.0058403006 0 ;
	setAttr ".tk[549]" -type "float3" 0 -0.0058403006 0 ;
	setAttr ".tk[550]" -type "float3" 0 -0.0058403006 0 ;
	setAttr ".tk[551]" -type "float3" 0 -0.0058403006 0 ;
	setAttr ".tk[552]" -type "float3" 0 -0.0058403006 0 ;
	setAttr ".tk[553]" -type "float3" 0 -0.0058403006 0 ;
	setAttr ".tk[554]" -type "float3" 0 -0.0058403006 0 ;
	setAttr ".tk[555]" -type "float3" 0 -0.0058403006 0 ;
	setAttr ".tk[680]" -type "float3" 0 0 0.023652872 ;
	setAttr ".tk[681]" -type "float3" 0 0 0.023652872 ;
	setAttr ".tk[682]" -type "float3" 0 0 0.03154783 ;
	setAttr ".tk[683]" -type "float3" 0 0 0.03154783 ;
	setAttr ".tk[684]" -type "float3" 0 0 0.043728631 ;
	setAttr ".tk[685]" -type "float3" 0 0 0.043728631 ;
	setAttr ".tk[686]" -type "float3" 0 0.0058405395 0.03154783 ;
	setAttr ".tk[687]" -type "float3" 0.0097460048 -0.005840878 0.033836879 ;
	setAttr ".tk[688]" -type "float3" -0.0097460048 -0.005840878 0.033836879 ;
	setAttr ".tk[689]" -type "float3" 0 0.0058405395 0.03154783 ;
	setAttr ".tk[694]" -type "float3" 0 -0.0058405395 0 ;
	setAttr ".tk[695]" -type "float3" 0 0.0058405395 0 ;
	setAttr ".tk[696]" -type "float3" 0 0.0058405395 0 ;
	setAttr ".tk[697]" -type "float3" 0 -0.0058405395 0 ;
	setAttr ".tk[752]" -type "float3" 0 0.0025864569 0 ;
	setAttr ".tk[753]" -type "float3" 0.0098302756 -0.0025864649 0.033736181 ;
	setAttr ".tk[754]" -type "float3" 0 0.0025864649 0.03154783 ;
	setAttr ".tk[755]" -type "float3" 0 0.0025864649 0.043728631 ;
	setAttr ".tk[756]" -type "float3" 0 0.0025864649 0 ;
	setAttr ".tk[757]" -type "float3" 0 -0.0025864569 0 ;
	setAttr ".tk[758]" -type "float3" 0 0.0025864569 0 ;
	setAttr ".tk[759]" -type "float3" 0 0.0025864569 0 ;
	setAttr ".tk[760]" -type "float3" 0 0.0025864569 0 ;
	setAttr ".tk[761]" -type "float3" 0 0.0025864569 0 ;
	setAttr ".tk[762]" -type "float3" 0 0.0025864569 0 ;
	setAttr ".tk[763]" -type "float3" 0 0.0025864569 0 ;
	setAttr ".tk[764]" -type "float3" 0 0.0025864569 0 ;
	setAttr ".tk[765]" -type "float3" -0.0098302756 -0.0025864649 0.033736181 ;
	setAttr ".tk[766]" -type "float3" 0 0.0025864649 0.03154783 ;
	setAttr ".tk[767]" -type "float3" 0 0.0025864649 0.043728631 ;
	setAttr ".tk[768]" -type "float3" 0 0.0025864649 0 ;
	setAttr ".tk[769]" -type "float3" 0 -0.0025864569 0 ;
	setAttr ".tk[770]" -type "float3" 0 0.0025864569 0 ;
	setAttr ".tk[771]" -type "float3" 0 0.0025864569 0 ;
	setAttr ".tk[772]" -type "float3" 0 0.0025864569 0 ;
	setAttr ".tk[773]" -type "float3" 0 0.0025864569 0 ;
	setAttr ".tk[774]" -type "float3" 0 0.0025864569 0 ;
	setAttr ".tk[775]" -type "float3" 0 0.0025864569 0 ;
	setAttr ".tk[777]" -type "float3" 0 0.0025864649 0.015114984 ;
	setAttr ".tk[778]" -type "float3" 0 0.0058405395 0.015114984 ;
	setAttr ".tk[779]" -type "float3" 0 0 0.015114984 ;
	setAttr ".tk[780]" -type "float3" 0 0 0.015114984 ;
	setAttr ".tk[781]" -type "float3" 0 0.0058405395 0.015114984 ;
	setAttr ".tk[782]" -type "float3" 0 0.0025864649 0.015114984 ;
	setAttr ".tk[785]" -type "float3" 0 0.0025864649 0.057960484 ;
	setAttr ".tk[786]" -type "float3" 0 0.0058405395 0.057960484 ;
	setAttr ".tk[787]" -type "float3" 0 0 0.057960484 ;
	setAttr ".tk[788]" -type "float3" 0 0 0.057960484 ;
	setAttr ".tk[789]" -type "float3" 0 0.0058405395 0.057960484 ;
	setAttr ".tk[790]" -type "float3" 0 0.0025864649 0.057960484 ;
	setAttr ".tk[792]" -type "float3" 0 1.1175871e-08 0 ;
	setAttr ".tk[793]" -type "float3" 0 1.1175871e-08 0 ;
	setAttr ".tk[794]" -type "float3" 0 1.1175871e-08 0 ;
	setAttr ".tk[795]" -type "float3" 0 1.1175871e-08 0 ;
	setAttr ".tk[796]" -type "float3" 0 1.1175871e-08 0 ;
	setAttr ".tk[797]" -type "float3" 0 1.1175871e-08 0 ;
	setAttr ".tk[798]" -type "float3" 0 1.1175871e-08 0 ;
	setAttr ".tk[799]" -type "float3" 0 1.1175871e-08 0 ;
	setAttr ".tk[800]" -type "float3" 0 1.1175871e-08 0 ;
	setAttr ".tk[801]" -type "float3" 0 1.1175871e-08 0 ;
	setAttr ".tk[802]" -type "float3" 0 1.1175871e-08 0 ;
	setAttr ".tk[803]" -type "float3" 0 1.1175871e-08 0 ;
	setAttr ".tk[804]" -type "float3" 0 1.1175871e-08 0 ;
	setAttr ".tk[805]" -type "float3" 0 1.1175871e-08 0 ;
	setAttr ".tk[806]" -type "float3" 0 1.1175871e-08 0 ;
	setAttr ".tk[807]" -type "float3" 0 1.1175871e-08 0 ;
	setAttr ".tk[808]" -type "float3" 0 1.1175871e-08 0 ;
	setAttr ".tk[809]" -type "float3" 0 1.1175871e-08 0 ;
	setAttr ".tk[810]" -type "float3" 0 1.1175871e-08 0 ;
	setAttr ".tk[811]" -type "float3" 0 1.1175871e-08 0 ;
	setAttr ".tk[812]" -type "float3" 0 1.1175871e-08 0 ;
	setAttr ".tk[813]" -type "float3" 0 1.1175871e-08 0 ;
	setAttr ".tk[814]" -type "float3" 0 1.1175871e-08 0 ;
	setAttr ".tk[815]" -type "float3" 0 1.1175871e-08 0 ;
	setAttr ".tk[816]" -type "float3" 0 1.1175871e-08 0 ;
	setAttr ".tk[817]" -type "float3" 0 1.1175871e-08 0 ;
	setAttr ".tk[818]" -type "float3" 0 1.1175871e-08 0 ;
	setAttr ".tk[819]" -type "float3" 0 1.1175871e-08 0 ;
	setAttr ".tk[820]" -type "float3" 0 1.1175871e-08 0 ;
	setAttr ".tk[821]" -type "float3" 0 1.1175871e-08 0 ;
	setAttr ".tk[822]" -type "float3" 0 1.1175871e-08 0 ;
	setAttr ".tk[823]" -type "float3" 0 1.1175871e-08 0 ;
	setAttr ".tk[824]" -type "float3" 0 0 0.036518048 ;
	setAttr ".tk[825]" -type "float3" 0 0 0.057960484 ;
	setAttr ".tk[826]" -type "float3" 0 0 0.028973352 ;
	setAttr ".tk[829]" -type "float3" 0 0 0.036518048 ;
	setAttr ".tk[830]" -type "float3" 0 0 0.057960484 ;
	setAttr ".tk[831]" -type "float3" 0 0 0.028973352 ;
	setAttr ".tk[836]" -type "float3" 0 1.1175871e-08 0 ;
	setAttr ".tk[837]" -type "float3" 0 1.1175871e-08 0 ;
	setAttr ".tk[840]" -type "float3" 0 1.1175871e-08 0 ;
	setAttr ".tk[841]" -type "float3" 0 1.1175871e-08 0 ;
	setAttr ".tk[844]" -type "float3" 0 1.1175871e-08 0 ;
	setAttr ".tk[845]" -type "float3" 0 1.1175871e-08 0 ;
	setAttr ".tk[848]" -type "float3" 0 1.1175871e-08 0 ;
	setAttr ".tk[849]" -type "float3" 0 1.1175871e-08 0 ;
createNode polySplit -n "polySplit13";
	rename -uid "3F2F01C1-3A48-4537-B91F-AB846D2C8A55";
	setAttr -s 17 ".e[0:16]"  0.49269599 0.44362399 0.397273 0.60894001
		 0.61373198 0.316403 0.72696698 0.71147197 0.707362 0.72821498 0.78019899 0.83105499
		 0.79980397 0.79172301 0.79279602 0.61356002 0.49269599;
	setAttr -s 17 ".d[0:16]"  -2147482424 -2147482088 -2147482231 -2147482071 -2147482408 -2147482406 
		-2147482161 -2147482159 -2147482157 -2147482155 -2147482153 -2147482151 -2147482149 -2147482190 -2147482189 -2147482426 -2147482424;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit14";
	rename -uid "BE51B8F6-8E4A-0F19-FEB0-FAA47D55BAD1";
	setAttr -s 17 ".e[0:16]"  0.50730401 0.55637598 0.602727 0.39105999
		 0.38626799 0.68359703 0.72696698 0.71147197 0.707362 0.72821498 0.78019899 0.83105499
		 0.79980397 0.79172301 0.207204 0.38644001 0.50730401;
	setAttr -s 17 ".d[0:16]"  -2147482430 -2147482086 -2147482230 -2147482073 -2147482410 -2147482412 
		-2147482167 -2147482169 -2147482171 -2147482173 -2147482175 -2147482177 -2147482179 -2147482181 -2147482211 -2147482428 -2147482430;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace12";
	rename -uid "6B393FFA-6342-9042-04F0-F890EC78CDE4";
	setAttr ".ics" -type "componentList" 7 "f[674]" "f[677:683]" "f[686:688]" "f[787:789]" "f[797:802]" "f[810:812]" "f[847]";
	setAttr ".ix" -type "matrix" 28.253684908957496 0 0 0 0 22.916877907443986 0 0 0 0 26.370105941302157 0
		 0 74.490777175762844 -1.5049702116519761 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.0026654315 6.5710416 1.3607459 ;
	setAttr ".rs" 1037676087;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -8.3078615510944189 6.5710413506788541 -0.011975319742144164 ;
	setAttr ".cbx" -type "double3" 8.3025306881205321 6.5710413506788541 2.7334671661295573 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak23";
	rename -uid "98F97F89-6644-0F84-2CAD-98BF2012D13A";
	setAttr ".uopa" yes;
	setAttr -s 904 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[1]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[2]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[3]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[4]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[5]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[6]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[7]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[18]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[19]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".tk[21]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[22]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[24]" -type "float3" 0 0 3.7252903e-08 ;
	setAttr ".tk[25]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[29]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[30]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[31]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[32]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[33]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".tk[37]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[38]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[39]" -type "float3" 0 0 -2.9802322e-08 ;
	setAttr ".tk[40]" -type "float3" 0 0 -2.9802322e-08 ;
	setAttr ".tk[41]" -type "float3" 0 0 -2.9802322e-08 ;
	setAttr ".tk[42]" -type "float3" 0 0 4.4703484e-08 ;
	setAttr ".tk[43]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[45]" -type "float3" 0 0 -4.6566129e-10 ;
	setAttr ".tk[46]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[47]" -type "float3" 0 0 1.1175871e-08 ;
	setAttr ".tk[49]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".tk[50]" -type "float3" 0 0 1.1175871e-08 ;
	setAttr ".tk[52]" -type "float3" 0 0 4.6566129e-10 ;
	setAttr ".tk[54]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".tk[55]" -type "float3" 0 0 2.2351742e-08 ;
	setAttr ".tk[56]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".tk[57]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".tk[59]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".tk[63]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[64]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[65]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[66]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".tk[67]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".tk[68]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[69]" -type "float3" 0 0 -1.1175871e-08 ;
	setAttr ".tk[70]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".tk[74]" -type "float3" 0 0 -2.9802322e-08 ;
	setAttr ".tk[75]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".tk[76]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".tk[77]" -type "float3" 0 0 -2.9802322e-08 ;
	setAttr ".tk[78]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[79]" -type "float3" 0 0 5.2154064e-08 ;
	setAttr ".tk[81]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[82]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[83]" -type "float3" 0 0 -2.2351742e-08 ;
	setAttr ".tk[86]" -type "float3" 0 0 -2.2351742e-08 ;
	setAttr ".tk[87]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[88]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[91]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".tk[92]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".tk[93]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".tk[94]" -type "float3" 0 0 7.4505806e-08 ;
	setAttr ".tk[95]" -type "float3" 0 0 2.9802322e-08 ;
	setAttr ".tk[96]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".tk[97]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[99]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[100]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[102]" -type "float3" 0 0 2.9802322e-08 ;
	setAttr ".tk[103]" -type "float3" 0 0 2.9802322e-08 ;
	setAttr ".tk[104]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".tk[105]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[106]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[108]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[110]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".tk[111]" -type "float3" 0 0 -5.9604645e-08 ;
	setAttr ".tk[112]" -type "float3" 0 0 -5.9604645e-08 ;
	setAttr ".tk[114]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".tk[115]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[117]" -type "float3" 0 0 -1.1175871e-08 ;
	setAttr ".tk[120]" -type "float3" 0 0 2.9802322e-08 ;
	setAttr ".tk[122]" -type "float3" 0 0 2.9802322e-08 ;
	setAttr ".tk[123]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[124]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[126]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[127]" -type "float3" 0 0 2.9802322e-08 ;
	setAttr ".tk[128]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".tk[129]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".tk[130]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".tk[131]" -type "float3" 0 0 7.4505806e-08 ;
	setAttr ".tk[133]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[136]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".tk[137]" -type "float3" 0 0 2.9802322e-08 ;
	setAttr ".tk[138]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".tk[139]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".tk[140]" -type "float3" 0 0 2.9802322e-08 ;
	setAttr ".tk[141]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".tk[142]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[144]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[145]" -type "float3" 0 0 2.9802322e-08 ;
	setAttr ".tk[146]" -type "float3" 0 0 2.9802322e-08 ;
	setAttr ".tk[147]" -type "float3" 0 0 2.9802322e-08 ;
	setAttr ".tk[148]" -type "float3" 0 0 2.9802322e-08 ;
	setAttr ".tk[149]" -type "float3" 0 0 -8.9406967e-08 ;
	setAttr ".tk[150]" -type "float3" 0 0 -8.9406967e-08 ;
	setAttr ".tk[151]" -type "float3" 0 0 4.4703484e-08 ;
	setAttr ".tk[153]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[154]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[156]" -type "float3" 0 0 5.9604645e-08 ;
	setAttr ".tk[157]" -type "float3" 0 0 5.9604645e-08 ;
	setAttr ".tk[158]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".tk[159]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".tk[160]" -type "float3" 0 0 1.1175871e-08 ;
	setAttr ".tk[162]" -type "float3" 0 0 -2.2351742e-08 ;
	setAttr ".tk[163]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".tk[164]" -type "float3" 0 0 8.9406967e-08 ;
	setAttr ".tk[165]" -type "float3" 0 0 -2.9802322e-08 ;
	setAttr ".tk[166]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".tk[167]" -type "float3" 0 0 8.9406967e-08 ;
	setAttr ".tk[168]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".tk[169]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[171]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[172]" -type "float3" 0 0 -2.2351742e-08 ;
	setAttr ".tk[174]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".tk[175]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".tk[177]" -type "float3" 0 0 -2.2351742e-08 ;
	setAttr ".tk[180]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[181]" -type "float3" 0 0 2.9802322e-08 ;
	setAttr ".tk[182]" -type "float3" 0 0 2.9802322e-08 ;
	setAttr ".tk[183]" -type "float3" 0 0 -2.9802322e-08 ;
	setAttr ".tk[184]" -type "float3" 0 0 2.9802322e-08 ;
	setAttr ".tk[185]" -type "float3" 0 0 -8.9406967e-08 ;
	setAttr ".tk[186]" -type "float3" 0 0 -8.9406967e-08 ;
	setAttr ".tk[187]" -type "float3" 0 0 4.4703484e-08 ;
	setAttr ".tk[189]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[190]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[192]" -type "float3" 0 0 5.9604645e-08 ;
	setAttr ".tk[193]" -type "float3" 0 0 5.9604645e-08 ;
	setAttr ".tk[194]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".tk[195]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".tk[196]" -type "float3" 0 0 1.1175871e-08 ;
	setAttr ".tk[198]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[199]" -type "float3" 0 0 8.9406967e-08 ;
	setAttr ".tk[200]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".tk[201]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".tk[202]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".tk[203]" -type "float3" 0 0 7.4505806e-08 ;
	setAttr ".tk[205]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[208]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".tk[209]" -type "float3" 0 0 8.9406967e-08 ;
	setAttr ".tk[210]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".tk[211]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".tk[212]" -type "float3" 0 0 8.9406967e-08 ;
	setAttr ".tk[213]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".tk[214]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[216]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[218]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".tk[219]" -type "float3" 0 0 -5.9604645e-08 ;
	setAttr ".tk[220]" -type "float3" 0 0 -5.9604645e-08 ;
	setAttr ".tk[222]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".tk[223]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[225]" -type "float3" 0 0 -1.1175871e-08 ;
	setAttr ".tk[228]" -type "float3" 0 0 -2.9802322e-08 ;
	setAttr ".tk[230]" -type "float3" 0 0 -2.9802322e-08 ;
	setAttr ".tk[231]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[232]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[236]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".tk[237]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".tk[238]" -type "float3" 0 0 7.4505806e-08 ;
	setAttr ".tk[239]" -type "float3" 0 0 -2.9802322e-08 ;
	setAttr ".tk[241]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[243]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[244]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[246]" -type "float3" 0 0 8.9406967e-08 ;
	setAttr ".tk[247]" -type "float3" 0 0 8.9406967e-08 ;
	setAttr ".tk[248]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".tk[249]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[250]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[253]" -type "float3" 0 0 -2.9802322e-08 ;
	setAttr ".tk[254]" -type "float3" 0 0 -8.9406967e-08 ;
	setAttr ".tk[255]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".tk[256]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".tk[257]" -type "float3" 0 0 2.9802322e-08 ;
	setAttr ".tk[258]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[259]" -type "float3" 0 0 3.7252903e-08 ;
	setAttr ".tk[261]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[262]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[263]" -type "float3" 0 0 -2.2351742e-08 ;
	setAttr ".tk[266]" -type "float3" 0 0 -2.2351742e-08 ;
	setAttr ".tk[267]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[268]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[270]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".tk[271]" -type "float3" 0 0 -4.4703484e-08 ;
	setAttr ".tk[273]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".tk[279]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[280]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[281]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[282]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".tk[283]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".tk[284]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[285]" -type "float3" 0 0 -1.1175871e-08 ;
	setAttr ".tk[286]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".tk[289]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[290]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[292]" -type "float3" 0 0 -2.9802322e-08 ;
	setAttr ".tk[293]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[294]" -type "float3" 0 0 4.4703484e-08 ;
	setAttr ".tk[295]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[297]" -type "float3" 0 0 -4.6566129e-10 ;
	setAttr ".tk[298]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[299]" -type "float3" 0 0 1.1175871e-08 ;
	setAttr ".tk[301]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".tk[302]" -type "float3" 0 0 1.1175871e-08 ;
	setAttr ".tk[304]" -type "float3" 0 0 4.6566129e-10 ;
	setAttr ".tk[306]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[307]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".tk[309]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[310]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[312]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[313]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[317]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[318]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[319]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[320]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[321]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".tk[325]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[326]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[327]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[328]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[329]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[330]" -type "float3" 0 0 -1.8626451e-08 ;
	setAttr ".tk[333]" -type "float3" 0 0 -5.5879354e-09 ;
	setAttr ".tk[334]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".tk[336]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[337]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[340]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".tk[342]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[343]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[344]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[345]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[346]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[347]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[348]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[349]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[350]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".tk[353]" -type "float3" 0 0 1.8626451e-09 ;
	setAttr ".tk[354]" -type "float3" 0 0 1.8626451e-09 ;
	setAttr ".tk[355]" -type "float3" 0 0 1.8626451e-09 ;
	setAttr ".tk[359]" -type "float3" 0 0 1.8626451e-09 ;
	setAttr ".tk[360]" -type "float3" 0 0 5.5879354e-09 ;
	setAttr ".tk[362]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[363]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[365]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[367]" -type "float3" 0 0 5.5879354e-09 ;
	setAttr ".tk[368]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".tk[369]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".tk[370]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".tk[371]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[372]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[373]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[374]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[375]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".tk[376]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".tk[377]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".tk[378]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[379]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[380]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".tk[381]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[382]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".tk[383]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".tk[384]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[385]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[387]" -type "float3" 0 0 1.1641532e-10 ;
	setAttr ".tk[390]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[391]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[396]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[399]" -type "float3" 0 0 -2.2351742e-08 ;
	setAttr ".tk[400]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[403]" -type "float3" 0 0 1.8626451e-09 ;
	setAttr ".tk[404]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".tk[406]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".tk[407]" -type "float3" 0 0 -5.5879354e-09 ;
	setAttr ".tk[410]" -type "float3" 0 0 -5.5879354e-09 ;
	setAttr ".tk[411]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".tk[413]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".tk[414]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[415]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".tk[416]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[417]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[419]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[420]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".tk[423]" -type "float3" 0 0 -4.6566129e-10 ;
	setAttr ".tk[424]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".tk[429]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".tk[432]" -type "float3" 0 0 -2.2351742e-08 ;
	setAttr ".tk[433]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".tk[434]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[435]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[436]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[437]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".tk[438]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".tk[439]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".tk[440]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[441]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[442]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[443]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[444]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".tk[446]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".tk[447]" -type "float3" 0 0 1.8626451e-09 ;
	setAttr ".tk[448]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[449]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[450]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[451]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".tk[452]" -type "float3" 0 0 2.2351742e-08 ;
	setAttr ".tk[453]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[454]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[457]" -type "float3" 0 0 1.8626451e-09 ;
	setAttr ".tk[458]" -type "float3" 0 0 1.8626451e-09 ;
	setAttr ".tk[459]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[460]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[461]" -type "float3" 0 0 1.8626451e-09 ;
	setAttr ".tk[462]" -type "float3" 0 0 1.8626451e-09 ;
	setAttr ".tk[463]" -type "float3" 0 0 2.3283064e-10 ;
	setAttr ".tk[465]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[466]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[467]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[469]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[470]" -type "float3" 0 0 -1.1175871e-08 ;
	setAttr ".tk[471]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".tk[472]" -type "float3" 0 0 -1.8626451e-08 ;
	setAttr ".tk[474]" -type "float3" 0 0 -5.5879354e-09 ;
	setAttr ".tk[475]" -type "float3" 0 0 4.6566129e-10 ;
	setAttr ".tk[476]" -type "float3" 0 0 -4.6566129e-10 ;
	setAttr ".tk[477]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".tk[478]" -type "float3" 0 0 -1.1175871e-08 ;
	setAttr ".tk[479]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[480]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[481]" -type "float3" 0 0 -1.1175871e-08 ;
	setAttr ".tk[482]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".tk[483]" -type "float3" 0 0 -4.6566129e-10 ;
	setAttr ".tk[484]" -type "float3" 0 0 4.6566129e-10 ;
	setAttr ".tk[485]" -type "float3" 0 0 -5.5879354e-09 ;
	setAttr ".tk[486]" -type "float3" 0 0 -2.7939677e-09 ;
	setAttr ".tk[487]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".tk[488]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[489]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[490]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[493]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[494]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".tk[495]" -type "float3" 0 0 -2.7939677e-09 ;
	setAttr ".tk[497]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".tk[502]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".tk[515]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".tk[516]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[517]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[518]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[519]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[520]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".tk[522]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[523]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[525]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".tk[526]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[527]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[528]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[529]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[531]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[532]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".tk[533]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".tk[535]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[536]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[538]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".tk[539]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".tk[540]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[543]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".tk[544]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".tk[547]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[550]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".tk[551]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".tk[552]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".tk[553]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".tk[554]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".tk[555]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".tk[556]" -type "float3" 0 0 4.6566129e-10 ;
	setAttr ".tk[557]" -type "float3" 0 0 -4.6566129e-10 ;
	setAttr ".tk[558]" -type "float3" 0 0 1.1175871e-08 ;
	setAttr ".tk[559]" -type "float3" 0 0 1.8626451e-08 ;
	setAttr ".tk[560]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[561]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[562]" -type "float3" 0 0 1.8626451e-09 ;
	setAttr ".tk[563]" -type "float3" 0 0 1.8626451e-09 ;
	setAttr ".tk[564]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[565]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[570]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".tk[571]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".tk[578]" -type "float3" 0 0 2.9802322e-08 ;
	setAttr ".tk[579]" -type "float3" 0 0 2.9802322e-08 ;
	setAttr ".tk[580]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".tk[581]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".tk[582]" -type "float3" 0 0 -8.9406967e-08 ;
	setAttr ".tk[583]" -type "float3" 0 0 -8.9406967e-08 ;
	setAttr ".tk[584]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".tk[585]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".tk[586]" -type "float3" 0 0 2.9802322e-08 ;
	setAttr ".tk[587]" -type "float3" 0 0 2.9802322e-08 ;
	setAttr ".tk[588]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".tk[589]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".tk[592]" -type "float3" 0 0 -4.4703484e-08 ;
	setAttr ".tk[593]" -type "float3" 0 0 -4.4703484e-08 ;
	setAttr ".tk[594]" -type "float3" 0 0 -5.9604645e-08 ;
	setAttr ".tk[595]" -type "float3" 0 0 -5.9604645e-08 ;
	setAttr ".tk[600]" -type "float3" 0 0 -4.4703484e-08 ;
	setAttr ".tk[601]" -type "float3" 0 0 -4.4703484e-08 ;
	setAttr ".tk[602]" -type "float3" 0 0 2.9802322e-08 ;
	setAttr ".tk[603]" -type "float3" 0 0 -2.9802322e-08 ;
	setAttr ".tk[604]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".tk[605]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".tk[606]" -type "float3" 0 0 -2.9802322e-08 ;
	setAttr ".tk[607]" -type "float3" 0 0 -8.9406967e-08 ;
	setAttr ".tk[608]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".tk[609]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".tk[610]" -type "float3" 0 0 8.9406967e-08 ;
	setAttr ".tk[611]" -type "float3" 0 0 8.9406967e-08 ;
	setAttr ".tk[612]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".tk[613]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".tk[618]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".tk[619]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".tk[626]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[627]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[628]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[629]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[630]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[631]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[632]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".tk[633]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".tk[636]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[637]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[640]" -type "float3" 0 0 -1.1175871e-08 ;
	setAttr ".tk[641]" -type "float3" 0 0 1.1175871e-08 ;
	setAttr ".tk[644]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[645]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[648]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[649]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[650]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[651]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[652]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[653]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[654]" -type "float3" 0 0 -2.2351742e-08 ;
	setAttr ".tk[655]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[656]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[657]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[658]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[659]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[661]" -type "float3" 0 0 1.8626451e-08 ;
	setAttr ".tk[662]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[663]" -type "float3" 0 0 1.1175871e-08 ;
	setAttr ".tk[664]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[665]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[666]" -type "float3" 0 0 1.1175871e-08 ;
	setAttr ".tk[667]" -type "float3" 0 0 1.1175871e-08 ;
	setAttr ".tk[668]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[669]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[670]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[671]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[672]" -type "float3" 0 0 -1.1175871e-08 ;
	setAttr ".tk[673]" -type "float3" 0 0 -1.1175871e-08 ;
	setAttr ".tk[674]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[675]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[676]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".tk[677]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".tk[678]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[679]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[681]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[682]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[683]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[684]" -type "float3" 0 0 1.8626451e-09 ;
	setAttr ".tk[685]" -type "float3" 0 0 1.8626451e-09 ;
	setAttr ".tk[686]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[687]" -type "float3" 0 0 1.1175871e-08 ;
	setAttr ".tk[688]" -type "float3" 0 0 1.1175871e-08 ;
	setAttr ".tk[689]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[691]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[692]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[693]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[695]" -type "float3" 0 0 1.8626451e-09 ;
	setAttr ".tk[696]" -type "float3" 0 0 1.8626451e-09 ;
	setAttr ".tk[698]" -type "float3" 0 0 1.8626451e-09 ;
	setAttr ".tk[700]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".tk[701]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[704]" -type "float3" 0 0 -1.1175871e-08 ;
	setAttr ".tk[705]" -type "float3" 0 0 1.1175871e-08 ;
	setAttr ".tk[708]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[709]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".tk[710]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".tk[714]" -type "float3" 0 0 -1.1175871e-08 ;
	setAttr ".tk[715]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[716]" -type "float3" 0 0 1.1175871e-08 ;
	setAttr ".tk[717]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[719]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".tk[720]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[721]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".tk[722]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".tk[725]" -type "float3" 0 0 -4.6566129e-10 ;
	setAttr ".tk[727]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".tk[728]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".tk[730]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[731]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[733]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[734]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[735]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[736]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[740]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[741]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[742]" -type "float3" 0 0 -1.1175871e-08 ;
	setAttr ".tk[743]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[744]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[745]" -type "float3" 0 0 -1.1175871e-08 ;
	setAttr ".tk[746]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[747]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[751]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[752]" -type "float3" 0 0 -2.2351742e-08 ;
	setAttr ".tk[754]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[755]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".tk[756]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[757]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[758]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[761]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[762]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[763]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[764]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[765]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[767]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".tk[769]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[770]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[773]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[774]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[775]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[776]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".tk[777]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[779]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".tk[780]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".tk[781]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[783]" -type "float3" 0 0 2.7939677e-09 ;
	setAttr ".tk[785]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".tk[786]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".tk[787]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".tk[789]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".tk[792]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".tk[793]" -type "float3" 0 0 4.6566129e-10 ;
	setAttr ".tk[794]" -type "float3" 0 0 4.6566129e-10 ;
	setAttr ".tk[795]" -type "float3" 0 0 1.8626451e-09 ;
	setAttr ".tk[798]" -type "float3" 0 0 1.8626451e-09 ;
	setAttr ".tk[799]" -type "float3" 0 0 4.6566129e-10 ;
	setAttr ".tk[802]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".tk[803]" -type "float3" 0 0 1.3969839e-09 ;
	setAttr ".tk[804]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".tk[812]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".tk[814]" -type "float3" 0 0 -4.6566129e-10 ;
	setAttr ".tk[815]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".tk[817]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".tk[818]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".tk[819]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".tk[820]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[821]" -type "float3" 0 0 -5.5879354e-09 ;
	setAttr ".tk[823]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[826]" -type "float3" 0 0 -4.6566129e-10 ;
	setAttr ".tk[828]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".tk[829]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".tk[831]" -type "float3" 0 0 1.8626451e-09 ;
	setAttr ".tk[832]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".tk[833]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".tk[834]" -type "float3" 0 0 4.6566129e-10 ;
	setAttr ".tk[837]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".tk[842]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[843]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[844]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[846]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[850]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[855]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[866]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[867]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[868]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[869]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[871]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[873]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[877]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[878]" -type "float3" -0.0054473914 0.010390309 0 ;
	setAttr ".tk[879]" -type "float3" -0.0053170584 0.013879778 0 ;
	setAttr ".tk[880]" -type "float3" -0.0051946985 0.017154241 0 ;
	setAttr ".tk[881]" -type "float3" -0.005181374 0.017503798 0 ;
	setAttr ".tk[882]" -type "float3" -0.005169881 0.017809009 0 ;
	setAttr ".tk[883]" -type "float3" -0.0044402112 0.016200658 0 ;
	setAttr ".tk[884]" -type "float3" -0.0033858349 0.0065955427 0 ;
	setAttr ".tk[885]" -type "float3" -2.4415063e-05 0.0044132392 0 ;
	setAttr ".tk[886]" -type "float3" 0.0029587839 0.0038343482 0 ;
	setAttr ".tk[887]" -type "float3" 0.0048497529 0.006771171 0 ;
	setAttr ".tk[888]" -type "float3" 0.0054473914 0.014092479 0 ;
	setAttr ".tk[889]" -type "float3" 0.0047372715 0.021254705 0 ;
	setAttr ".tk[890]" -type "float3" 0.002875865 0.016853694 0 ;
	setAttr ".tk[891]" -type "float3" -7.1809111e-05 0.015715556 0 ;
	setAttr ".tk[892]" -type "float3" -0.003057682 0.015866514 0 ;
	setAttr ".tk[893]" -type "float3" -0.0044716992 0.0087966556 0 ;
	setAttr ".tk[894]" -type "float3" 0.0054473947 0.010390309 0 ;
	setAttr ".tk[895]" -type "float3" 0.0053170705 0.013879721 0 ;
	setAttr ".tk[896]" -type "float3" 0.0051947008 0.017154241 0 ;
	setAttr ".tk[897]" -type "float3" 0.0051797824 0.017550012 0 ;
	setAttr ".tk[898]" -type "float3" 0.0051678475 0.017867763 0 ;
	setAttr ".tk[899]" -type "float3" 0.0044402145 0.016200803 0 ;
	setAttr ".tk[900]" -type "float3" 0.0033858379 0.0065955427 0 ;
	setAttr ".tk[901]" -type "float3" 2.4413639e-05 0.0044132392 0 ;
	setAttr ".tk[902]" -type "float3" -0.0029587839 0.0038343482 0 ;
	setAttr ".tk[903]" -type "float3" -0.004849751 0.006771171 0 ;
	setAttr ".tk[904]" -type "float3" -0.0054473933 0.014092479 0 ;
	setAttr ".tk[905]" -type "float3" -0.0047372594 0.021254705 0 ;
	setAttr ".tk[906]" -type "float3" -0.0028758554 0.016853694 0 ;
	setAttr ".tk[907]" -type "float3" 7.181101e-05 0.015715556 0 ;
	setAttr ".tk[908]" -type "float3" 0.0030576861 0.015866807 0 ;
	setAttr ".tk[909]" -type "float3" 0.0044734487 0.0088192457 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace13";
	rename -uid "DCFCAA5F-8646-38DC-FC08-7AB28C30348F";
	setAttr ".ics" -type "componentList" 7 "f[674]" "f[677:683]" "f[686:688]" "f[787:789]" "f[797:802]" "f[810:812]" "f[847]";
	setAttr ".ix" -type "matrix" 28.253684908957496 0 0 0 0 22.916877907443986 0 0 0 0 26.370105941302157 0
		 0 74.490777175762844 -1.5049702116519761 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.0026654315 5.3304396 1.3607086 ;
	setAttr ".rs" 1829221076;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -8.3078615510944189 5.330439700462648 -0.11877988788238447 ;
	setAttr ".cbx" -type "double3" 8.3025306881205321 5.330439700462648 2.8401969764456254 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak24";
	rename -uid "478BA5A6-E74F-466C-67D0-1DA0D9167589";
	setAttr ".uopa" yes;
	setAttr -s 41 ".tk";
	setAttr ".tk[898]" -type "float3" 5.5511151e-17 -0.054134849 -0.0035057229 ;
	setAttr ".tk[899]" -type "float3" 5.5511151e-17 -0.054134849 -0.0023018781 ;
	setAttr ".tk[900]" -type "float3" 5.5511151e-17 -0.054134849 -0.0020247095 ;
	setAttr ".tk[901]" -type "float3" 2.7755576e-17 -0.054134849 -0.0022970359 ;
	setAttr ".tk[902]" -type "float3" 5.5511151e-17 -0.054134849 -0.0040473803 ;
	setAttr ".tk[903]" -type "float3" 2.7755576e-17 -0.054134849 0.0022921232 ;
	setAttr ".tk[904]" -type "float3" 2.7755576e-17 -0.054134849 0.0020247083 ;
	setAttr ".tk[905]" -type "float3" 2.7755576e-17 -0.054134849 0.0028080433 ;
	setAttr ".tk[906]" -type "float3" 2.7755576e-17 -0.054134849 0.0037765268 ;
	setAttr ".tk[907]" -type "float3" 5.5511151e-17 -0.054134849 0.0040473808 ;
	setAttr ".tk[908]" -type "float3" 5.5511151e-17 -0.054134849 0.0022925986 ;
	setAttr ".tk[909]" -type "float3" 5.5511151e-17 -0.054134849 0.0035045447 ;
	setAttr ".tk[910]" -type "float3" 5.5511151e-17 -0.054134849 0.0020226706 ;
	setAttr ".tk[911]" -type "float3" 2.7755576e-17 -0.054134849 -0.0020226729 ;
	setAttr ".tk[912]" -type "float3" 2.7755576e-17 -0.054134849 1.1759051e-06 ;
	setAttr ".tk[913]" -type "float3" 2.7755576e-17 -0.054134849 -9.4844336e-07 ;
	setAttr ".tk[914]" -type "float3" 5.5511151e-17 -0.054134849 -2.8378511e-06 ;
	setAttr ".tk[915]" -type "float3" 5.5511151e-17 -0.054134849 -1.1780116e-06 ;
	setAttr ".tk[916]" -type "float3" 2.7755576e-17 -0.054134849 -0.0028126447 ;
	setAttr ".tk[917]" -type "float3" 2.7755576e-17 -0.054134849 -0.0037733708 ;
	setAttr ".tk[918]" -type "float3" -5.5511151e-17 -0.054134849 -0.0040502134 ;
	setAttr ".tk[919]" -type "float3" -2.7755576e-17 -0.054134849 -0.0022966247 ;
	setAttr ".tk[920]" -type "float3" -2.7755576e-17 -0.054134849 -0.0020227977 ;
	setAttr ".tk[921]" -type "float3" -2.7755576e-17 -0.054134849 -0.0028137343 ;
	setAttr ".tk[922]" -type "float3" -2.7755576e-17 -0.054134849 -0.0037754141 ;
	setAttr ".tk[923]" -type "float3" -5.5511151e-17 -0.054134849 -0.0035096693 ;
	setAttr ".tk[924]" -type "float3" -5.5511151e-17 -0.054134849 -0.0022936696 ;
	setAttr ".tk[925]" -type "float3" -5.5511151e-17 -0.054134849 -0.0020291877 ;
	setAttr ".tk[926]" -type "float3" -5.5511151e-17 -0.054134849 0.0022980613 ;
	setAttr ".tk[927]" -type "float3" -5.5511151e-17 -0.054134849 0.0020192564 ;
	setAttr ".tk[928]" -type "float3" -5.5511151e-17 -0.054134849 0.0035024441 ;
	setAttr ".tk[929]" -type "float3" -2.7755576e-17 -0.054134849 0.0022970033 ;
	setAttr ".tk[930]" -type "float3" -5.5511151e-17 -0.054134849 0.0040466762 ;
	setAttr ".tk[931]" -type "float3" -2.7755576e-17 -0.054134849 0.0020256462 ;
	setAttr ".tk[932]" -type "float3" -2.7755576e-17 -0.054134849 0.0037763363 ;
	setAttr ".tk[933]" -type "float3" -2.7755576e-17 -0.054134849 0.0028087839 ;
	setAttr ".tk[934]" -type "float3" -5.5511151e-17 -0.054134849 -5.4605971e-06 ;
	setAttr ".tk[935]" -type "float3" -5.5511151e-17 -0.054134849 3.1287063e-06 ;
	setAttr ".tk[936]" -type "float3" -2.7755576e-17 -0.054134849 1.4705212e-06 ;
	setAttr ".tk[937]" -type "float3" -2.7755576e-17 -0.054134849 1.9200302e-06 ;
createNode polyExtrudeFace -n "polyExtrudeFace14";
	rename -uid "93B1C69D-AE45-8054-E290-269B99F709F8";
	setAttr ".ics" -type "componentList" 7 "f[674]" "f[677:683]" "f[686:688]" "f[787:789]" "f[797:802]" "f[810:812]" "f[847]";
	setAttr ".ix" -type "matrix" 28.253684908957496 0 0 0 0 22.916877907443986 0 0 0 0 26.370105941302157 0
		 0 74.490777175762844 -1.5049702116519761 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.0026654315 4.2329845 0.50150883 ;
	setAttr ".rs" 1327356650;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -8.3078615510944189 4.2329843945021679 -1.8985507051331765 ;
	setAttr ".cbx" -type "double3" 8.3025306881205321 4.2329843945021679 2.9015683365126117 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak25";
	rename -uid "0B1AA51F-CA46-DFAB-59D8-A48DE5F7FB77";
	setAttr ".uopa" yes;
	setAttr -s 41 ".tk";
	setAttr ".tk[926]" -type "float3" 5.5511151e-17 -0.047888521 -0.062797271 ;
	setAttr ".tk[927]" -type "float3" 5.5511151e-17 -0.047888521 -0.052417431 ;
	setAttr ".tk[928]" -type "float3" 5.5511151e-17 -0.047888521 -0.050027635 ;
	setAttr ".tk[929]" -type "float3" 2.7755576e-17 -0.047888521 -0.052375685 ;
	setAttr ".tk[930]" -type "float3" 5.5511151e-17 -0.047888521 -0.06746757 ;
	setAttr ".tk[931]" -type "float3" 2.7755576e-17 -0.047888521 -0.012806952 ;
	setAttr ".tk[932]" -type "float3" 2.7755576e-17 -0.047888521 -0.015112662 ;
	setAttr ".tk[933]" -type "float3" 2.7755576e-17 -0.047888521 -0.008358581 ;
	setAttr ".tk[934]" -type "float3" 2.7755576e-17 -0.047888521 -8.0943573e-06 ;
	setAttr ".tk[935]" -type "float3" 5.5511151e-17 -0.047888521 0.0023272934 ;
	setAttr ".tk[936]" -type "float3" 5.5511151e-17 -0.047888521 -0.012802845 ;
	setAttr ".tk[937]" -type "float3" 5.5511151e-17 -0.047888521 -0.0023531627 ;
	setAttr ".tk[938]" -type "float3" 5.5511151e-17 -0.047888521 -0.015130234 ;
	setAttr ".tk[939]" -type "float3" 2.7755576e-17 -0.047888521 -0.050010078 ;
	setAttr ".tk[940]" -type "float3" 2.7755576e-17 -0.047888521 -0.032560006 ;
	setAttr ".tk[941]" -type "float3" 2.7755576e-17 -0.047888521 -0.032578316 ;
	setAttr ".tk[942]" -type "float3" 5.5511151e-17 -0.047888521 -0.032594614 ;
	setAttr ".tk[943]" -type "float3" 5.5511151e-17 -0.047888521 -0.032580301 ;
	setAttr ".tk[944]" -type "float3" 2.7755576e-17 -0.047888521 -0.056821391 ;
	setAttr ".tk[945]" -type "float3" 2.7755576e-17 -0.047888521 -0.065104984 ;
	setAttr ".tk[946]" -type "float3" -5.5511151e-17 -0.047888521 -0.067491986 ;
	setAttr ".tk[947]" -type "float3" -2.7755576e-17 -0.047888521 -0.052372143 ;
	setAttr ".tk[948]" -type "float3" -2.7755576e-17 -0.047888521 -0.050011151 ;
	setAttr ".tk[949]" -type "float3" -2.7755576e-17 -0.047888521 -0.05683079 ;
	setAttr ".tk[950]" -type "float3" -2.7755576e-17 -0.047888521 -0.065122612 ;
	setAttr ".tk[951]" -type "float3" -5.5511151e-17 -0.047888521 -0.062831275 ;
	setAttr ".tk[952]" -type "float3" -5.5511151e-17 -0.047888521 -0.052346665 ;
	setAttr ".tk[953]" -type "float3" -5.5511151e-17 -0.047888521 -0.05006624 ;
	setAttr ".tk[954]" -type "float3" -5.5511151e-17 -0.047888521 -0.012755759 ;
	setAttr ".tk[955]" -type "float3" -5.5511151e-17 -0.047888521 -0.01515966 ;
	setAttr ".tk[956]" -type "float3" -5.5511151e-17 -0.047888521 -0.0023712956 ;
	setAttr ".tk[957]" -type "float3" -2.7755576e-17 -0.047888521 -0.012764873 ;
	setAttr ".tk[958]" -type "float3" -5.5511151e-17 -0.047888521 0.0023211951 ;
	setAttr ".tk[959]" -type "float3" -2.7755576e-17 -0.047888521 -0.015104582 ;
	setAttr ".tk[960]" -type "float3" -2.7755576e-17 -0.047888521 -9.7185839e-06 ;
	setAttr ".tk[961]" -type "float3" -2.7755576e-17 -0.047888521 -0.0083521903 ;
	setAttr ".tk[962]" -type "float3" -5.5511151e-17 -0.047888521 -0.03261723 ;
	setAttr ".tk[963]" -type "float3" -5.5511151e-17 -0.047888521 -0.032543167 ;
	setAttr ".tk[964]" -type "float3" -2.7755576e-17 -0.047888521 -0.032557465 ;
	setAttr ".tk[965]" -type "float3" -2.7755576e-17 -0.047888521 -0.032553587 ;
createNode polyExtrudeFace -n "polyExtrudeFace15";
	rename -uid "971A8FB2-D94B-988C-6C08-7CB8BC36FCB7";
	setAttr ".ics" -type "componentList" 7 "f[674]" "f[677:683]" "f[686:688]" "f[787:789]" "f[797:802]" "f[810:812]" "f[847]";
	setAttr ".ix" -type "matrix" 28.253684908957496 0 0 0 0 22.916877907443986 0 0 0 0 26.370105941302157 0
		 0 74.490777175762844 -1.5049702116519761 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.0026654315 2.8969574 -0.69190001 ;
	setAttr ".rs" 365582849;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -8.3078615510944189 2.8969573119249503 -4.5853308933783747 ;
	setAttr ".cbx" -type "double3" 8.3025306881205321 2.8969573119249503 3.2015309133252936 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak26";
	rename -uid "6486F0DE-2040-0340-13BA-099C74D9993E";
	setAttr ".uopa" yes;
	setAttr -s 41 ".tk";
	setAttr ".tk[954]" -type "float3" 5.5511151e-17 -0.058299068 -0.094271466 ;
	setAttr ".tk[955]" -type "float3" 5.5511151e-17 -0.058299068 -0.077433065 ;
	setAttr ".tk[956]" -type "float3" 5.5511151e-17 -0.058299068 -0.073556282 ;
	setAttr ".tk[957]" -type "float3" 2.7755576e-17 -0.058299068 -0.077365331 ;
	setAttr ".tk[958]" -type "float3" 5.5511151e-17 -0.058299068 -0.10184773 ;
	setAttr ".tk[959]" -type "float3" 2.7755576e-17 -0.058299068 -0.013176042 ;
	setAttr ".tk[960]" -type "float3" 2.7755576e-17 -0.058299068 -0.016916389 ;
	setAttr ".tk[961]" -type "float3" 2.7755576e-17 -0.058299068 -0.0059597725 ;
	setAttr ".tk[962]" -type "float3" 2.7755576e-17 -0.058299068 0.00758659 ;
	setAttr ".tk[963]" -type "float3" 5.5511151e-17 -0.058299068 0.011375078 ;
	setAttr ".tk[964]" -type "float3" 5.5511151e-17 -0.058299068 -0.013169355 ;
	setAttr ".tk[965]" -type "float3" 5.5511151e-17 -0.058299068 0.0037823201 ;
	setAttr ".tk[966]" -type "float3" 5.5511151e-17 -0.058299068 -0.016944908 ;
	setAttr ".tk[967]" -type "float3" 2.7755576e-17 -0.058299068 -0.073527791 ;
	setAttr ".tk[968]" -type "float3" 2.7755576e-17 -0.058299068 -0.045219865 ;
	setAttr ".tk[969]" -type "float3" 2.7755576e-17 -0.058299068 -0.04524957 ;
	setAttr ".tk[970]" -type "float3" 5.5511151e-17 -0.058299068 -0.045276005 ;
	setAttr ".tk[971]" -type "float3" 5.5511151e-17 -0.058299068 -0.045252789 ;
	setAttr ".tk[972]" -type "float3" 2.7755576e-17 -0.058299068 -0.08457727 ;
	setAttr ".tk[973]" -type "float3" 2.7755576e-17 -0.058299068 -0.098015092 ;
	setAttr ".tk[974]" -type "float3" -5.5511151e-17 -0.058299068 -0.10188735 ;
	setAttr ".tk[975]" -type "float3" -2.7755576e-17 -0.058299068 -0.077359587 ;
	setAttr ".tk[976]" -type "float3" -2.7755576e-17 -0.058299068 -0.073529519 ;
	setAttr ".tk[977]" -type "float3" -2.7755576e-17 -0.058299068 -0.084592514 ;
	setAttr ".tk[978]" -type "float3" -2.7755576e-17 -0.058299068 -0.09804368 ;
	setAttr ".tk[979]" -type "float3" -5.5511151e-17 -0.058299068 -0.094326667 ;
	setAttr ".tk[980]" -type "float3" -5.5511151e-17 -0.058299068 -0.077318266 ;
	setAttr ".tk[981]" -type "float3" -5.5511151e-17 -0.058299068 -0.073618889 ;
	setAttr ".tk[982]" -type "float3" -5.5511151e-17 -0.058299068 -0.013092975 ;
	setAttr ".tk[983]" -type "float3" -5.5511151e-17 -0.058299068 -0.016992662 ;
	setAttr ".tk[984]" -type "float3" -5.5511151e-17 -0.058299068 0.0037529648 ;
	setAttr ".tk[985]" -type "float3" -2.7755576e-17 -0.058299068 -0.013107757 ;
	setAttr ".tk[986]" -type "float3" -5.5511151e-17 -0.058299068 0.011365221 ;
	setAttr ".tk[987]" -type "float3" -2.7755576e-17 -0.058299068 -0.016903287 ;
	setAttr ".tk[988]" -type "float3" -2.7755576e-17 -0.058299068 0.0075839227 ;
	setAttr ".tk[989]" -type "float3" -2.7755576e-17 -0.058299068 -0.0059493752 ;
	setAttr ".tk[990]" -type "float3" -5.5511151e-17 -0.058299068 -0.045312695 ;
	setAttr ".tk[991]" -type "float3" -5.5511151e-17 -0.058299068 -0.045192547 ;
	setAttr ".tk[992]" -type "float3" -2.7755576e-17 -0.058299068 -0.045215737 ;
	setAttr ".tk[993]" -type "float3" -2.7755576e-17 -0.058299068 -0.045209456 ;
createNode polyExtrudeFace -n "polyExtrudeFace16";
	rename -uid "7CD2ABDD-7249-AB2C-D82D-5290065CBC0B";
	setAttr ".ics" -type "componentList" 7 "f[674]" "f[677:683]" "f[686:688]" "f[787:789]" "f[797:802]" "f[810:812]" "f[847]";
	setAttr ".ix" -type "matrix" 28.253684908957496 0 0 0 0 22.916877907443986 0 0 0 0 26.370105941302157 0
		 0 74.490777175762844 -1.5049702116519761 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.0026654315 2.2766564 -0.93055308 ;
	setAttr ".rs" 719914921;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -8.3078615510944189 2.2766564868168473 -5.0402859887244551 ;
	setAttr ".cbx" -type "double3" 8.3025306881205321 2.2766564868168473 3.1791797974421936 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak27";
	rename -uid "A1996CED-8040-5D78-567F-68BDC55ED5D3";
	setAttr ".uopa" yes;
	setAttr -s 41 ".tk";
	setAttr ".tk[982]" -type "float3" 5.5511151e-17 -0.027067427 -0.016149575 ;
	setAttr ".tk[983]" -type "float3" 5.5511151e-17 -0.027067427 -0.013710679 ;
	setAttr ".tk[984]" -type "float3" 5.5511151e-17 -0.027067427 -0.013149161 ;
	setAttr ".tk[985]" -type "float3" 2.7755576e-17 -0.027067427 -0.01370087 ;
	setAttr ".tk[986]" -type "float3" 5.5511151e-17 -0.027067427 -0.017246928 ;
	setAttr ".tk[987]" -type "float3" 2.7755576e-17 -0.027067427 -0.0044036098 ;
	setAttr ".tk[988]" -type "float3" 2.7755576e-17 -0.027067427 -0.0049453676 ;
	setAttr ".tk[989]" -type "float3" 2.7755576e-17 -0.027067427 -0.0033583979 ;
	setAttr ".tk[990]" -type "float3" 2.7755576e-17 -0.027067427 -0.0013963266 ;
	setAttr ".tk[991]" -type "float3" 5.5511151e-17 -0.027067427 -0.00084759691 ;
	setAttr ".tk[992]" -type "float3" 5.5511151e-17 -0.027067427 -0.0044026431 ;
	setAttr ".tk[993]" -type "float3" 5.5511151e-17 -0.027067427 -0.0019473406 ;
	setAttr ".tk[994]" -type "float3" 5.5511151e-17 -0.027067427 -0.0049494989 ;
	setAttr ".tk[995]" -type "float3" 2.7755576e-17 -0.027067427 -0.013145035 ;
	setAttr ".tk[996]" -type "float3" 2.7755576e-17 -0.027067427 -0.009044881 ;
	setAttr ".tk[997]" -type "float3" 2.7755576e-17 -0.027067427 -0.0090491837 ;
	setAttr ".tk[998]" -type "float3" 5.5511151e-17 -0.027067427 -0.0090530124 ;
	setAttr ".tk[999]" -type "float3" 5.5511151e-17 -0.027067427 -0.0090496494 ;
	setAttr ".tk[1000]" -type "float3" 2.7755576e-17 -0.027067427 -0.014745453 ;
	setAttr ".tk[1001]" -type "float3" 2.7755576e-17 -0.027067427 -0.016691806 ;
	setAttr ".tk[1002]" -type "float3" -5.5511151e-17 -0.027067427 -0.017252667 ;
	setAttr ".tk[1003]" -type "float3" -2.7755576e-17 -0.027067427 -0.013700037 ;
	setAttr ".tk[1004]" -type "float3" -2.7755576e-17 -0.027067427 -0.013145287 ;
	setAttr ".tk[1005]" -type "float3" -2.7755576e-17 -0.027067427 -0.014747661 ;
	setAttr ".tk[1006]" -type "float3" -2.7755576e-17 -0.027067427 -0.016695946 ;
	setAttr ".tk[1007]" -type "float3" -5.5511151e-17 -0.027067427 -0.016157568 ;
	setAttr ".tk[1008]" -type "float3" -5.5511151e-17 -0.027067427 -0.013694052 ;
	setAttr ".tk[1009]" -type "float3" -5.5511151e-17 -0.027067427 -0.013158231 ;
	setAttr ".tk[1010]" -type "float3" -5.5511151e-17 -0.027067427 -0.004391579 ;
	setAttr ".tk[1011]" -type "float3" -5.5511151e-17 -0.027067427 -0.004956414 ;
	setAttr ".tk[1012]" -type "float3" -5.5511151e-17 -0.027067427 -0.0019515939 ;
	setAttr ".tk[1013]" -type "float3" -2.7755576e-17 -0.027067427 -0.0043937219 ;
	setAttr ".tk[1014]" -type "float3" -5.5511151e-17 -0.027067427 -0.00084902742 ;
	setAttr ".tk[1015]" -type "float3" -2.7755576e-17 -0.027067427 -0.0049434695 ;
	setAttr ".tk[1016]" -type "float3" -2.7755576e-17 -0.027067427 -0.0013967121 ;
	setAttr ".tk[1017]" -type "float3" -2.7755576e-17 -0.027067427 -0.0033568942 ;
	setAttr ".tk[1018]" -type "float3" -5.5511151e-17 -0.027067427 -0.0090583265 ;
	setAttr ".tk[1019]" -type "float3" -5.5511151e-17 -0.027067427 -0.0090409238 ;
	setAttr ".tk[1020]" -type "float3" -2.7755576e-17 -0.027067427 -0.0090442831 ;
	setAttr ".tk[1021]" -type "float3" -2.7755576e-17 -0.027067427 -0.0090433732 ;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr ":defaultColorMgtGlobals.cme" "imagePlaneShape1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "imagePlaneShape1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "imagePlaneShape1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "imagePlaneShape1.ws";
connectAttr ":frontShape.msg" "imagePlaneShape1.ltc";
connectAttr "layer1.di" "bounding_cube.do";
connectAttr "polyCube1.out" "bounding_cubeShape.i";
connectAttr ":defaultColorMgtGlobals.cme" "imagePlaneShape2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "imagePlaneShape2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "imagePlaneShape2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "imagePlaneShape2.ws";
connectAttr "polyExtrudeFace16.out" "pSphereShape1.i";
connectAttr "polyTweakUV4.uvtk[0]" "pSphereShape1.uvst[0].uvtw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "layerManager.dli[1]" "layer1.id";
connectAttr "polySphere1.out" "polyExtrudeFace1.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyTweak1.out" "polyExtrudeFace2.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyExtrudeFace3.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyExtrudeFace4.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyExtrudeFace5.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak4.ip";
connectAttr "polyExtrudeFace5.out" "polyTweak5.ip";
connectAttr "polyTweak5.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polyCloseBorder1.ip";
connectAttr "polyCloseBorder1.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polySplit4.out" "polySplit5.ip";
connectAttr "polySplit5.out" "polySplit6.ip";
connectAttr "polySplit6.out" "polySplit7.ip";
connectAttr "polySplit7.out" "polySplit8.ip";
connectAttr "polySplit8.out" "polySplitRing1.ip";
connectAttr "pSphereShape1.wm" "polySplitRing1.mp";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "pSphereShape1.wm" "polySplitRing2.mp";
connectAttr "polyTweak6.out" "polySplitRing3.ip";
connectAttr "pSphereShape1.wm" "polySplitRing3.mp";
connectAttr "polySplitRing2.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polySplitRing4.ip";
connectAttr "pSphereShape1.wm" "polySplitRing4.mp";
connectAttr "polySplitRing3.out" "polyTweak7.ip";
connectAttr "polySplitRing4.out" "polyExtrudeFace6.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace6.mp";
connectAttr "polyTweak8.out" "polyExtrudeFace7.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak8.ip";
connectAttr "polyTweak9.out" "polyExtrudeFace8.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak9.ip";
connectAttr "polyTweak10.out" "polyExtrudeFace9.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace8.out" "polyTweak10.ip";
connectAttr "polyTweak11.out" "polyBevel1.ip";
connectAttr "pSphereShape1.wm" "polyBevel1.mp";
connectAttr "polyExtrudeFace9.out" "polyTweak11.ip";
connectAttr "polyBevel1.out" "polySoftEdge1.ip";
connectAttr "pSphereShape1.wm" "polySoftEdge1.mp";
connectAttr "polyTweak12.out" "polySplitRing5.ip";
connectAttr "pSphereShape1.wm" "polySplitRing5.mp";
connectAttr "polySoftEdge1.out" "polyTweak12.ip";
connectAttr "polySplitRing5.out" "polySplitRing6.ip";
connectAttr "pSphereShape1.wm" "polySplitRing6.mp";
connectAttr "polySplitRing6.out" "polySplitRing7.ip";
connectAttr "pSphereShape1.wm" "polySplitRing7.mp";
connectAttr "polySplitRing7.out" "polyTweak13.ip";
connectAttr "polyTweak13.out" "polySplit9.ip";
connectAttr "polySplit9.out" "polySplit10.ip";
connectAttr "polyTweak14.out" "polyCircularize1.ip";
connectAttr "pSphereShape1.wm" "polyCircularize1.mp";
connectAttr "polySplit10.out" "polyTweak14.ip";
connectAttr "polyTweak15.out" "polyExtrudeFace10.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace10.mp";
connectAttr "polyCircularize1.out" "polyTweak15.ip";
connectAttr "polyExtrudeFace10.out" "polyTweak16.ip";
connectAttr "polyTweak16.out" "polySplit11.ip";
connectAttr "polySplit11.out" "polySplit12.ip";
connectAttr "polyTweak17.out" "polyBevel2.ip";
connectAttr "pSphereShape1.wm" "polyBevel2.mp";
connectAttr "polySplit12.out" "polyTweak17.ip";
connectAttr "polyBevel2.out" "polyTweakUV1.ip";
connectAttr "polyTweak18.out" "polyMergeVert1.ip";
connectAttr "pSphereShape1.wm" "polyMergeVert1.mp";
connectAttr "polyTweakUV1.out" "polyTweak18.ip";
connectAttr "polyMergeVert1.out" "polyTweakUV2.ip";
connectAttr "polyTweak19.out" "polyMergeVert2.ip";
connectAttr "pSphereShape1.wm" "polyMergeVert2.mp";
connectAttr "polyTweakUV2.out" "polyTweak19.ip";
connectAttr "polyMergeVert2.out" "polyTweakUV3.ip";
connectAttr "polyTweak20.out" "polyMergeVert3.ip";
connectAttr "pSphereShape1.wm" "polyMergeVert3.mp";
connectAttr "polyTweakUV3.out" "polyTweak20.ip";
connectAttr "polyMergeVert3.out" "polyTweakUV4.ip";
connectAttr "polyTweak21.out" "polyMergeVert4.ip";
connectAttr "pSphereShape1.wm" "polyMergeVert4.mp";
connectAttr "polyTweakUV4.out" "polyTweak21.ip";
connectAttr "polyTweak22.out" "polyExtrudeFace11.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace11.mp";
connectAttr "polyMergeVert4.out" "polyTweak22.ip";
connectAttr "polyExtrudeFace11.out" "polySplit13.ip";
connectAttr "polySplit13.out" "polySplit14.ip";
connectAttr "polyTweak23.out" "polyExtrudeFace12.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace12.mp";
connectAttr "polySplit14.out" "polyTweak23.ip";
connectAttr "polyTweak24.out" "polyExtrudeFace13.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace13.mp";
connectAttr "polyExtrudeFace12.out" "polyTweak24.ip";
connectAttr "polyTweak25.out" "polyExtrudeFace14.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace14.mp";
connectAttr "polyExtrudeFace13.out" "polyTweak25.ip";
connectAttr "polyTweak26.out" "polyExtrudeFace15.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace15.mp";
connectAttr "polyExtrudeFace14.out" "polyTweak26.ip";
connectAttr "polyTweak27.out" "polyExtrudeFace16.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace16.mp";
connectAttr "polyExtrudeFace15.out" "polyTweak27.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "bounding_cubeShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape1.iog" ":initialShadingGroup.dsm" -na;
// End of grandma_maya_scene_02.ma
