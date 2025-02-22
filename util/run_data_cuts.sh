#!/usr/bin/env bash

DET="module0_run2"
if [ "${DET}" = "module0_run1" ]; then
	INDIR=/global/cfs/cdirs/dune/users/sfogarty/Module0_run1_reco/39Ar_reco
elif [ "${DET}" = "module0_run2" ]; then
	INDIR=/global/cfs/cdirs/dune/users/sfogarty/Module0_run2_reco/39Ar_reco
elif [ "${DET}" = "module1" ]; then
	INDIR=/global/cfs/cdirs/dune/users/sfogarty/Module1_reco/39Ar_reco_09132023
elif [ "${DET}" = "module2" ]; then
	INDIR=/global/cfs/cdirs/dune/users/sfogarty/Module2_reco/39Ar_reco
elif [ "${DET}" = "moduleX" ]; then
	INDIR=/global/cfs/cdirs/dune/users/sfogarty/ModuleX_reco
else
	echo "Exiting as $DET is not a recognized run name"
	exit 0
fi

#file_paths=(
#    "${INDIR}/charge-light-matched-clusters_2022_02_08_01_47_59_CET.h5"
#    "${INDIR}/charge-light-matched-clusters_2022_02_08_02_08_00_CET.h5"
#    "${INDIR}/charge-light-matched-clusters_2022_02_08_02_28_01_CET.h5"
#    "${INDIR}/charge-light-matched-clusters_2022_02_08_03_54_19_CET.h5"
#    "${INDIR}/charge-light-matched-clusters_2022_02_08_04_14_21_CET.h5"
#    "${INDIR}/charge-light-matched-clusters_2022_02_08_04_34_22_CET.h5"
#    "${INDIR}/charge-light-matched-clusters_2022_02_08_04_54_23_CET.h5"
#    "${INDIR}/charge-light-matched-clusters_2022_02_08_05_14_25_CET.h5"
#    "${INDIR}/charge-light-matched-clusters_2022_02_08_08_54_32_CET.h5"
#    "${INDIR}/charge-light-matched-clusters_2022_02_08_09_14_33_CET.h5"
#    "${INDIR}/charge-light-matched-clusters_2022_02_08_09_34_35_CET.h5"
#    "${INDIR}/charge-light-matched-clusters_2022_02_08_12_48_18_CET.h5"
#    "${INDIR}/charge-light-matched-clusters_2022_02_08_13_08_19_CET.h5"
#    "${INDIR}/charge-light-matched-clusters_2022_02_08_13_57_39_CET.h5"
#    "${INDIR}/charge-light-matched-clusters_2022_02_08_14_17_41_CET.h5"
    
#)
#file_paths=(
#        "${INDIR}/charge-light-matched-clusters_2022_12_02_14_00_CET.h5"
#	)

# module 0 run 1
file_paths=(
    "${INDIR}/charge-light-matched-clusters_2021_04_04_09_38_27_CEST.h5"
    "${INDIR}/charge-light-matched-clusters_2021_04_04_09_58_31_CEST.h5"
    "${INDIR}/charge-light-matched-clusters_2021_04_04_10_38_37_CEST.h5"
    "${INDIR}/charge-light-matched-clusters_2021_04_04_11_18_41_CEST.h5"
    "${INDIR}/charge-light-matched-clusters_2021_04_04_11_38_43_CEST.h5"
    "${INDIR}/charge-light-matched-clusters_2021_04_04_12_18_48_CEST.h5"
    "${INDIR}/charge-light-matched-clusters_2021_04_04_13_18_54_CEST.h5"
    "${INDIR}/charge-light-matched-clusters_2021_04_04_13_38_56_CEST.h5"
    "${INDIR}/charge-light-matched-clusters_2021_04_04_14_19_01_CEST.h5"
    "${INDIR}/charge-light-matched-clusters_2021_04_04_14_39_03_CEST.h5"
    "${INDIR}/charge-light-matched-clusters_2021_04_04_15_19_07_CEST.h5"
    "${INDIR}/charge-light-matched-clusters_2021_04_04_16_59_17_CEST.h5"
    "${INDIR}/charge-light-matched-clusters_2021_04_04_17_19_19_CEST.h5"
    "${INDIR}/charge-light-matched-clusters_2021_04_04_17_39_22_CEST.h5"
    "${INDIR}/charge-light-matched-clusters_2021_04_04_17_59_24_CEST.h5"

)

# module 0 run 2

module load python
cd ../charge_reco
python3 apply_data_cuts.py ${DET} "${file_paths[@]}"
