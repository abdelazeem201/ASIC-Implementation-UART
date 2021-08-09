# ASIC-Implementation-UART
This repository presents design of UART module for serial communication used for short-distance, low speed and exchange of data between computer and peripherals. UART mainly contains Transmitter, Receiver and Baud Rate Generator. Baud Rate Generator generates the clock for the UART. We can achieve the desired Baud Rate by using divide factor from system clock. If we increase the baud rate, speed of serial data transmission increases. As the dividing factor decrease baud rate increases. in this paper we set the system clock frequency as 50MHz and time to transfer each data bit is 23.75ns with baud rate of 42.1 Mbps (dividing factor is 32). Due to increase in the baud rate the time taken to transfer the data decreases, so it is very useful for faster communication devices. Transmitter and Receiver blocks designed by algorithm state machine method simulated in ModelSim, synthesized in Design Compiler, and extracted in ICC in Nangate 45 nm CMOS cell library.
![Introduction-to-UART-Data-Transmission-Diagram](https://user-images.githubusercontent.com/58098260/102724261-07da7c00-4317-11eb-9cd6-c35269382054.png)


## Introduction
It is a 40-pin-pad-frame communication chip that integrated a transmitter and a receiver, implementing the UART protocol in 6-stage FSM based on 2-phase clocking. 

In this project, I went through the whole ASIC design flow:
* Front-end coding in Verilog (**./rtl**)
* Pre-simulation in Modelsim (**./Modelsim**)
![ModelSim](https://user-images.githubusercontent.com/58098260/102724352-ae268180-4317-11eb-80d4-453ea8b83d90.png)

* Synthesis in Design Compiler with TCL (**./Syn**)
* Post-Synthesis_Simulation (**./Post-Synthesis_Simulation**)
![Modelsim_post_DC](https://user-images.githubusercontent.com/58098260/102724449-46246b00-4318-11eb-8863-80adedae4410.png)

* Layout in ICC (**./Pnr**)


![ICC](https://user-images.githubusercontent.com/58098260/102724513-ac10f280-4318-11eb-9dbf-d5591986e6dd.jpg)

* Translate layout in Magic (**./Magic**)
![Magic](https://user-images.githubusercontent.com/58098260/102724411-02316600-4318-11eb-9c13-08d4a6b7a066.png)
* Layout verificate in Irsim (**./Irsim**)
![Irsim](https://user-images.githubusercontent.com/58098260/102724427-22f9bb80-4318-11eb-98ef-b6ea14015d03.png)

* Cleaned up DRC and LVS Violations using Calibre(**./pvr**).
![Calibre](https://user-images.githubusercontent.com/58098260/102727149-b0470b00-432c-11eb-891d-ab9874030f85.PNG)

*END*
