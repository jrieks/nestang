PROJECT_NAME="ClockDivider_27Mto60Hz"
VINC="/usr/share/verilator/include/"

verilator -Wall  --trace -cc ${PROJECT_NAME}.v && cd obj_dir/ && make -f V${PROJECT_NAME}.mk
g++ -I${VINC} -I obj_dir/ ${VINC}verilated.cpp ${VINC}/verilated_vcd_c.cpp ${PROJECT_NAME}.cpp V${PROJECT_NAME}__ALL.a -o ${PROJECT_NAME}
./${PROJECT_NAME}
gtkwave ${PROJECT_NAME}trace.vcd
cd ..





verilator -Wall  --trace -cc ${PROJECT_NAME}.v && cd obj_dir/ && make -f V${PROJECT_NAME}.mk && g++ -I${VINC} -I obj_dir/ ${VINC}verilated.cpp ${VINC}/verilated_vcd_c.cpp ${PROJECT_NAME}.cpp V${PROJECT_NAME}__ALL.a -o ${PROJECT_NAME} && ./${PROJECT_NAME} && cd ..