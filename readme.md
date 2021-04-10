![git-commands-workflows](images/cover.jpg)

*The git commands & workflows I use on daily basis.*

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

⚡️ ***The repetitive commands that I (and everyone else) use regularly.***

```sh

# connect the remote GitHub repo with your local project
git remote add origin [github-repo-url]

# add all untracked files to the staging area
git add .

# commit the tracked files of the staging area
git commit -m "commit msg"

# push all the changes to the GitHub
git push -u origin master

```

🎩 ***Clone a repository in your computer.***

```sh
# clone a repo
git clone [repo_url]
```

🌲 ***The git commands you need to know to work with branches.***

```sh

# list all branches
git branch

# create a new branch
git branch [branch_name]

# checkout to the new branch
git checkout [branch_name]

# 				OR

# create AND checkout to the new branch
git checkout -b [branch_name]

# pushing the new branch on GitHub
git push origin [branch_name]

# delete a branch
git branch -d [branch_name]

```

🎯 ***Keep your GitHub forked repo in sync with the original repository.***

```sh

# STEP #1: show URLs of remote repositories when listing your current remote connections
git remote -v

# STEP #2: add upstream
git remote add upstream [source-repo-url]

# STEP #3: fetching all the new changes from the main repository
git fetch upstream

# STEP #4: merging the new changes from the original repo to your forked local repo
git merge upstream/master

# STEP #5: pushing the new changes of forked local repo to the GitHub
git push origin master

```

<br/>

<img src="./images/workflow.png" width="10%" />

## Workflows

Open your `.zshrc` or `.bashrc` file. It is located in your root directory. Paste the following shell code there.

```sh

# Keep your GitHub forked repo in sync with the original repository with master as the primary branch
function fetchremotems() {
	git fetch upstream &&
	git merge upstream/master &&
	git push origin master
}

# Keep your GitHub forked repo in sync with the original repository with master as the primary branch
function fetchremotemn() {
	git fetch upstream &&
	git merge upstream/master &&
	git push origin master
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
	git commit -m "${1}"
	git push
}

```

💥 ***Fetching changes from the original repo to your forked repo.***

```sh

cd your_project_path

# do this only once in every forked local repo to add upstream
git remote add upstream [source-repo-url]

# write the following in the terminal – primary branch: master – whenever you need to fetch the changes
fetchremotems

# write the following in the terminal – primary branch: main – whenever you need to fetch the changes
fetchremotemn

```

🎲 ***Usage of the rest of the workflows.***

```sh

# To create a new branch and also to checkout to it
gcb [branch_name]

# To checkout to an existing branch
gc [branch_name]

# To push changes to another branch
gbp [branch_name]

# commit

gacp "commit msg"

```

` NOTE ` I extensively use [Emoji-log](https://github.com/ahmadawais/emoji-log) by [Ahmad Awais](http://github.com/ahmadawais) in my commit msgs. You should also take a look at its [workflows](https://github.com/ahmadawais/emoji-log###THE%20WORKFLOW%20&%20MEANINGS).

## 👨🏻‍💻 Contributing

Feel free to add your git workflows in the repository. Just make sure you first read the [contributing guidelines](https://github.com/msaaddev/git-commands-workflows/blob/master/contributing.md) before making a PR.

## 🔑 License

- [MIT](https://github.com/msaaddev/git-commands-workflows/blob/master/LICENSE)
