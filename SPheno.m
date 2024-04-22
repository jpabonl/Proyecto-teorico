OnlyLowEnergySPheno = True;

MINPAR={
  {1, lambda5Input},
  {2,lambda1Input},
  {3,lambda2Input},
  {4,lambda3Input},
  {5,lambda4Input},
  {6,mEt2Input}
};

ParametersToSolveTadpoles = {mH2};

BoundaryLowScaleInput={
  {mEt2,mEt2Input},
  {lambda1,lambda1Input},
  {lambda2,lambda2Input},
  {lambda3,lambda3Input},
  {lambda4,lambda4Input},
  {lambda5,lambda5Input},
  {Yn, LHInput[Yn]},
  {Mn, LHInput[Mn]}
};
DEFINITION[MatchingConditions]=
{{v, vSM},
  {Ye, YeSM},
  {Yd, YdSM},
  {Yu, YuSM},
  {g1, g1SM},
  {g2, g2SM},
  {g3, g3SM}};
  
ListDecayParticles = {Fu,Fe,Fd,Fv,VZ,VWp,hh,etR,etI,etp,Chi};
ListDecayParticles3B = {{Fu,"Fu.f90"},{Fe,"Fe.f90"},{Fd,"Fd.f90"}};
