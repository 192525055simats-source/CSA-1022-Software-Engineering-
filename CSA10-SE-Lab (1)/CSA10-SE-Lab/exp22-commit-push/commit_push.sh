#!/usr/bin/env bash
# Experiment 22 - Commit changes locally and push to GitHub.
source "$(dirname "$0")/../common.sh"
cd "$WORK"
git init -q --bare -b main remote/demo.git
git clone -q remote/demo.git seed 2>/dev/null; cd seed
echo "# Demo" > README.md; git add .; git commit -qm "Initial commit"; git push -q origin main; cd ..
step "1. Clone the repository"
run git clone remote/demo.git; cd demo
step "2. Modify README.md"
echo "Updated for lab experiment 22." >> README.md; run cat README.md
step "3. Stage the changes"
run git add README.md; run git status
step '4. Commit with message "Updated README"'
run git commit -m "Updated README"
step "5. Push to GitHub"
run git push origin main
step "6. Verify local and remote are in sync"
run git log --oneline --decorate
run git status -sb
