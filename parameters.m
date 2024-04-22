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

(* \[CapitalAAcute]ngulo de Weinberg *)
{ThetaW, { Description -> "Weinberg-Angle",
           DependenceNum -> ArcSin[Sqrt[1 - Mass[VWp]^2/Mass[VZ]^2]]}}, (* \[CapitalAAcute]ngulo de mezcla de Weinberg *)

(* Matrices de mezcla *)
{ZZ, {Description -> "Photon-Z Mixing Matrix"}}, (* Matriz de mezcla entre fot\[OAcute]n y bos\[OAcute]n Z *)
{ZW, {Description -> "W Mixing Matrix", Dependence -> 1/Sqrt[2] {{1, 1},{I,-I}} }}, (* Matriz de mezcla para bosones W *)

{Vu, {Description ->"Left-Up-Mixing-Matrix"}}, (* Matriz de mezcla izquierda para quarks up *)
{Vd, {Description ->"Left-Down-Mixing-Matrix"}}, (* Matriz de mezcla izquierda para quarks down *)
{Uu, {Description ->"Right-Up-Mixing-Matrix"}}, (* Matriz de mezcla derecha para quarks up *)
{Ud, {Description ->"Right-Down-Mixing-Matrix"}}, (* Matriz de mezcla derecha para quarks down *)
{Ve, {Description ->"Left-Lepton-Mixing-Matrix"}}, (* Matriz de mezcla izquierda para leptones *)
{Ue, {Description ->"Right-Lepton-Mixing-Matrix"}}, (* Matriz de mezcla derecha para leptones *)

(* Sector escalar *)
{v, { Description -> "EW-VEV",
      DependenceNum -> Sqrt[4*Mass[VWp]^2/(g2^2)],
      DependenceSPheno -> None  }}, (* Valor esperado del vac\[IAcute]o en la teor\[IAcute]a electrod\[EAcute]bil *)
{mH2, { Description -> "SM Higgs Mass Parameter"}}, (* Par\[AAcute]metro de masa del bos\[OAcute]n de Higgs est\[AAcute]ndar *)
{mEt2, {LaTeX -> "m_\\eta^2",
         LesHouches -> {HDM,1},
         OutputName-> mEt2 }},
(* Constantes de interacci\[OAcute]n escalares *)
{lambda1, {LaTeX -> "\\lambda_1",
            LesHouches -> {HDM,2},
            OutputName-> lam1 }},
{lambda2, {LaTeX -> "\\lambda_2",
            LesHouches -> {HDM,3},
            OutputName-> lam2 }},
{lambda3, {LaTeX -> "\\lambda_3",
            LesHouches -> {HDM,4},
            OutputName-> lam3 }},
{lambda4, {LaTeX -> "\\lambda_4",
            LesHouches -> {HDM,5},
            OutputName-> lam4 }},
{lambda5, {Real -> True,
            LaTeX -> "\\lambda_5",
            LesHouches -> {HDM,6},
            OutputName-> lam5 }},
{lambda6, {Real -> True,
            LaTeX -> "\\lambda 6",
            LesHouches -> {HDM,7},
            OutputName -> lam6 }},

{mSg2, {LaTeX -> "mu_\\sigma^2",
        LesHouches -> {HDM,8},
        OutputName -> mSg2 }}, (* Par\[AAcute]metro de masa para el escalar sigma *)

{lambdaEta, {LaTeX -> "\\lambda_\\eta",
             LesHouches -> {HDM,9},
             OutputName -> lamEta }}, (* Constante de interacci\[OAcute]n para el escalar eta *)
{lambdaH, {LaTeX -> "\\lambda_H",
           LesHouches -> {HDM,10},
           OutputName -> lamH }}, (* Constante de interacci\[OAcute]n para el bos\[OAcute]n de Higgs *)
{lambdaSig, {LaTeX -> "\\lambda_\\sigma",
             LesHouches -> {HDM,11},
             OutputName -> lamSig }}, (* Constante de interacci\[OAcute]n para el escalar sigma *)

{vSi,{LaTeX->"v_\\sigma", 
      LesHouches->{HDM,12}, 
      Description->"LN_VEV", 
      Real->True, 
      OutputName->vSi}}, (* Valor esperado del vac\[IAcute]o para el escalar sigma *)

(* Sector fermi\[OAcute]n *)
{Yn, {LaTeX -> "Y_N",
       LesHouches -> YN,
       OutputName->Yn }}, (* Acoplamiento Yukawa para neutrinos *)
{Mn, {LaTeX -> "M_N",
       LesHouches -> MN,
       OutputName->Mn }}, (* Masa de neutrinos *)
{ZH, {Description -> "Scalar-Mixing-Matrix",
       LaTeX -> "Z^H",
       LesHouches ->  ZH0,
       OutputName ->  ZH,
       Dependence ->  None,
       DependenceOptional ->  None,
       DependenceNum ->  None} }, (* Matriz de mezcla para escalares *)
{ZA, {Description ->"Pseudo-Scalar-Mixing-Matrix",
       LesHouches -> ZA0,
       LaTeX->"Z^A",
       OutputName -> ZA,
       Dependence -> None,
       DependenceOptional -> None,
       DependenceNum -> None} }, (* Matriz de mezcla para pseudoescalares *)
{ZX, {LaTeX -> "Z^{\\chi^0}",
       LesHouches -> ZXMIX,
       OutputName -> ZX }}, (* Matriz de mezcla para neutralinos *)
{Vv, {Description ->"Neutrino-Mixing-Matrix"}} (* Matriz de mezcla para neutrinos *)

};

