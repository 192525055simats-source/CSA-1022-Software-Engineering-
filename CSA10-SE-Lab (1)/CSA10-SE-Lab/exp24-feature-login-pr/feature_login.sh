#!/usr/bin/env bash
# Experiment 24 - feature-login branch, login.py, pull request and merge.
source "$(dirname "$0")/../common.sh"
cd "$WORK"
git init -q --bare -b main remote/app.git
git clone -q remote/app.git seed 2>/dev/null; cd seed
echo "# App" > README.md; git add .; git commit -qm "Initial commit"; git push -q origin main; cd ..
run git clone remote/app.git work; cd work
step "1. Create branch feature-login"
run git checkout -b feature-login
step "2. Add login.py with a simple login function"
cat > login.py <<'T'
USERS = {"roobini": "secret123", "admin": "admin@123"}

def login(username, password):
    """Return True when the username/password pair is valid."""
    return USERS.get(username) == password

if __name__ == "__main__":
    print("roobini / secret123 ->", login("roobini", "secret123"))
    print("roobini / wrong     ->", login("roobini", "wrong"))
    print("ghost   / anything  ->", login("ghost", "anything"))
T
run cat login.py
run python3 login.py
step "3. Commit and push the branch"
run git add login.py
run git commit -m "Add simple login function"
run git push -u origin feature-login
step "4. Create pull request feature-login -> main (shown as a diff; PR itself is made on GitHub)"
run git diff --stat origin/main...feature-login
step "5. Merge the pull request (merge commit, like GitHub 'Create a merge commit')"
run git checkout main
run git merge --no-ff feature-login -m "Merge pull request #1 from roobini/feature-login"
run git push origin main
run git log --oneline --graph --decorate
