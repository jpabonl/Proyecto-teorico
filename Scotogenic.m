Off[General::spell]

Model`Name      = "Scotogenic";
Model`NameLaTeX = "Scotogenic Model";
Model`Authors   = "J.Pabon";
Model`Date      = "2024-02-17";

SuperSymmetricModel=False;

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
FermionFields[[6]] = {n , 3, conj[N0],       0, 1,  1,-1};

ScalarFields[[1]] =  {H,  1, {Hp, H0},     1/2, 2,  1,  1};
ScalarFields[[2]] =  {Eta, 1, {etp,et0},    1/2, 2,  1, -1};
ScalarFields[[3]] =  {S, 1,  sig0,          0, 1,  1, -1};
RealScalars = { S };
(*---------------DEFINITION------------------*)

NameOfStates={GaugeES, EWSB};

(* ----- Before EWSB ----- *)

DEFINITION[GaugeES][LagrangianInput]= 
{
	{LagFer, {AddHC->True}},
	{LagNV, {AddHC->True}},
	{LagH, {AddHC->False}},
	{LagEt, {AddHC->False}},
	{LagSi, {AddHC->False}},
	{LagHEt, {AddHC->False}},
	{LagHEtHC, {AddHC->True}},
	{LagHSi,{AddHC->False}},
	{LagTrilinear,{AddHC->True}},
	{LagEtSi, {AddHC->False}}
};

LagFer= Yd conj[H] . d . q+ Ye conj[H] . e . l+ Yu H . u . q+ Yn l . Eta . n;
LagNV= - 1/2 mN n . n;
LagH=-(mu2 conj[H] . H+ 1/2 \[Lambda] conj[H] . H . conj[H] . H);
LagEt=-(mEta2 conj[Eta] . Eta+ 1/2 lam4Eta conj[Eta] . Eta . conj[Eta] . Eta);
LagSi=-(1/2 mSi2 conj[S] . S+ 1/2 lam4Sig conj[S] . S . conj[S] . S);
LagHEt=-(lamHEta3 conj[H] . H . conj[Eta] . Eta + lambda4HEta conj[H] . Eta . conj[Eta] . H);

LagHEtHC=-(1/2 lambda5HEta conj[H] . Eta . conj[H] . Eta);

LagHSi=-( lamHSig conj[S] . S . conj[H] . H );

LagEtSi= -( lamEtaSig  conj[S] . S . conj[Eta] . Eta);
LagTrilinear = - (1/2 cTri conj[S] . conj[H] . Eta);


(* Gauge Sector *)

DEFINITION[EWSB][GaugeSector] =
{ 
  {{VB,VWB[3]},{VP,VZ},ZZ},
  {{VWB[1],VWB[2]},{VWp,conj[VWp]},ZW}
};

(* ----- VEVs ---- *)

DEFINITION[EWSB][VEVs]= 
{
    {H0, {v, 1/Sqrt[2]}, {Ah, I/Sqrt[2]}, {hh, 1/Sqrt[2]}}, 
    
    {eta0, {0,0}, {etaI,I/Sqrt[2]},{etaR,1/Sqrt[2]}}
};

DEFINITION[EWSB][MatterSector]=
{
     {{{dL}, {conj[dR]}}, {{DL,Vd}, {DR,Ud}}},
     {{{uL}, {conj[uR]}}, {{UL,Vu}, {UR,Uu}}},
     {{{eL}, {conj[eR]}}, {{EL,Ve}, {ER,Ue}}}, 
     { {vL}, {VL, Vv}},
     {{sig0,etaR}         , {P0,ZSc}},
     {{conj[N0]},{X0, ZX}}
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
  FX0 -> {  X0, conj[X0] }
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
