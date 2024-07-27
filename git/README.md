
# $${\color{blue} \textbf{Git}}$$
  
Git is a distributed version control system designed to handle everything from small to very large projects with speed and efficiency. It was created by Linus Torvalds in 2005 for the development of the Linux kernel. In this article, we will discuss about Git, its features, advantages, and disadvantages.

**Environments** =[ Development --> Test /CPA  --> UAT --> Production ]

**What is Git?**

Git is a tool used by developers to manage and track changes in their code. It helps teams collaborate on projects without overwriting each other’s work.

**differents remote repos**
git hub
git lab <we can't make private repo in >
gitea < open source remote repo> / <it's generaly on-premisecs>
git trotoise < windows shell interface to git>

**Features of Git**

**1. Version Control System:**

Git keeps track of all the changes made to files in a project. This way, you can go back to previous versions if needed.

**2. Repositories:**

A Git repository (or repo) is where your project’s files and their history are stored. There are two main types:

**3. Local Repository:** 

This is stored on your computer.

**Remote Repository:**

This is stored on a server, like GitHub, so it can be accessed by multiple people.

**Commits:**

A commit is like a snapshot of your project at a specific point in time. It records changes made to the files.

**Branches:**

Branches allow you to work on different parts of a project separately. For example, you can have a “main” branch for stable code and a “feature” branch for new features you’re developing.

**Merging:**

When you’re done working on a branch, you can merge it back into the main branch. This combines your changes with the rest of the project.

**Cloning:**

Cloning is making a copy of a remote repository on your local machine so you can work on it.

**Reason to Choose Git**
**0. Distributed System:**

Every developer has a complete local copy of the project, allowing for offline work and increased resilience.

**1. Performance:**

Git is fast and efficient, handling large projects with ease.

**2. Branching and Merging:** 

Git’s lightweight branching and easy merging facilitate parallel development and feature isolation.

**3. Collaboration:**

Tools like GitHub enhance team collaboration, code reviews, and project management.

**4. Track Changes:**

Git tracks changes and maintains a history, making it easy to revert to previous versions.




**Git Basic Commands**

**Install Git**
```
yum install git -y
```
**Git Version Check**
```
git --version
```
**Configure Git: Set up your username and email.**
```
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```
**Create a Repository: Navigate to your project directory and initialize a Git repository.**
```
git init
```
**Make Your First Commit: Add files to the staging area and commit your changes.**
```
git add .

git commit -m "Initial commit"

```
**To Show commit histroy**
```
git log

git log --oneline
```

**Show Creditals which is add**
```
git config --list
git config
```
**show tracked and untracked files**
```
git status
```
**push local repo to remote repo**
```
git push origin main
```
**return to staging to working directory**
```
git restore --staged <file name>
```
**form local to staging area after commit**
```
git revert <commit id>
```

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
**Branches**



**To show Which Branch we present**
```
git branch -a

git branch

```
**Make  New Branch**
```
git branch <branch name - feature, test ...>
```
**To Change branch**
```
git checkout <branch name>
```
**Directly make branch and switch in branch newly created**
```
git ckeckout -b <new branch name>
```

**Delete Branches**
```
git branch -d <branch name>

git branch -D <branch name >

```
**Local Repo                             |                 Remote Repo**

git pull < put url copy past>                          = automatically merge changes

git fetch                                                  = changes don't show
```

```


**Remotly Add**
```
git remote add <b .name> url

git remote -v

```
**To show Commit Histroy** 
```
git rebase main
```
**To save Current work in a branch**
```
git stash

git stash list

```
**To continue the stop process which has been stop in stash**
```
git stash apply
```
**For specifiyng a particuler stash**
```
git stash apply stash@{2}
```
**To pick specitc file / for test branch to main branch**
process -->
1. git log
2. git checkout <b. name>
```
git cherry-pick <commit id>
```

**to show difference between two branches**
```
git diff 'main' 'test'
```





-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Notes:Hands on


**Configure Your Email and Name in GitBash with Commands**
````
git config --global user.email "email-id"
git config --global user.name "name"
````
**git init : To initialize our folder as git working directory**
````
git init
````

**git clone : To clone git repository to our machine from github.com**
````
 git clone <project-repo-url>
````

**git status : It will display staged , un-staged and un-tracked files**

````
 git status
````

- Staged Files : The files which are added for commit

- Un-Staged Files : The files which are modified but not added for commit

- Un-tracked files : Newly created files

**git add : It is used to add file(s) to staging area**

````
git add <file-name>
git add .
````
**restore staged file**
````
git restore --staged  <filename>
````
**git commit : It is used to commit staged files to git local repository**

````
git commit -m 'reason for commit'
````

**git revert: uncommmit/delete file from local repo**
````
git revert <commit id>
````

**git push : To push changes from git local repository to git central repository**

````
git push
````
**Branch: to check all branches**
````
git branch
````
**Create new branch and checkout**
````
git branch <branchname>
git checkout <branchname>
git checkout -b <branchname>
````
**delete branch**
````
git branch -d <branchname>
````
**pull remote repository to local**
````
git pull https://github.com/manojv022/Project-Student-App.git
````
**fetch remote repository to local**
````
git fetch https://github.com/manojv022/Project-Student-App.git
````

**git rebase:used to apply commites of one branchh to another**
````
git rebase main
````
**Cherry picking**
````
git cherry-pick dad47ed # Applies the given commit on the current branch
````
**Stashing**
````
git stash                    # Creates a new stash 
git stash list               # Lists all the stashes
git stash apply 1             # Apply stash
git stash apply stash@{1}     # Applies specific stash
git stash clear               # Deletes all the stashes

````



--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

