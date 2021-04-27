![git-commands-workflows](images/cover.jpg)

*The git commands & workflows you need to know to work with git and automate your regular commands.*

<br />

<img src="./images/suitcase.png" width="10%" />

## Initialization

```sh
# paste this in your terminal to change your current working directory to the project directory
cd your_project_path

# initialize git
git init
```

<br />

<img src="./images/rocket.png" width="10%" />

## Commands

⚡️ The **repetitive** commands that I (and everyone else) use regularly.

```sh

# connect the remote GitHub repo with your local project
git remote add origin [github-repo-url]

# see untracked files
git status

# add all untracked files to the staging area
git add .

# commit the tracked files of the staging area
git commit -m "commit-msg"

# push all the changes to the GitHub
git push -u origin master

```

🏗 **Git Setup** if you have never used git before.

```sh
# configure git with your github username
git config --global user.name "your_github_username"

# configure git with your github email (email you used to sign up on GitHub)
git config --global user.email "your_email@whatever.com"
```

🎩 **Clone** a repository in your computer.

```sh
# clone a repo
git clone [repo_url]
```

🌲 The git commands you need to know to *work* with **branches**.

```sh

# list all branches
git branch

# create a new branch
git branch [branch_name]

# checkout to the new branch
git checkout [branch_name]

# 	OR

# create AND checkout to the new branch
git checkout -b [branch_name]

# pushing the new branch on GitHub
git push origin [branch_name]

# delete a branch locally
git branch -d [branch_name]

# delete a branch on GitHub
git push origin -d [branch_name]

# pulling changes from some other branch
git pull origin [branch_name]

# merge a branch with the current active branch
git merge [branch_name]

# merge a branch to some defined branch
git merge [source_branch] [target_branch]

```

📚 **Stashing** untracked changes — It saves all the *new untracked changes* and rewind your repo to the last commit.

```sh

# stash the untracked changes
git stash

# pop an existing stack
git stash apply stash@{stash_number}

# list all stashes
git stash list

# delete all saved stashes
git stash clear

```

🍒 **Pulling** all the new changes from the remote repository on GitHub

```sh

# pull changes from master branch
git pull origin master

# pulling changes from some other branch
git pull origin [branch_name]

```

🎯 Keep your GitHub forked repo in **sync** with the original repository.

```sh

# STEP #1: show URLs of remote repositories when listing your current remote connections
git remote -v

# STEP #2: add upstream
git remote add upstream [source-repo-url]

# STEP #3: fetching all the new changes from the main repository
git fetch upstream

# STEP #4: merging the new changes from the original repo to your forked local repo
git merge upstream/master

# STEP #5: pushing the new changes of the forked local repo to the GitHub
git push origin master

```

` Note: ` Replace master with main if your primary branch is `main`.


<br/>

<img src="./images/workflow.png" width="10%" />

## Workflows

Open your `.zshrc` or `.bashrc` file. It is located in your Home directory. Paste the following shellcode there.

```sh

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
function gch() {
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
alias ga='git add '
alias gaa='git add .'
alias gc='git commit -m '
alias gp='git push'
alias gra='git remote add origin '
alias gpm='git push -u origin master'

# create YOUR own git workflows
function [functionName]() {
    # commands to execute when function is called
    # if there are more than one commands, use && between them
    # to use the first output from the terminal, use "${1}"
}


```

### 🚀 Usage

Fetching changes from the original repo to your forked repo.

```sh

cd your_project_path

# do this only once in every forked local repo to add upstream
git remote add upstream [source-repo-url]

# write the following in the terminal – primary branch: master – whenever you need to fetch the changes
fetchremotems

# write the following in the terminal – primary branch: main – whenever you need to fetch the changes
fetchremotemn

```

Usage of the rest of the workflows.

```sh

# To create a new branch and also to checkout to it
gcb [branch_name]

# To checkout to an existing branch
gch [branch_name]

# To push changes to another branch
gbp [branch_name]

# To add, commit and push changes to the github
gacp "commit-msg"

# initialize git
gi

# check status
gs

# stage untracked file
ga [file_name]

# stage all untracked files
gaa

# commit the changes
gc "commit-msg"

# connect remote repo to the local repo
gra [repo-link]

# push changes to master
gpm

```

` NOTE ` I extensively use [Emoji-log](https://github.com/ahmadawais/emoji-log) by [Ahmad Awais](http://github.com/ahmadawais) in my commit msgs. I would highly recommend you to take a look at its [workflows](https://github.com/ahmadawais/emoji-log###THE%20WORKFLOW%20&%20MEANINGS).

## 👨🏻‍💻 Contributing

Feel free to add your git workflows in the repository. Just make sure you first read the [contributing guidelines](https://github.com/msaaddev/git-commands-workflows/blob/master/contributing.md) before making a PR.

## 🔑 License & Conduct

- MIT © [Saad Irfan](https://github.com/msaaddev)
- [Code of Conduct](https://github.com/msaaddev/git-commands-workflows/blob/master/code-of-conduct.md)
