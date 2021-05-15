# Traffic-signal-control
## Traffic signal control using FSM

Consider a controller for traffic at the intersection of a main road and the sub road.

![alt text](https://imgur.com/KkrIdfs.jpeg)
#### The conditions must be considered:

•	The traffic signal for the main road gets highest priority because vehicles are continuously present on the main road. Thus, the main road signal remains green by default.

•	Occasionally, vehicles from the sub road arrive at the traffic signal. The traffic signal for the sub road must turn green only long enough to let the vehicle on the sub road go.

•	As soon as there are no vehicle on the sub road, the sub road traffic signal turns yellow and then traffic signal on the main road turns green again.

•	There is a sensor to detect vehicles waiting on the sub road. The sensor sends a signal X as input to the controller and X=1 if there are vehicles on the country road; otherwise, X=0.

•	There are delays on transitions from S1 to S2, from S2 to S3, and from S4 to S0. The delays must be controllable.


### State diagram:
The state machine diagram and the state definitions for the traffic signal controller are shown below.

FSM FOR TRAFFIC SIGNAL CONTROL

![State diagram](https://imgur.com/W6SKr6Z.jpeg)

State transition Table:

| State  | Signals  |    |
| :------------ |:---------------:| -----:|
| S0      | mnrd=G | sbrd=R |
| S1      | mnrd=Y        |  sbrd=R |
| S2 | mnrd=R        |    sbrd=R |
| S3 | mnrd=R        |    sbrd=G|
| S4 | mnrd=R        |    sbrd=Y |

### SIMULATION RESULTS:

![Simulation result](https://imgur.com/eKOdtQH.jpeg)





