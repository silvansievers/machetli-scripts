#! /usr/bin/env python

from machetli import pddl, tools

import pathlib
import sys

def evaluate(state):
    with pddl.temporary_files(state) as (domain_filename, problem_filename):
        # ensure that problem doesn't become unsolvable
        # command = [sys.executable, pathlib.Path.home() /"repos/downward/domain-abstractions/fast-downward.py", "--debug", f"{domain_filename}", f"{problem_filename}", "--search", "astar(lmcut)"]
        # run = tools.Run(command, time_limit=20, memory_limit=3000)
        # stdout, stderr, returncode = run.start()
        # if returncode == 12:
            # return False

        command = [sys.executable, pathlib.Path.home() /"repos/downward/domain-abstractions/fast-downward.py", "--debug", f"{domain_filename}", f"{problem_filename}", "--search", "astar(scp([domain_abstractions(multiple_domain_abstractions_cegar(max_abstraction_size=1000000,max_collection_size=10000000,abstraction_generation_max_time=1,total_max_time=2,stagnation_limit=1,blacklist_trigger_percentage=0.75,enable_blacklist_on_stagnation=true,random_seed=2018,verbosity=normal,use_wildcard_plans=false,init_split=true,flaw_treatment=random_single_atom),verbosity=debug)],max_orders=infinity, max_optimization_time=2, diversify=true, max_time=4, orders=greedy_orders(scoring_function=max_heuristic_per_stolen_costs), random_seed=2018))"]
        run = tools.Run(command, time_limit=20, memory_limit=3000)
        stdout, stderr, returncode = run.start()
        # print(stdout)
        # print(returncode)

        return returncode == 245
