#!/usr/bin/env bash
# Experiment 25 - Fork, clone, fetch upstream changes, feature branch, push, pull request.
source "$(dirname "$0")/../common.sh"
cd "$WORK"
git init -q --bare -b main remote/upstream.git
git clone -q remote/upstream.git seed 2>/dev/null; cd seed
echo "# Team Project" > README.md; echo "def home(): return 'home'" > app.py
git add .; git commit -qm "Initial commit"; git push -q origin main; cd ..
step "1. Fork the repository (a fork is a server-side copy)"
run git clone --bare remote/upstream.git remote/roobini-fork.git
step "2. Clone the fork to the local machine"
run git clone remote/roobini-fork.git project; cd project
run git remote add upstream "$WORK/remote/upstream.git"
run git remote -v
step "3. A teammate adds a feature to upstream meanwhile"
cd "$WORK"; git clone -q remote/upstream.git teammate 2>/dev/null; cd teammate
echo "def about(): return 'about'" >> app.py; git add .
as_collab git commit -qm "Add about page"; git push -q origin main
echo '$ (teammate) git commit -m "Add about page" && git push origin main'
cd "$WORK/project"
step "4. Fetch the latest upstream changes"
run git fetch upstream
run git merge upstream/main
step "5. Create a new branch for my feature (existing code stays untouched)"
run git checkout -b feature-contact
step "6. Implement the change and push to the fork"
echo "def contact(): return 'contact'" >> app.py
run cat app.py
run git commit -am "Add contact page"
run git push -u origin feature-contact
step "7. Pull request: fork/feature-contact -> upstream/main (diff of what the PR contains)"
run git log --oneline upstream/main..feature-contact
run git diff --stat upstream/main feature-contact
