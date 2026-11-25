#!/usr/bin/env bash
# Experiment 15 - Team repository: module branches, pull requests, conflict, README documentation.
source "$(dirname "$0")/../common.sh"
cd "$WORK"
step "1. Set up the repository for the team project"
run git init --bare -b main remote/team-project.git
run git clone remote/team-project.git lead; cd lead
printf "# Team Project\n\n## Modules\n" > README.md
run git add README.md; run git commit -m "Initial commit"; run git push -u origin main
step "2. Create branches for individual modules"
cd "$WORK"
run git clone remote/team-project.git member-a; run git clone remote/team-project.git member-b
cd member-a; run git checkout -b module-auth
echo "def login(u, p): return True" > auth.py
printf -- "- auth: login module (Member A)\n" >> README.md
run git add .; run git commit -m "Add auth module"; run git push -u origin module-auth
cd ../member-b; run git checkout -b module-payment
echo "def pay(amount): return 'paid %s' % amount" > payment.py
printf -- "- payment: payment module (Member B)\n" >> README.md
run git add .; as_collab git commit -qm "Add payment module"; echo '$ git commit -m "Add payment module"  (Member B)'
run git push -u origin module-payment
step "3. Merge branches with pull requests after code review (module-auth first)"
cd "$WORK/lead"; run git fetch origin
echo "Code review: PR #1 module-auth -> approved"
run git merge --no-ff origin/module-auth -m "Merge pull request #1 from module-auth"
run git push origin main
step "4. Second PR conflicts on README.md (both modules edited the same line)"
echo "Code review: PR #2 module-payment -> approved after resolving conflict"
echo '$ git merge origin/module-payment'; git merge --no-ff origin/module-payment -m "Merge pull request #2 from module-payment" 2>&1 || true
run cat README.md
printf "# Team Project\n\n## Modules\n- auth: login module (Member A)\n- payment: payment module (Member B)\n" > README.md
echo "(resolved by keeping both lines)"
run cat README.md
run git add README.md; run git commit -m "Merge pull request #2 from module-payment (resolve README conflict)"
run git push origin main
step "5. Document the workflow in README.md"
cat >> README.md <<'T'

## Workflow
1. Create a branch per module: `git checkout -b module-<name>`
2. Commit small changes and push the branch.
3. Open a pull request into `main`; at least one teammate reviews it.
4. Resolve conflicts locally, then merge the approved PR.
T
run git commit -am "Document team workflow in README"; run git push origin main
step "6. Final history (submit the repository link)"
run git log --oneline --graph --decorate
run git ls-files
