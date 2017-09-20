makeEA -MeanScaledLengthLower=0.05 -MeanScaledLengthUpper=1.3 -MeanScaledWidthLower=0.05 -MeanScaledWidthUpper=1.1 -ThetaSquareUpper=0.01 -MaxHeightLower=7 -EA_RealSpectralIndex=-2.4 -Azimuth=0,45,90,135,180,225,270,315 -Zenith=55,60,65 -Noise=7.82,8.33 -AbsoluteOffset=0.00,0.50,0.75  -ImpactDistanceUpper=300 /a/home/tehanu/dribeiro/Analysis/config/eaFileList_sims_v254_medium_medium_ua_ATM21_Z55-60-65_000-050-075wobb_0noise_disp_new_ImpactCut.txt /a/home/tehanu/dribeiro/Analysis/processed/tables/ea_Oct2012_ua_ATM21_GrISUDet_vegas254_7sam_000-050-075wobb_s700_Z55-60-65_std_d1p43_MSW1p1_MSL1p3_MH7_ThetaSq0p01_0noise_disp_new_ImpactCut.root
#makeEA -MeanScaledLengthLower=0.05 -MeanScaledLengthUpper=1.3 -MeanScaledWidthLower=0.05 -MeanScaledWidthUpper=1.1 -ThetaSquareUpper=0.01 -MaxHeightLower=7 -EA_RealSpectralIndex=-2.4 -Azimuth=0,45,90,135,180,225,270,315 -Zenith=55,60,65 -Noise=7.82,8.33 -AbsoluteOffset=0.25,1.00  -ImpactDistanceUpper=300 /a/home/tehanu/dribeiro/Analysis/config/eaFileList_sims_v254_medium_medium_ua_ATM21_Z55-60-65_025-100wobb_0noise_disp_new_ImpactCut.txt /a/home/tehanu/dribeiro/Analysis/processed/tables/ea_Oct2012_ua_ATM21_GrISUDet_vegas254_7sam_025-100wobb_s700_Z55-60-65_std_d1p43_MSW1p1_MSL1p3_MH7_ThetaSq0p01_0noise_disp_new_ImpactCut.root
#makeEA -MeanScaledLengthLower=0.05 -MeanScaledLengthUpper=1.3 -MeanScaledWidthLower=0.05 -MeanScaledWidthUpper=1.1 -ThetaSquareUpper=0.01 -MaxHeightLower=7 -EA_RealSpectralIndex=-2.4 -Azimuth=0,45,90,135,180,225,270,315 -Zenith=55,60,65 -Noise=7.82,8.33 -AbsoluteOffset=1.25,1.50  -ImpactDistanceUpper=300 /a/home/tehanu/dribeiro/Analysis/config/eaFileList_sims_v254_medium_medium_ua_ATM21_Z55-60-65_125-150wobb_0noise_disp_new_ImpactCut.txt /a/home/tehanu/dribeiro/Analysis/processed/tables/ea_Oct2012_ua_ATM21_GrISUDet_vegas254_7sam_125-150wobb_s700_Z55-60-65_std_d1p43_MSW1p1_MSL1p3_MH7_ThetaSq0p01_0noise_disp_new_ImpactCut.root
#makeEA -MeanScaledLengthLower=0.05 -MeanScaledLengthUpper=1.3 -MeanScaledWidthLower=0.05 -MeanScaledWidthUpper=1.1 -ThetaSquareUpper=0.01 -MaxHeightLower=7 -EA_RealSpectralIndex=-2.4 -Azimuth=0,45,90,135,180,225,270,315 -Zenith=55,60,65 -Noise=7.82,8.33 -AbsoluteOffset=1.75,2.00  -ImpactDistanceUpper=300 /a/home/tehanu/dribeiro/Analysis/config/eaFileList_sims_v254_medium_medium_ua_ATM21_Z55-60-65_175-200wobb_0noise_disp_new_ImpactCut.txt /a/home/tehanu/dribeiro/Analysis/processed/tables/ea_Oct2012_ua_ATM21_GrISUDet_vegas254_7sam_175-200wobb_s700_Z55-60-65_std_d1p43_MSW1p1_MSL1p3_MH7_ThetaSq0p01_0noise_disp_new_ImpactCut.root
#/a/home/tehanu/ap3115/software/veritas/vegas-v2_5_4/resultsExtractor/macros/combineEA.pl /a/home/tehanu/dribeiro/Analysis/config/tableList_ea_sims_v254_medium_ua_ATM21_medium_000-050-075-025-100-125-150-175-200wobb_disp_new_ImpactCut.txt /a/home/tehanu/dribeiro/Analysis/processed/tables/ea_Oct2012_ua_ATM21_GrISUDet_vegas254_7sam_000-050-075-025-100-125-150-175-200wobb_Z55-60-65_std_d1p43_MSW1p1_MSL1p3_MH7_ThetaSq0p01_disp_new_ImpactCut.root
#buildEATree -Azimuth=0,45,90,135,180,225,270,315 -Zenith=55,60,65 -Noise=7.82,8.33 -AbsoluteOffset=0.00,0.50,0.75,0.25,1.00,1.25,1.50,1.75,2.00 /a/home/tehanu/dribeiro/Analysis/processed/tables/ea_Oct2012_ua_ATM21_GrISUDet_vegas254_7sam_000-050-075-025-100-125-150-175-200wobb_Z55-60-65_std_d1p43_MSW1p1_MSL1p3_MH7_ThetaSq0p01_disp_new_ImpactCut.root
