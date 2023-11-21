#! /usr/bin/env python

from machetli import sas, search

import pathlib

initial_state = sas.generate_initial_state("small-problem.sas")
successor_generators = [sas.RemoveOperators(), sas.RemoveGoals(), sas.RemovePrePosts(), sas.RemoveVariables()]
evaluator_filename = pathlib.Path("da-evaluator-sas.py")
result = search(initial_state, successor_generators, evaluator_filename)
sas.write_file(result, "smaller-problem.sas")
