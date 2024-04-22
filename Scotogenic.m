Off[General::spell]

Model`Name      = "Scotogenic";
Model`NameLaTeX = "Scotogenic Model";
Model`Authors   = "J.Pabon";
Model`Date      = "2024-02-17";



(*------------Particle Content---------------*)

(* Global Symmetries *)
Global[[1]] = {Z[2], Z2};

(*--------------Gauge Groups-----------------*)
Gauge[[1]]={B,   U[1], hypercharge, g1, False, 1};
Gauge[[2]]={WB, SU[2], left,        g2, True , 1};
Gauge[[3]]={G,  SU[3], color,       g3, False, 1};

(*--------------Matter Fields----------------*)
FermionFields[[1]] = {q , 3, {uL, dL},     1/6, 2,  3, 1};
FermionFields[[2]] = {l , 3, {vL, eL},    -1/2, 2,  1, 1};
FermionFields[[3]] = {d , 3, conj[dR],     1/3, 1, -3, 1};
FermionFields[[4]] = {u , 3, conj[uR],    -2/3, 1, -3, 1};
FermionFields[[5]] = {e , 3, conj[eR],       1, 1,  1, 1};
FermionFields[[6]] = {n , 3, conj[nR],       0, 1,  1,-1};

ScalarFields[[1]] =  {H,  1, {Hp, H0},     1/2, 2,  1,  1};
ScalarFields[[2]] =  {Et, 1, {etp,et0},    1/2, 2,  1, -1};
ScalarFields[[3]] =  {Sig , 1,  sig0,          0, 1,  1, -1};
(*---------------DEFINITION------------------*)

NameOfStates={GaugeES, EWSB};

(* ----- Before EWSB ----- *)

DEFINITION[GaugeES][LagrangianInput]= 
{
  {LagFer     ,      {AddHC->True}}, 
  {LagEta     ,      {AddHC->False}},  
  {LagSig     ,      {AddHC->False}},
  {LagH       ,      {AddHC->False}},
  {LagHEta    ,      {AddHC->False}},
  {LagEtaSig  ,      {AddHC->False}},
  {LagHSig    ,      {AddHC->False}},
  {LagHEta2   ,      {AddHC->True}},
  {LagSigHEta ,      {AddHC->True}}
};

LagFer     =     Yn l . n . Eta + Mn/2 n . n;
LagH       = -(+ muH2 conj[H] . H + 1/2 lambdaH conj[H] . H . conj[H] . H );
LagEta      = -(+ muEta2 conj[Eta] . Eta  + 1/2 lambdaEta conj[Eta] . Eta . conj[Eta] . Eta );
LagSig	   = -(+ 1/2 muSig2 conj[Sig] . Sig  + 1/2 lambdaSig conj[Sig] . Sig . conj[Sig] . Sig );
LagHEta     = -(+ lambda1 conj[Eta] . Eta . conj[H] . H + lambda4 conj[H] . Eta . conj[Eta] . H );
LagEtaSig   = -(+ lambda2 conj[Eta] . Eta . conj[Sig] . Sig );
LagHSig    = -(+ lambda3 conj[H] . H . conj[Sig] . Sig );
LagHEta2    = -(+ 1/2 lambda5 conj[H] . Eta . conj[H] . Eta);
LagSigHEta  = -(+ lambda6 Sig . H . conj[Eta]);

(* Gauge Sector *)

DEFINITION[EWSB][GaugeSector] =
{ 
  {{VB,VWB[3]},{VP,VZ},ZZ},
  {{VWB[1],VWB[2]},{VWp,conj[VWp]},ZW}
};

(* ----- VEVs ---- *)

DEFINITION[EWSB][VEVs]= 
{
  {H0  	 ,   {v, 1/Sqrt[2]}   , {Sig, I/Sqrt[2]}  ,  {phih, 1/Sqrt[2]}}, 
  {eta0	 ,   {0, 0}           , {etaI, I/Sqrt[2]} ,  {etaR, 1/Sqrt[2]}},
  {sig0	 ,   {vSi, 1/Sqrt[2]} , {Ss, I/Sqrt[2]}   ,  {phis, 1/Sqrt[2]}}
};

DEFINITION[EWSB][MatterSector]=
{
  {{vL},        {VL, Vv}},
  {{{dL},       {conj[dR]}},  {{DL,Vd},{DR,Ud}}},
  {{{uL},       {conj[uR]}},  {{UL,Vu},{UR,Uu}}},
  {{{eL},       {conj[eR]}},  {{EL,Ve},{ER,Ue}}},
  {{Sig,Ss},    {Ah,ZA}},
  {{phih,phis}, {hh, ZH}},
  {{conj[n0]},  {X0, ZX}}
};

(*------------------------------------------------------*)
(* Dirac-Spinors *)
(*------------------------------------------------------*)

DEFINITION[EWSB][DiracSpinors]=
{
  Fd  -> {  DL, conj[DR]},
  Fe  -> {  EL, conj[ER]},
  Fu  -> {  UL, conj[UR]},
  Fv  -> {  VL, conj[VL]},
  Chi -> {  X0, conj[X0] }
};

DEFINITION[EWSB][GaugeES]=
{
  Fd1 ->{  FdL, 0},
  Fd2 ->{  0, FdR},
  Fu1 ->{  Fu1, 0},
  Fu2 ->{  0, Fu2},
  Fe1 ->{  Fe1, 0},
  Fe2 ->{  0, Fe2}
};
