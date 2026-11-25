#!/usr/bin/env bash
# Experiment 9 - Fork-and-pull-request workflow (all 10 tasks).
source "$(dirname "$0")/../common.sh"
cd "$WORK"
git init -q --bare -b main remote/calculator.git
git clone -q remote/calculator.git seed 2>/dev/null; cd seed
printf "# Calculator\nA tiny Python calculator.\n" > README.md
cat > calc.py <<'T'
def add(a, b):
    return a + b

def sub(a, b):
    return a - b
T
git add .; git commit -qm "Initial calculator"; git push -q origin main; cd ..
step "Task 1: Fork the public repository (server-side copy)"
run git clone --bare remote/calculator.git remote/roobini-calculator.git
step "Task 2: Clone the fork to the local machine"
run git clone remote/roobini-calculator.git calc-local; cd calc-local
run git remote add upstream "$WORK/remote/calculator.git"
step "Task 3: Create a feature branch"
run git checkout -b feature/add-power
step "Task 4: Add a new function"
cat >> calc.py <<'T'

def power(a, b):
    return a ** b
T
run cat calc.py
step "Task 5: Commit and push the branch"
run git commit -am "Add power function"
run git push -u origin feature/add-power
step "Task 6: Open pull request feature/add-power -> main (contents of the PR)"
run git log --oneline origin/main..feature/add-power
run git diff --stat main feature/add-power
step "Task 7: Reviewer reviews the pull request and gives feedback"
cd "$WORK"; git clone -q remote/roobini-calculator.git reviewer 2>/dev/null; cd reviewer
run git checkout feature/add-power
echo "Review comment (Collaborator): power() needs a docstring and a negative-exponent test."
step "Task 8: Respond to feedback with an additional commit"
cd "$WORK/calc-local"
cat > calc.py <<'T'
def add(a, b):
    return a + b

def sub(a, b):
    return a - b

def power(a, b):
    """Return a raised to the power b (b may be negative)."""
    return a ** b

if __name__ == "__main__":
    print(power(2, 3), power(2, -1))
T
run python3 calc.py
run git commit -am "Address review: add docstring and example"
run git push origin feature/add-power
step "Task 9: PR approved - merge into main"
cd "$WORK"; git clone -q remote/roobini-calculator.git merge-clone 2>/dev/null; cd merge-clone
run git merge --no-ff origin/feature/add-power -m "Merge pull request #1 from roobini/feature/add-power"
run git push origin main
run git log --oneline --graph --decorate
step "Task 10: Summary for submission"
echo "PR link  : https://github.com/<your-username>/calculator/pull/1   (replace after you open the real PR)"
echo "Changes  : added power(a, b) to calc.py, then docstring + example after review"
echo "Collaboration: reviewer commented on the PR, I pushed a follow-up commit, PR merged"
