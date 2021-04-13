# ----------------  git worflows ---------------- #

# Keep your GitHub forked repo in sync with the original repository with master as the primary branch
function fetchremotems() {
	git fetch upstream &&
	git merge upstream/master &&
	git push origin master
}

# Keep your GitHub forked repo in sync with the original repository with main as the primary branch
function fetchremotemn() {
	git fetch upstream &&
	git merge upstream/main &&
	git push origin main
}

# create new branch and checkout to it
function gcb() {
	git checkout -b "${1}"
}

# checkout to a branch
function gc() {
	git checkout "${1}"
}

# push changes to another branch
function gbp() {
	git push origin "${1}"
}

# add, commit, push changes to github
function gacp() {
	git add . &&
	git commit -m "${1}" &&
	git push
}

# aliases
alias gi='git init'
alias gs='git status'
alias gaa='git add .'
alias gc='git commit -m '
alias gp='git push'
alias gpm='git push origin master'
