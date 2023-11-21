#! /usr/bin/env python

from machetli import pddl, search

import pathlib

initial_state = pddl.generate_initial_state("domain.pddl", "problem.pddl")
successor_generators = [pddl.RemoveActions(), pddl.RemoveObjects(), pddl.RemovePredicates()]
evaluator_filename = pathlib.Path("da-evaluator-pddl.py")
result = search(initial_state, successor_generators, evaluator_filename)
pddl.write_files(result, "small-domain.pddl", "small-problem.pddl")
