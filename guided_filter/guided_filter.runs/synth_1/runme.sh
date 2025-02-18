#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/sg24duk/tools/Xilinx/Vitis/2022.1/bin:/home/sg24duk/tools/Xilinx/Vivado/2022.1/ids_lite/ISE/bin/lin64:/home/sg24duk/tools/Xilinx/Vivado/2022.1/bin
else
  PATH=/home/sg24duk/tools/Xilinx/Vitis/2022.1/bin:/home/sg24duk/tools/Xilinx/Vivado/2022.1/ids_lite/ISE/bin/lin64:/home/sg24duk/tools/Xilinx/Vivado/2022.1/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/sg24duk/vivadoworkspace/guided_filter/guided_filter.runs/synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log coeff_ak.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source coeff_ak.tcl
