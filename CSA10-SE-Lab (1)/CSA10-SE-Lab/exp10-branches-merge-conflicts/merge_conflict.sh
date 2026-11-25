#!/usr/bin/env bash
# Experiment 10 - Branches and resolving merge conflicts.
source "$(dirname "$0")/../common.sh"
cd "$WORK"
git init -q --bare -b main remote/shared.git
git clone -q remote/shared.git seed 2>/dev/null; cd seed
printf "# Shared Project\n" > README.md
printf 'def greet():\n    return "Hello"\n' > app.py
git add .; git commit -qm "Initial commit"; git push -q origin main; cd ..
step "1. Clone the shared repository"
run git clone remote/shared.git me; cd me
step "2. Create and switch to a new branch"
run git checkout -b feature-greeting
step "3-4. Change greet() and commit"
printf 'def greet():\n    return "Hello, Roobini!"\n' > app.py
run git commit -am "Personalise greeting"
step "5. Push the branch"
run git push -u origin feature-greeting
step "(meanwhile) Collaborator changes the SAME line on main and pushes"
cd "$WORK"; git clone -q remote/shared.git collab 2>/dev/null; cd collab
printf 'def greet():\n    return "Welcome"\n' > app.py
as_collab git commit -qam "Change greeting to Welcome"; git push -q origin main
echo '$ (collaborator) git commit -am "Change greeting to Welcome" && git push origin main'
cd "$WORK/me"
step "6-7. Pull latest main, switch back to feature branch"
run git fetch origin
run git checkout feature-greeting
step "8. Merge main into the feature branch -> CONFLICT"
echo '$ git merge origin/main'; git merge origin/main 2>&1 || true
run git status --short
step "9. Open the conflicting file and resolve manually"
run cat app.py
printf 'def greet():\n    return "Welcome, Roobini!"\n' > app.py
echo '(edited by hand: kept both ideas -> "Welcome, Roobini!")'
run cat app.py
run git add app.py
step "10. Commit the resolved merge"
run git commit -m "Merge main into feature-greeting; resolve greeting conflict"
step "11. Push the merged branch (then open a pull request on GitHub)"
run git push origin feature-greeting
run git log --oneline --graph --decorate
