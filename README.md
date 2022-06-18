# MathorCup2022D
Codes for MathorCup 2022 Problem D - 5G base station site selection planning.
----
### Preprocessing and basic modeling
- Data
  -  Coordinates of the existing base station: [station.csv](https://github.com/VoyagerXvoyagerx/MathorCup2022D/blob/main/station.csv)
  -  Traffic at weak coverage points: [weak.csv](https://github.com/VoyagerXvoyagerx/MathorCup2022D/blob/main/weak.csv)
- Preprocessing: [BaseStation.mlx](https://github.com/VoyagerXvoyagerx/MathorCup2022D/blob/main/BaseStation.mlx) 
- Results: [consts.mat](https://github.com/VoyagerXvoyagerx/MathorCup2022D/blob/main/consts.mat) 
- Obtaining the map: [shift_table.mlx](https://github.com/VoyagerXvoyagerx/MathorCup2022D/blob/main/shift_table.mlx) 
- Coverage expansion function: [expand.mlx](https://github.com/VoyagerXvoyagerx/MathorCup2022D/blob/main/Obj_fun1.mlx) 
- Traffic coverage calculation function: [Obj_fun1.mlx](https://github.com/VoyagerXvoyagerx/MathorCup2022D/blob/main/Obj_fun1.mlx) 
----
### Step1 Searching the initial solution
- Searching using greedy algorithm: [greedy.mlx](https://github.com/VoyagerXvoyagerx/MathorCup2022D/blob/main/greedy.mlx) 
- Results: [greedy.mat](https://github.com/VoyagerXvoyagerx/MathorCup2022D/blob/main/greedy.mat)
----
### Step2 Optimizing the sites
- Global simulated annealing: [SA.mlx](https://github.com/VoyagerXvoyagerx/MathorCup2022D/blob/main/SA.mlx) 
- Local simulated annealing: [SA_distri.mlx](https://github.com/VoyagerXvoyagerx/MathorCup2022D/blob/main/SA_distri.mlx) 
- Results: [greedy_2.mat](https://github.com/VoyagerXvoyagerx/MathorCup2022D/blob/main/greedy_2.mat)
----
### Step3 Removing redundancy
- Removing redundant basestations using greedy algorithm: [del_m.m](https://github.com/VoyagerXvoyagerx/MathorCup2022D/blob/main/del_m.m)  ->  [del.mlx](https://github.com/VoyagerXvoyagerx/MathorCup2022D/blob/main/del.mlx) 
- Results:
  - Output of step3.1 [greedy_3.mat](https://github.com/VoyagerXvoyagerx/MathorCup2022D/blob/main/greedy_3.mat)
  - Output of step3.2 [greedy_4.mat](https://github.com/VoyagerXvoyagerx/MathorCup2022D/blob/main/greedy_4.mat)
----
### Visulazation
- Visulization: [paint.m](https://github.com/VoyagerXvoyagerx/MathorCup2022D/blob/main/paint.m)
