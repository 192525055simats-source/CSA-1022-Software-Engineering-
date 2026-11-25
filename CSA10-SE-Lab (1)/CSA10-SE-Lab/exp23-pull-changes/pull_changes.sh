#!/usr/bin/env bash
# Experiment 23 - Pull a collaborator's latest changes.
source "$(dirname "$0")/../common.sh"
cd "$WORK"
git init -q --bare -b main remote/team-project.git
git clone -q remote/team-project.git seed 2>/dev/null; cd seed
echo "# Team Project" > README.md; git add .; git commit -qm "Initial commit"; git push -q origin main; cd ..
step "1. Clone the repository (my local copy)"
run git clone remote/team-project.git mine; 
step "2. Collaborator makes a change and pushes it"
run git clone remote/team-project.git collaborator
cd collaborator
echo "Feature list: login, dashboard" > FEATURES.txt
run git add FEATURES.txt
as_collab git commit -qm "Add FEATURES.txt" && echo '$ git commit -m "Add FEATURES.txt"  (as Collaborator)'
run git push origin main
cd ../mine
step "3. My copy is now behind - check remote"
run git fetch origin
run git status -sb
step "4. Pull the latest changes"
run git pull origin main
step "5. Verify the collaborator's change is present"
run ls
run cat FEATURES.txt
run git log --format='%h %an: %s'
