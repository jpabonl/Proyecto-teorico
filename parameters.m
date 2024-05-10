(* ::Package:: *)

ParameterDefinitions = { 

(* Constantes de acoplamiento *)
{g1, { Description -> "Hypercharge-Coupling"}}, (* Acoplamiento de hipercarga *)
{g2, { Description -> "Left-Coupling"}}, (* Acoplamiento izquierdo *)
{g3, { Description -> "Strong-Coupling"}}, (* Acoplamiento fuerte *)    

(* Constantes f\[IAcute]sicas *)
{AlphaS, {Description -> "Alpha Strong"}}, (* Constante de acoplamiento fuerte *)
{e, { Description -> "electric charge"}}, (* Carga el\[EAcute]ctrica *)
{Gf, { Description -> "Fermi's constant"}}, (* Constante de Fermi *)
{aEWinv, { Description -> "inverse weak coupling constant at mZ"}}, (* Inverso de la constante de acoplamiento d\[EAcute]bil a una energ\[IAcute]a espec\[IAcute]fica *)

(* Acoplamientos Yukawa para fermiones *)
{Yu, { Description -> "Up-Yukawa-Coupling",
       DependenceNum ->  Sqrt[2]/v*{ {Mass[Fu,1],0,0},
                                       {0,Mass[Fu,2],0},
                                       {0,0,Mass[Fu,3]}}}}, (* Acoplamiento Yukawa para quarks up *)
{Yd, { Description -> "Down-Yukawa-Coupling",
       DependenceNum ->  Sqrt[2]/v* {{Mass[Fd,1],0,0},
                                      {0, Mass[Fd,2],0},
                                      {0, 0, Mass[Fd,3]}}}}, (* Acoplamiento Yukawa para quarks down *)
{Ye, { Description -> "Lepton-Yukawa-Coupling",
       DependenceNum ->  Sqrt[2]/v* {{Mass[Fe,1],0,0},
                                      {0, Mass[Fe,2],0},
                                      {0, 0, Mass[Fe,3]}}}}, (* Acoplamiento Yukawa para leptones *)
(* Higgs sector*)
{mu2,         { Description -> "SM Mu Parameter",
                OutputName->m2SM}},
{\[Lambda],  { Description -> "SM Higgs Selfcouplings",
               DependenceNum -> Mass[hh]^2/(v^2)},
		LesHouches -> {HDM,1}}, 
{v,          { Description -> "EW-VEV",
               DependenceNum -> Sqrt[4*Mass[VWp]^2/(g2^2)],
               DependenceSPheno -> None,
               OutputName -> vvSM}}, (* Valor esperado del vac\[IAcute]o en la teor\[IAcute]a electrod\[EAcute]bil *)
{mH2, { Description -> "SM Higgs Mass Parameter"}}, (* Par\[AAcute]metro de masa del bos\[OAcute]n de Higgs est\[AAcute]ndar *)               
(* \[CapitalAAcute]ngulo de Weinberg *)
{ThetaW, { Description -> "Weinberg-Angle",
           DependenceNum -> ArcSin[Sqrt[1 - Mass[VWp]^2/Mass[VZ]^2]]}}, (* \[CapitalAAcute]ngulo de mezcla de Weinberg *)
{mEta2, {LaTeX -> "m_\\eta^2",
         LesHouches -> {HDM,9},
         OutputName-> "mEt2" }},
{mSi2,{LaTeX->"m_\\sigma^2", 
	LesHouches->{HDM,10}, 
	OutputName->"mS2"}},(*Sigma mass*)
	
{lam4Eta, {LaTeX -> "\\lambda_2",
	 LesHouches -> {HDM,2},
	  OutputName -> "L4Et" }},
	  
{lamHEta3, {LaTeX -> "\\lambda_{3 H \\eta}", 
	LesHouches -> {HDM,3}, 
	OutputName -> "LHE31" }},
	
{lambda4HEta, {LaTeX -> "\\lambda_4", 
	LesHouches -> {HDM,4}, 
	OutputName -> "LHE32" }},
	
{lambda5HEta, {Real -> True, LaTeX -> "\\lambda_5", 
	LesHouches -> {HDM,5},
	 OutputName -> "LHE33" }},
	 
{lam4Sig, {Real->True, LaTeX->"\\lambda_{\\sigma}", 
	LesHouches->{HDM,6}, 
	OutputName->"L4S"}},(*Sigma lambdas*)
	
{lamHSig, {Real->True, LaTeX->"\\lambda_{H\\sigma}", 
	LesHouches->{HDM,7},
	 OutputName->"LHS"}},
	 
{lamEtaSig, {Real->True, LaTeX->"\\lambda_{\\eta \\sigma}", 
	LesHouches->{HDM,8}, 
	OutputName->"LES"}},
	
{cTri,  {LaTeX -> "T",
         LesHouches -> {HDM,11},
	     OutputName-> "cTri" }},
(*Fermion Sector*)
{Yn,   {LaTeX -> "Yukawa",
         LesHouches -> COUPLINGSYN,
	     OutputName-> "Yn" }},(* Acoplamiento Yukawa para neutrinos *)

{mN, {LaTeX -> "m_N",
       LesHouches -> MassMatrixMN,
       OutputName-> "mN" }}, (* Masa de neutrinos *)
(* Matrices de mezcla *)
{ZZ, {Description -> "Photon-Z Mixing Matrix"}},
{ZW, {Description -> "W Mixing Matrix",
       Dependence ->   1/Sqrt[2] {{1, 1},
                  {I,-I}} }},
{ZH,       { Description ->"Scalar-Mixing-Matrix",
             LaTeX->"Z^H",
             LesHouches -> ZH0,
             OutputName -> ZH,
             Dependence -> None,
             DependenceOptional -> None,
             DependenceNum -> None} }, (* Matriz de mezcla para escalares *)
             
{ZSc, {Description -> "Scalar Mixing Matrix",
	LesHouches -> ZScalar,
	OutputName -> "ZS"}},
             
{ZX, {Description -> "ZX neutral Fermion Mixing Matrix",
	LesHouches -> ZX,
	OutputName -> "ZX"}},


{Vu,        {Description ->"Left-Up-Mixing-Matrix"}},
{Vd,        {Description ->"Left-Down-Mixing-Matrix"}},
{Uu,        {Description ->"Right-Up-Mixing-Matrix"}},
{Ud,        {Description ->"Right-Down-Mixing-Matrix"}}, 
{Ve,        {Description ->"Left-Lepton-Mixing-Matrix"}},
{Ue,        {Description ->"Right-Lepton-Mixing-Matrix"}},
{Vv, 		{Description ->"Neutrino-Mixing-Matrix"}} (* Matriz de mezcla para neutrinos *)

 };

