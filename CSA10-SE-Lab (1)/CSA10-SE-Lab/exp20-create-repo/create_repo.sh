#!/usr/bin/env bash
# Experiment 20 - Create a GitHub repository, clone it, edit README.md, push.
source "$(dirname "$0")/../common.sh"
cd "$WORK"
step "1. Create the repository (GitHub stand-in) with an initial README.md"
run git init --bare -b main remote/personal-project.git
run git clone remote/personal-project.git web-ui
cd web-ui; echo "# personal-project" > README.md
run git add README.md; run git commit -m "Initial commit"; run git push -u origin main
cd ..
step "2. Clone the repository to the local machine"
run git clone remote/personal-project.git personal-project
cd personal-project
step "3. Edit README.md (add a project description)"
cat >> README.md <<'T'

## Description
Personal project created for CSA10 Software Engineering lab.
It demonstrates the basic Git workflow: clone, edit, commit and push.
T
run cat README.md
step "4. Stage, commit and push"
run git status --short
run git add README.md
run git commit -m "Add project description to README"
run git push origin main
step "5. Verify"
run git log --oneline
run git status -sb
