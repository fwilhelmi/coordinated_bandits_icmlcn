# define execution parameters
SIM_TIME=100
SEED=10

# compile KOMONDOR
cd ..
cd main
./build_local
echo 'EXECUTING KOMONDOR SIMULATIONS WITH FULL CONFIGURATION... '
cd ..
# remove old script output file and node logs
rm output/*

##### PART 1: 2 BSS SCENARIOS
echo ""
echo "++++++++++++++++++++++++++++++++++++"
echo "      PART 1: 2 BSS SCENARIOS       "
echo "++++++++++++++++++++++++++++++++++++"

# get input files path
cd input/input_ICMLCN2025/input_2bss_fullbuffer
ls
# Detect "nodes" input files
echo 'DETECTED KOMONDOR NODE INPUT FILES: '
nodes_file_ix=0
while read line
do
array_nodes[ $nodes_file_ix ]="$line"
echo "- ${array_nodes[nodes_file_ix]}"
(( nodes_file_ix++ ))
done < <(ls)
(( nodes_file_ix --));
# Execute files

cd ..
cd ..
cd ..
cd main

pwd
for (( executing_ix_nodes=0; executing_ix_nodes < (nodes_file_ix + 1); executing_ix_nodes++))
do 
	#echo ""
	echo "- EXECUTING ${array_nodes[executing_ix_nodes]} (${executing_ix_nodes}/${nodes_file_ix})"
	./komondor_main ../input/input_ICMLCN2025/input_2bss_fullbuffer/${array_nodes[executing_ix_nodes]} ../input/input_ICMLCN2025/agents_monitoring.csv ../output/script_output.txt sim_${executing_ix_nodes} 0 0 0 1 1 $SIM_TIME $SEED >> ../output/logs_console.txt
done
cd ..