# PUF
Design and Evaluation of an arbiter-delay-based Physically Unclonable Function (Hardware Security Assignment)

## Overall Objective
Build and simulate an Arbiter-PUF using CADENCE and evaluate its quality metrics namely uniqueness and reliability.

### Arbiter-PUF Architecture: 
The following figure shows the Arbiter-PUF circuit that comprises n delay stages or switching components. A rising input pulse is applied to two parallel delay stages. The paths for the input pulse are controlled by the inputs or challenges of the switching component. Due to random process variations, the switching element introduces different gate delays, resulting in the different arrival times of the input pulses at the inputs A and B. The arbiter at the end generates a response bit depending on the difference of the arrival times.

![screenshot from 2018-06-04 01 43 23](https://user-images.githubusercontent.com/28307467/40892533-cc6de5b4-6798-11e8-9c1c-54f9b2b1ba8c.png)

### PUF Evaluation
In order to evaluate the PUF, Monte Carlo simulation has been used to generate 32-bit response for 30 different instances of the 16-bit Arbiter-PUF at different temperatures {-40C, 25C, 85C} and at the voltage 3.3V, then the following quality metrics were considered: 

#### Uniqueness: 
which represent the ability of the PUF to generate unique IDs. Where the average uniqueness for 30 instances of the 16-bit Arbiter-PUF has been calculated for each of the temperatures.

#### Reliability: 
which represent the ability of the PUF to generate a consistent response for the same challenge, given the environmental variability. Where the reliability for 30 instances of the 16-bit Arbiter-PUF across the temperature ranges -40C to 25C and 25C to 85C has been calculated.
