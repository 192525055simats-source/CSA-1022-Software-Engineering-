#!/usr/bin/env bash
# Experiment 21 - Clone an existing repository and make a small change.
source "$(dirname "$0")/../common.sh"
cd "$WORK"
step "Setup: an existing public repository (stand-in for GitHub)"
git init -q --bare -b main remote/sample-repo.git
git clone -q remote/sample-repo.git seed 2>/dev/null; cd seed
printf "# Sample Repo\nThis repo is used for practcing git.\n" > README.md
git add . ; git commit -qm "Initial commit"; git push -q origin main; cd ..
step "1. Clone the repository"
run git clone remote/sample-repo.git
step "2. Navigate into the directory and open a file"
cd sample-repo; run ls -la; run cat README.md
step "3. Make a small edit (fix a typo: practcing -> practicing)"
run sed -i 's/practcing/practicing/' README.md
step "4. Save and view the change"
run git status --short
run git diff
