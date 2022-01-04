README.txt
1) Names and NetIDs of group members

Brandon Bolt; bsbolt (bsbolt@email.arizona.edu)
Kurt Meister; kmeister (kmeister@email.arizona.edu)
Alexander Moore; amoore (amoore100@email.arizona.edu)
Kama Svoboda ksvobodal; (ksvoboda@email.arizona.edu)
Thao N. Vo; thaovo (thaovo@email.arizona.edu)


2) Xilinx synthesis tool version

Vivado Synthesis 2019


3) Target FPGA and speed grade

xc7a100tcsg324-1


4) Brief description of method used to calculate critical path.

To calculate the critical path for each netlist, we added the latencies for each module the netlist used (from DPCL_LAT.txt). We looked for opportunities where components could execute in parallel, and when parallelism was possible we used the longest latency for our calculation. We added no delays for wires and did not account for buffers or other components outside of those we created for this assignment.