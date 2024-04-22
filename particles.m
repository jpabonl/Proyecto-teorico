(* ::Package:: *)

ParticleDefinitions[GaugeES] = {

    (* Bosones y part\[IAcute]culas de interacci\[OAcute]n en el modelo Gauge *)

    {H0, {   PDG -> {0},  
            Width -> 0,   
            Mass -> Automatic,  
            FeynArtsNr -> 1,   
            LaTeX -> "H^0",    
            OutputName -> "H0" }},  

    {Hp, {   PDG -> {0},
            Width -> 0, 
            Mass -> Automatic,
            FeynArtsNr -> 2,
            LaTeX -> "H^+",
            OutputName -> "Hp" }}, 
           
    {etap, {Description -> "interaction eigenstates charged scalars",  
            PDG -> {1004},   
            PDG . IX -> {1004},  
            Mass -> LesHouches,  
            ElectricCharge -> 1, 
            LaTeX -> {"\\eta_{+}","\\eta_{-}"}, 
            OutputName -> {"Etap","Etam"} }},  

                 
    {VB, { Description -> "B-Boson"}},  
    {VG, { Description -> "Gluon"}},  
    {VWB, { Description -> "W-Bosons"}},  
    {gB, { Description -> "B-Boson Ghost"}},  
    {gG, { Description -> "Gluon Ghost" }},   
    {gWB, { Description -> "W-Boson Ghost"}}   
};     
      
      
ParticleDefinitions[EWSB] = {

    (* Part\[IAcute]culas relacionadas con la ruptura de simetr\[IAcute]a EWSB *)

    {hh, {  Description -> "Higgs",
            PDG -> {25,1111},
            PDG . IX -> {101000001},
            FeynArtsNr ->  900000010,
            ElectricCharge -> 0 }},                  
    {Ah, {  Description -> "Pseudo-Scalar Higgs",
            PDG ->  {0,200002},
            Mass ->  Automatic,
            ElectricCharge ->  0,
            FeynArtsNr ->  900000011,
            LaTeX ->  "Ah",
            OutputName ->  "Ah" }}, 
    {Hp, {  Description -> "Charged Higgs", 
            PDG -> {0},
            PDG . IX ->{0},
            Width -> {0}, 
            Mass -> {0},
            LaTeX -> {"H^+","H^-"},
            OutputName -> {"Hp","Hm"},
            ElectricCharge   ->  1 }},
    {VP, { Description -> "Photon"}}, 
    {VZ, { Description -> "Z-Boson", Goldstone -> Ah }},  (* Bos\[OAcute]n Z con el Goldstone asociado Ah *)
    {VWp, { Description -> "W+ - Boson", Goldstone -> Hp}},  (* Bos\[OAcute]n W+ con el Goldstone asociado Hp *)
    {VG, { Description -> "Gluon" }},
    {gP, { Description -> "Photon Ghost"}},
    {gWp, { Description -> "Positive W+ - Boson Ghost"}}, 
    {gWpC, { Description -> "Negative W+ - Boson Ghost" }}, 
    {gZ, { Description -> "Z-Boson Ghost" }},
    {gG, { Description -> "Gluon Ghost" }},
                 
    (* Quarks y leptones *)

    {Fd, { Description -> "Down-Quarks"}},
    {Fu, { Description -> "Up-Quarks"}},
    {Fe, { Description -> "Leptons" }},
    {Fv, { Description -> "Neutrinos" }},
    {Chi, { Description -> "Singlet Fermions",
            PDG -> {1012,1014,1016},
            Mass -> LesHouches,
            ElectricCharge -> 0,
            LaTeX -> "N",
            OutputName -> "N" }}
};

(* Definiciones de nombres LaTeX  *)

WeylFermionAndIndermediate =
{
    {H, {  PDG -> {0},
           Width -> 0, 
           Mass -> Automatic,
           LaTeX -> "H",
           OutputName -> ""}},
    {Et, {LaTeX -> "\\eta"}},
    {dR, {LaTeX -> "d_R" }},
    {eR, {LaTeX -> "e_R" }},
    {lep, {LaTeX -> "l" }},
    {uR, {LaTeX -> "u_R" }},
    {q, {LaTeX -> "q" }},
    {eL, {LaTeX -> "e_L" }},
    {dL, {LaTeX -> "d_L" }},
    {uL, {LaTeX -> "u_L" }},
    {vL, {LaTeX -> "\\nu_L" }},
    {DR, {LaTeX -> "D_R" }},
    {ER, {LaTeX -> "E_R" }},
    {UR, {LaTeX -> "U_R" }},
    {EL, {LaTeX -> "E_L" }},
    {DL, {LaTeX -> "D_L" }},
    {UL, {LaTeX -> "U_L" }},
    {X0, {LaTeX -> "X^0"}},
    {VL, {LaTeX -> "V_L" }},
    {phis, {LaTeX -> "\\phi_S"}},
    {phih, {LaTeX -> "\\phi_H"}},   
    {n, {LaTeX -> "N" }},
    {n0, {LaTeX -> "N_R"}},
    {nR, {LaTeX -> "\\nu_R" }},
    {Sig, {LaTeX -> "\\sigma"}},
    {Ss, {LaTeX -> "G_S"}}
};

