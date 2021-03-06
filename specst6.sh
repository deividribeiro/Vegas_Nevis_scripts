#!/bin/bash

cd /home/humensky/Analysis/
vroot=/home/humensky/Analysis/vegas-2.5.0rc3

if [ "$HOSTNAME" = "tehanu.nevis.columbia.edu" ]
    then
    echo "Running locally - setting variables from command line"
    RUNFILE=$1
    CONFDIR=$2
    EFFAREA=$3
    LOGFILE=$4
fi

if [ -e tmpv6_${LOGFILE}.cfg ] ; then
    echo "Deleting "tmpv6_${LOGFILE}.cfg
    rm tmpv6_${LOGFILE}.cfg
fi

echo "runst6.sh starting"
echo "   Running on "$HOSTNAME
echo "   Starting at " $( date )
echo "   Using vegas version in "$vroot
echo
echo

#    -G_GlobalDebugLevel=E_INFO \
#    -G_GlobalDebugLevel=E_FULLDEBUG \
#    -S6A_TestPositionRA=184.331 \
#   -S6A_TestPositionDEC=8.15022 \
#    -S6A_TestPositionRA=94.24 -S6A_TestPositionDEC=22.54 \
#    -S6A_DrawExclusionRegions=3 \
#    -SP_BinningFilename=JuneCombo/bins.txt \
#    -SP_BinningFilename=Bins/fine1.txt \
#    -SP_BinningFilename=Bins/5.txt \
#    -SP_BinningFilename=Bins/5e.txt \
#    -S6A_TestPositionRA=94.11 -S6A_TestPositionDEC=22.49 \
#    -S6A_TestPositionRA=94.215 -S6A_TestPositionDEC=22.536 \
#    -S6A_TestPositionRA=94.212 -S6A_TestPositionDEC=22.500 \
#    -S6A_TestPositionRA=94.278 -S6A_TestPositionDEC=22.631 \
#    -SP_BinningFilename=DecIC443/Spectra/bins1.txt \
#    -SP_BinningFilename=DecIC443/Spectra/bins4.txt \
#   -SP_BinningFilename=DecIC443/Spectra/bins7.txt \
#    -EC_AcceptanceLibrary=CasA/res_spec-7s6.root \
#    -SP_NumberOfBins=15 \
#     -SP_MinEnergy=-1.49 -SP_MaxEnergy=1.51 \
#    -TelCombosToDeny=T1T4 \
#    -RBM_AccFitFunction=SMOOTH \
#    -RBM_AccSmoothingCycles=4 \
#    -TelCombosToDeny=ANY2 \
#    -ImpactDistanceUpper=250 \
#    -MaxHeightLower=5 \
#    -S6A_ModifyEffectiveArea=0 \
#    -S6A_UpperLimit=1 \
#    -UL_MinEnergy=3 \
#    -SP_MinEnergy=0.5 -SP_MaxEnergy=1.2 \
#    -SP_NumberOfBins=28 \
#    -SP_EnergyBinning=7 \
#    -SP_TimeAcceptance=0.1 \
#    -SP_BinningFilename=GammaCygni/special_binning_1 \
#    -SP_BinningFilename=GammaCygni/custombins.txt \
#-EA_ModifyEffectiveArea=1 -EA_RealSpectralIndex=-2.3
#    -S6A_UserDefinedExclusionList=/home/humensky/Analysis/GammaCygni/surveyexclude2.dat \
#    -EC_AcceptanceLibrary=/home/humensky/Analysis/GammaCygni/gcyg_newSim_SSs5_pts6.root \
#    -EC_maxPsiSq=2.89 \
$vroot/bin/vaStage6 \
    -S6A_Batch=0 \
    -EA_UpdateModifiedEffectiveArea=0 -EA_RealSpectralIndex=-2.5 \
    -EA_WindowSizeForNoise=7 \
    -S6A_ReadFromStage4=false -S6A_ReadFromStage5Combined=0 \
    -S6A_Spectrum=0 \
    -S6A_UpperLimit=0 -UL_MinEnergy=1 \
    -SP_MinEnergy=-1.5 -SP_MaxEnergy=2.5 \
    -SP_NumberOfBins=80 \
    -SP_EnergyBinning=4 \
    -SP_MinFitEnergy=0.2 \
    -SP_MaxFitEnergy=10 \
    -SP_ForceFitRange=0 \
    -SP_SpectrumFitFunc=POWERLAW \
    -SP_IntegralFluxEmin=0.3 \
    -SP_MinSignificance=0.7 \
    -SP_MinExcess=2 \
    -S6A_LookupFileName=$EFFAREA \
    -S6A_ConfigDir=$CONFDIR -S6A_OutputFileName=res_$LOGFILE \
    -S6A_ExcludeSource=1 -S6A_SourceExclusionRadius=0.4 \
    -S6A_RingSize=0.1 \
    -S6A_NumRings=0 \
    -MaxHeightLower=7 \
    -MeanScaledWidthUpper=1.1 -MeanScaledLengthUpper=1.3 \
    -MeanScaledWidthLower=0.05 -MeanScaledLengthLower=0.05 \
    -EC_maxPsiSq=2.89 \
    -EC_AcceptanceLibrary=/home/humensky/Analysis/SgrA/Both/both-wobbAlltemp-rebin4-1_Acc.root \
    -S6A_DoRelativeExposure=0 \
    -S6A_SuppressRBMFinalStage=1 \
    -RBM_SearchWindowSqCut=0.01 \
    -RBM_HistoBinSizeInDegrees=0.025 \
    -WA_UseGeneralizedLiMa=0 \
    -S6A_DrawExclusionRegions=3 \
    -S6A_SaveAcceptance=1 \
    -S6A_AcceptanceLookup=${LOGFILE}_Acc.root \
    -save_config=tmpv6_${LOGFILE}.cfg \
    -save_cuts=tmpv6_${LOGFILE}.cut \
    $RUNFILE 2>&1 | tee $CONFDIR/$LOGFILE.log
