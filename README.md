# FABulous-SKY130
This repo experiments the [openlane design flow](https://github.com/efabless/openlane) for a small fabric generated by [FABulous framework](https://github.com/FPGA-Research-Manchester/FABulous).

## Notes
  - Please place the folder under `openlane/designs` directory 
  - Use the following commands to run the flow
  ```bash
    $ ./flow.tcl -design fabric4
  ```
## Issues
 - The openlane flow can run succesfully for the fabric22 (2x2 CLBs) but get stuck when doing global routing (fastroute) for the fabric4 (4x4 CLBs).
 - Timing Optimization step by OpenPhySyn (for nestlist) was skipped due to unsupport set_timing_disable command (like the STA tool).
