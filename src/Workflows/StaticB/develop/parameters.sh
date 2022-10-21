#!/bin/bash

####################################################################
# Directories ######################################################
####################################################################

# Data directory
export data_dir="/work/noaa/da/menetrie/StaticBTraining"

# Ensemble data
export ensemble_dir="/work/noaa/da/menetrie/ensemble"

# Data directory for regridded data
export data_dir_regrid_base="/work/noaa/da/menetrie/regrid"

# FV3-JEDI source directory
export fv3jedi_dir="${HOME}/code/bundle/fv3-jedi"

# FEMPS source directory
export femps_dir="${HOME}/code/bundle/femps"

# JEDI binaries directory
export bin_dir="${HOME}/build/gnu-openmpi/bundle_RelWithDebInfo/bin"
#export bin_dir="${HOME}/build/gnu-openmpi/bundle_debug/bin"

# Experiments directory
export xp_dir="${HOME}/xp"

# BUMP directory
export bump_dir="develop"

####################################################################
# Environment script path ##########################################
# Provided: gnu-openmpi or intel-impi on Orion #####################
####################################################################

export env_script=${xp_dir}/env_script/gnu-openmpi_env.sh
#export env_script=${xp_dir}/env_script/intel-impi_env.sh
export rankfile_script=${xp_dir}/env_script/rankfile.bash
export cores_per_node=40

####################################################################
# Parameters #######################################################
####################################################################

# Variables
export vars="stream_function velocity_potential air_temperature surface_pressure specific_humidity cloud_liquid_water ozone_mass_mixing_ratio"

# Number of ensemble members
export nmem=80

# Forecast range (in hours)
export r=3

# List of dates for the training
export yyyymmddhh_list="2021080100"

# Background date
export yyyymmddhh_bkg="2021080100"

# Observation date
export yyyymmddhh_obs="2020121421"

# Default layout
export nlx_def=6
export nly_def=6
export ntasks_def=$((6*nlx_def*nly_def))
export cdef=384

# Regridding layout and resolution
export nlx_regrid=4
export nly_regrid=4
export ntasks_regrid=$((6*nlx_regrid*nly_regrid))
export cregrid=96

# Specific observations experiments
export obs_xp="
sondes
single_ob_a
single_ob_b
single_ob_c
single_ob_d
single_ob_e
single_ob_f"
export obs_xp_full="
sondes
single_ob_a
single_ob_b
single_ob_c
single_ob_d
single_ob_e
single_ob_f"

####################################################################
# What should be run? ##############################################
####################################################################

# Daily runs
export run_daily_state_to_control=false
export run_daily_vbal=false
export run_daily_unbal=false
export run_daily_varmom=false

# Final runs
export run_final_psichitouv=false
export run_final_vbal=false
export run_final_var=false
export run_final_cor=false
export run_final_nicas_c0=false
export run_final_nicas_c1=false
export run_final_nicas_si=false

# Merge runs
export run_merge_states=false
export run_merge_nicas_c0=false
export run_merge_nicas_c1=false
export run_merge_nicas_si=false

# Regrid runs (at resolution ${cregrid} and with a layout [${nlx_regrid},${nly_regrid}])
export run_regrid_states=false
export run_regrid_vbal=false
export run_regrid_nicas=false
export run_regrid_merge_nicas=false

# Dirac runs
export run_dirac_c0=false
export run_dirac_c1=false
export run_dirac_si=true
export run_dirac_psichitouv=false
export run_dirac_c0_global=false
export run_dirac_regrid=false

# Variational runs
export run_variational_3dvar=false
export run_variational_3dvar_specific_obs=false
export run_variational_3dvar_regrid=false
export run_variational_3dvar_full_regrid=false

# Prepare scripts only (do not run sbatch)
export prepare_scripts_only=false

# Benchmark mode
export benchmark=false