#    -RBM_CoordinateMode=Galactic \
#    -EC_AcceptanceLibrary=DecIC443/Spectra/res_4tel-500-noT1T4-1s6.root \
#    -EA_UseReconstructedEnergy=0 \
#    -S6A_UserDefinedExclusionList=exclusions.dat \
#    -SP_BinningFilename=JuneCombo/bins.txt \
#    -EA_SimulationType=E_KASCADE \
#    -EC_AcceptanceLibrary=AccCurves/library_429runscor_2_003crab.root \
#    -G_GlobalDebugLevel=E_INFO \
#    -S6A_TestPositionRA=94.22 \
#    -S6A_TestPositionDEC=22.55 \
#    -S6A_TestPositionRA=94.29 -S6A_TestPositionDEC=22.55 \
#    -S6A_RingSize=0.3162 -RBM_SearchWindowSqCut=0.1 \
#    -S6A_MSWUpper=1.2 -S6A_MSLUpper=1.4 \
#run -S6A_ConfigDir=DecCrab -MeanScaledWidthUpper=1.21 -MeanScaledLengthUpper=1.42 -EC_AcceptanceLibrary=DecIC443/Spectra/res_4tel-500-noT1T4-1s6.root -RBM_HistoBinSizeInDegrees=0.25 DecCrab/rl-test.txt

more tmpv6_${LOGFILE}.cfg >> $CONFDIR/$LOGFILE.log
rm tmpv6_${LOGFILE}.cfg
echo >> $CONFDIR/$LOGFILE.log
echo >> $CONFDIR/$LOGFILE.log
more tmpv6_${LOGFILE}.cut >> $CONFDIR/$LOGFILE.log
rm tmpv6_${LOGFILE}.cut
echo >> $CONFDIR/$LOGFILE.log
echo >> $CONFDIR/$LOGFILE.log
echo "Runlist used:" >> $CONFDIR/$LOGFILE.log
more $RUNFILE >> $CONFDIR/$LOGFILE.log

# Add the following to get upper limits on spectrum points
#    -SP_UL=1 \

# Add the following to run in batch mode
#    -S6A_Batch=1 \

# Add following two options to generate uncorrelated significance map
#    -RBM_SearchWindowSqCut=0.00001 \
#    -RBM_HistoBinSizeInDegrees=0.01 \

# Add following to change the theta cut (would need 3rd option for light 
# curve)
#    -RBM_SearchWindowSqCut=0.06788 \
#    -S6A_RingSize=0.2605 \
#    -S6A_RingSize=0.148 -RBM_SearchWindowSqCut=0.022 \

# Add the following to use the alternate power-law/exponential acceptance fn
#    -RBM_AccFitFunction=PLEXP \

# To suppress wobble analysis (final steps)
#    -S6A_SuppressWobble=1 \

# To alter size of valid acceptance
#    -RBM_PsiCut=1.7 \
#    -RBM_AccFitMax=2.89 \

# To play with RBM parameters
#    -RBM_SearchWindowSqCut=0.1 \
#    -RBM_RingLowerRadius=0.8 \
#    -RBM_RingUpperRadius=1.2 \
#    -RBM_HistoBinSizeInDegrees=0.05 \

# To adjust RBM map sizes
#    -RBM_HistogramSizeXAxis=6 \
#    -RBM_HistogramSizeYAxis=6 \
#    -RBM_HistogramWindowRadius=3 \
#    -RBM_ToleranceRadius=6 \
#    -SM_FoVRadius=3    \

# To change gamma/hadron cuts
#    -S6A_MSWLow=0.6 -S6A_MSLLow=0.6 \
#    -S6A_MSWUpper=1.06 -S6A_MSLUpper=1.2 \


# To play with wobble parameters
#    -S6A_RingSize=0.316 \
#    -S6A_NumRings=2 \

# To save the acceptance curve
#    -saveAcceptance \
#    -S6A_AcceptanceLookup=${LOGFILE}_Acc.root \

# From last MILSS attempt
#    -RBM_SearchWindowSqCut=0.1 \
#    -RBM_RingLowerRadius=0.8 \
#    -RBM_RingUpperRadius=1.2 \
#    -RBM_HistoBinSizeInDegrees=0.05 \
#    -RBM_HistogramSizeXAxis=6 \
#    -RBM_HistogramSizeYAxis=6 \
#    -RBM_HistogramWindowRadius=3 \
#    -RBM_ToleranceRadius=6 \
#    -S6A_SuppressWobble=1 \
#    -SM_FoVRadius=3    \
#    -S6A_TestPositionRA=287.02 \
#    -S6A_TestPositionDEC=6.32 \

# To exclude stars
#    -S6A_ExcludeStars=1 -S6A_ExclusionList=IC443/stars.dat \
