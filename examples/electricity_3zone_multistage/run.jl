using MacroEnergy
using Gurobi

(system, model) = run_case(@__DIR__; 
    optimizer=HiGHS.Optimizer,
    optimizer_attributes=("solver" => "ipm", "run_crossover" => "off", "ipm_optimality_tolerance" => 1e-3)
);