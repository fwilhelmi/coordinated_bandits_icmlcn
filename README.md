# coordinated_bandits_icmlcn
Resources associated with the paper "Coordinated Multi-Armed Bandits for Improved Spatial Reuse in Wi-Fi"

Article's 'BibTeX'' citation:

```
@article{wilhelmi2024coordinated,
  title={Coordinated Multi-Armed Bandits for Improved Spatial Reuse in Wi-Fi},
  author={Wilhelmi, Francesc and Bellalta, Boris and Szott, Szymon and Kosek-Szott, Katarzyna and Barrachina-Mu{\~n}oz, Sergio},
  journal={arXiv preprint arXiv:2412.03076},
  year={2024}
}
```

## Table of Contents
- [Authors](#authors)
- [Abstract](#abstract)
- [Repository description](#repository-description)
- [Contribute](#contribute)

## Authors
* [Francesc Wilhelmi](https://fwilhelmi.github.io/)
* Boris Bellalta
* Szymon Szott
* Katarzyna Kosek-Szott
* Sergio Barrachina-Muñoz

## Abstract
Multi-Access Point Coordination (MAPC) and Artificial Intelligence and Machine Learning (AI/ML) are expected to be key features in future Wi-Fi, such as the forthcoming IEEE 802.11bn (Wi-Fi 8) and beyond. In this paper, we explore a coordinated solution based on online learning to drive the optimization of Spatial Reuse (SR), a method that allows multiple devices to perform simultaneous transmissions by controlling interference through Packet Detect (PD) adjustment and transmit power control. In particular, we focus on a Multi-Agent Multi-Armed Bandit (MA-MAB) setting, where multiple decision-making agents concurrently configure SR parameters from coexisting networks by leveraging the MAPC framework, and study various algorithms and reward-sharing mechanisms. We evaluate different MA-MAB implementations using Komondor, a well-adopted Wi-Fi simulator, and demonstrate that AI-native SR enabled by coordinated MABs can improve the network performance over current Wi-Fi operation: mean throughput increases by 15%, fairness is improved by increasing the minimum throughput across the network by 210%, while the maximum access delay is kept below 3 ms.

## Repository description
This repository contains the necessary files to generate the results included in the "Coordinated Multi-Armed Bandits for Improved Spatial Reuse in Wi-Fi" publication, accepted for presentation to ICMLCN 2025. The results were obtained using the open-source Wi-Fi simulator Komondor (). 

Repository structure:

1. LaTeX files: contains the files used to generate the manuscript.
2. Komondor files: 
	a. Input generator: Contains the source files used to generate the Komondor input files.
	b. Komondor input: Contains the simulator's input files used for simulating the scenarios considered in the paper.
	c. Komondor output: Contains the simulator's output files generated for each scenario.

## Contribute

If you want to contribute, please contact to [francisco.wilhelmi@upf.edu](francisco.wilhelmi@upf.edu)
