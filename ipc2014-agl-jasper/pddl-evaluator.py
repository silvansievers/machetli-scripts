from pathlib import Path
import subprocess

from machetli import pddl, tools

def evaluate(state):
    with pddl.temporary_files(state) as (domain_filename, problem_filename):
        # print(domain_filename)
        # print(problem_filename)
        # with open(domain_filename) as f:
            # print(f.read())
        # with open(problem_filename) as f:
            # print(f.read())
        # subprocess.check_call(["validate", domain_filename, problem_filename])
        # command = ["validate", f"{domain_filename}", f"{problem_filename}"]
        # run = tools.Run(command, time_limit=20, memory_limit=3500)
        # stdout, stderr, returncode = run.start()
        command = [tools.get_python_executable(), Path.home() / "repos/downward/main/src/translate/translate.py", f"{domain_filename}", f"{problem_filename}"]
        run = tools.Run(command, time_limit=20, memory_limit=3500, log_output="always")
        stdout, stderr, returncode = run.start()
        # print(stdout)
        # print(stderr)
        # print(returncode)
        if returncode != 0:
            print("invalid PDDL as in 'FD does not accept it'")
            return False
        command = ["python2.7", Path.home() / "repos/hapori/planners/ipc2014-agl-jasper/translate/translate.py", f"{domain_filename}", f"{problem_filename}"]
        run = tools.Run(command, time_limit=20, memory_limit=3500, log_output="always")
        stdout, stderr, returncode = run.start()
        # print(f"stdout: {stdout}")
        # print(f"stderr: {stderr}")
        # print(f"returncode: {returncode}")
        return "assert (left_vars | right_vars) == (left_vars & right_vars) | eff_var" in stderr
