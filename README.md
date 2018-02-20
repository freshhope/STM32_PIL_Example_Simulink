# STM32 PIL (Processor in the loop) Example
## Environment
* Matlab R2017 x64 for Windows
* STM32MatTarget_4.4.2_setup.exe [https://github.com/freshhope/STM32_PIL_Example_Simulink/releases/download/v0.1/STM32MatTarget_4.4.2_setup.exe](https://github.com/freshhope/STM32_PIL_Example_Simulink/releases/download/v0.1/STM32MatTarget_4.4.2_setup.exe)
* Keil uVision5
* STM32CubeMX
* Any STM32 hardware board

## Configuration of Matlab
1. Install all the required packages
2. Set matlab path, add with sub folders of STM32MatTarget installation folder
![set path](Filter/Images/set_path.png)
3. Click "Save" button, from now on STM32MatTarget is fully functional
4. Set current path of Matlab, such as "\Filter\work"
5. Open Test_PIL_IIR_Filter.slx from repository

## Configuration of top model
* solver
![solver](Filter/Images/solver.png)
* data import
![data import](Filter/Images/data import.png)
* data import is used for test data inject, when the slx is loaded into memory, Matlab workspace automatically loads the input file: testdata.txt
![data import](Filter/Images/input.png)
* the testdata.txt is automatically loaded by callback of top model
![data import](Filter/Images/preload.png)
* hardware implementation, stm32.tlc is used
![data import](Filter/Images/hw impl.png)
* code generation page
![data import](Filter/Images/code.png)
* code interface page
![data import](Filter/Images/intf.png)
* STM32 options
![data import](Filter/Images/STM32 options.png)
* STM32 project files
![data import](Filter/Images/proj.png)
* Check the configuration of upper reference model, which is run in PIL mode
![data import](Filter/Images/pil ref.png)
* Check the configuration of lower reference model, which  is run in normal mode, note, the two reference model point to the same file "IIR_Filter_int32.slx", the only difference is "Simulation Mode" of each block parameters
![data import](Filter/Images/ref normal.png)
* finally, the test block is ready to run
![data import](Filter/Images/top model.png)

## Code Generation for PIL
1. Click the run button on the top model, the compilation begins
2. NMake error may appear complaining file 'IIR_Filter_int32.mk' not found
![data import](Filter/Images/nmake error.png)
3. A quick fix to the error maybe, first find this make file location, and add this path to Matlab invoke VS path:
>> setenv('VSCMD_START_DIR','slprj\sim\IIR_Filter_int32')
4. Click the run button on the top model, this time compilation will complete without errors
5. The next step is to select COM port, such as COM3, 115200, n, 8, 1
![data import](Filter/Images/Cport.png)
6. Selection of MCU, such as STM32F407VETx running at 168MHz
![data import](Filter/Images/mcu sel.png)
7. Selection of UART port of MCU, in the current configuration, USART1 is used
![data import](Filter/Images/uart.png)
8. Until now the code generation is complete for MCU
![data import](Filter/Images/code gen.png)
![data import](Filter/Images/pil files.png)

## Prepare hardware for PIL
1. Selection of toolchain, in this example Keil V5 is used
![data import](Filter/Images/keil.png)
2. Until now, Simulink is waiting for firmware ready
![data import](Filter/Images/wait firmware.png)
3. Meanwhile, STM32CubeMX is invoked with configuration already done by Simulink, if ST-Link V2 is used, the "SYS.Debug" property should be properly assigned to "Serial Wire", otherwise the MCU cannot be programmed in the future
![data import](Filter/Images/cube main.png)
4. in clock configuration, set HCLK to 168 MHz for STM32F407VETx, note: different clock speed is assigned here for different MCU type
![data import](Filter/Images/cube clock.png)
5. in STM32CubeMX project settings, set default firmware location to a specified path, or just download as prompted
![data import](Filter/Images/cube settings.png)
6. Generate code, and then open the generated project in Keil
![data import](Filter/Images/cube gen.png)
7. Build the firmware in Keil
![data import](Filter/Images/build firm.png)
8. Configure ST-Link V2
![data import](Filter/Images/stlink1.png)
![data import](Filter/Images/stlink2.png)
![data import](Filter/Images/stlink3.png)
9. Load program, now the firmware is running
![data import](Filter/Images/load program.png)
10. Click "Continue" button on Simulink, PIL is running
![data import](Filter/Images/results.png)
11. Profile results
![data import](Filter/Images/profile.png)