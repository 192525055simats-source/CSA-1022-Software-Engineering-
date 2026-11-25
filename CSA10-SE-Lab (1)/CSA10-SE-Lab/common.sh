# Shared helpers for the Git experiments (sourced by each script).
# A local bare repository stands in for GitHub so the whole workflow can run offline.
# To use real GitHub instead, replace the remote URLs with your own https://github.com/<user>/<repo>.git
export GIT_AUTHOR_NAME="Roobini P"   GIT_AUTHOR_EMAIL="roobini@example.com"
export GIT_COMMITTER_NAME="Roobini P" GIT_COMMITTER_EMAIL="roobini@example.com"
export GIT_CONFIG_GLOBAL=/dev/null GIT_EDITOR=true
WORK=${WORK:-$(mktemp -d)}
step() { echo; echo "### $*"; }
run()  { echo "\$ $*"; "$@" 2>&1; }
sh_()  { echo "\$ $*"; sh -c "$*" 2>&1; }
as_collab() { GIT_AUTHOR_NAME="Collaborator" GIT_AUTHOR_EMAIL="collab@example.com" GIT_COMMITTER_NAME="Collaborator" GIT_COMMITTER_EMAIL="collab@example.com" "$@"; }
