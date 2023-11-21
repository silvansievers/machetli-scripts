#!/usr/bin/env python3

import argparse
from pathlib import Path
import pprint

from machetli import environments, pddl, search

parser = argparse.ArgumentParser()
parser.add_argument("evaluator_path", type=str)
parser.add_argument("domain", type=str)
parser.add_argument("problem", type=str)
args = parser.parse_args()

initial_state = pddl.generate_initial_state(args.domain, args.problem)
successor_generators = [pddl.RemoveActions(), pddl.RemoveObjects(), pddl.RemovePredicates()]
evaluator_path = Path(args.evaluator_path).resolve()
assert evaluator_path.exists()
environment = environments.LocalEnvironment(batch_size=4)

result = search(
    initial_state,
    successor_generators,
    evaluator_path,
    environment,
    deterministic=False)
pddl.write_files(result, "domain.pddl", "problem.pddl")
