makeEA -MeanScaledLengthLower=0.05 -MeanScaledLengthUpper=1.3 -MeanScaledWidthLower=0.05 -MeanScaledWidthUpper=1.1 -ThetaSquareUpper=0.01 -MaxHeightLower=7 -EA_RealSpectralIndex=-2.4 -Azimuth=0,45,90,135,180,225,270,315 -Noise=7.82,8.33  /a/home/tehanu/dribeiro/Analysis/config/eaFileList_sims_v254_medium_medium_ua_ATM21_Z60_050wobb_0noise_disp_new.txt /a/home/tehanu/dribeiro/Analysis/processed/tables/ea_Oct2012_ua_ATM21_GrISUDet_vegas254_7sam_050wobb_s700_Z60_std_d1p43_MSW1p1_MSL1p3_MH7_ThetaSq0p01_0noise_disp_new.root
#/a/home/tehanu/dribeiro/Analysis/config/tableList_ea_sims_v254_medium_ua_ATM21_medium_050wobb_disp_new.txt
buildEATree -Azimuth=0,45,90,135,180,225,270,315 -Zenith=60 -Noise=7.82,8.33 /a/home/tehanu/dribeiro/Analysis/processed/tables/ea_Oct2012_ua_ATM21_GrISUDet_vegas254_7sam_050wobb_Z60_std_d1p43_MSW1p1_MSL1p3_MH7_ThetaSq0p01_disp_new.root
