# MathorCup2022D
Codes for MathorCup 2022 Problem D - 5G base station site selection planning.

----
### Preprocessing and basic modeling
- Preprocessing: [BaseStation.mlx](https://github.com/VoyagerXvoyagerx/MathorCup2022D/blob/main/BaseStation.mlx) 
- Results: [consts.mat](https://github.com/VoyagerXvoyagerx/MathorCup2022D/blob/main/consts.mat) 
- Obtaining the map: [shift_table.mlx](https://github.com/VoyagerXvoyagerx/MathorCup2022D/blob/main/shift_table.mlx) 
- Coverage expansion function: [expand.mlx](https://github.com/VoyagerXvoyagerx/MathorCup2022D/blob/main/Obj_fun1.mlx) 
- Traffic coverage calculation function: [Obj_fun1.mlx](https://github.com/VoyagerXvoyagerx/MathorCup2022D/blob/main/Obj_fun1.mlx) 
----
### Step1 Searching the initial solution
- Searching using greedy algorithm: [greedy.mlx](https://github.com/VoyagerXvoyagerx/MathorCup2022D/blob/main/greedy.mlx) 
- result: [data](https://github.com/VoyagerXvoyagerx/MathorCup2022D/blob/main/greedy.mat)
----
### Step2 Optimizing the sites
- Global simulated annealing: [SA.mlx](https://github.com/VoyagerXvoyagerx/MathorCup2022D/blob/main/SA.mlx) 
- Local simulated annealing: [SA_distri](https://github.com/VoyagerXvoyagerx/MathorCup2022D/blob/main/SA_distri.mlx) 
- result: [data](https://github.com/VoyagerXvoyagerx/MathorCup2022D/blob/main/greedy_2.mat)
----
### Step3 Removing redundancy
- Removing redundant basestations using greedy algorithm: [del_m.m](https://github.com/VoyagerXvoyagerx/MathorCup2022D/blob/main/del_m.m)  ->  [del.mlx](https://github.com/VoyagerXvoyagerx/MathorCup2022D/blob/main/del.mlx) 
- Visulization: [paint.m](https://github.com/VoyagerXvoyagerx/MathorCup2022D/blob/main/paint.m)
- result:
  - output of step3.1 [del_m](https://github.com/VoyagerXvoyagerx/MathorCup2022D/blob/main/greedy_3.mat)
  - output of step3.2 [del](https://github.com/VoyagerXvoyagerx/MathorCup2022D/blob/main/greedy_4.mat)
