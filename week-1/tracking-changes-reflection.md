#How does tracking and adding changes make developers' lives easier?
It gives us the ability to visualize the newly changed and tracked files before committing them to the project.

#What is a commit?
A Commit is the Save button for the terminal. When we make a commit we are saying we want to save the changes that were completed and prepare to add them into Master/Remote.

#What are the best practices for commit messages?
Commits should have a meaningful message with imperative present-tense verbs, that if others were to read, they will know exactly what and why the commit happened. Imperative present-tense such as "Fix" and not "Fixed" or "Fixing"

#What does the HEAD^ argument mean?
HEAD is where you are at in the commit.Once you add the ^ it will take you back to the prior commit you made. Its almost like a edit undo button for the terminal.


#What are the 3 stages of a git change and how do you move a file from one stage to the other?
The 3 Stages of a git change are 1) Changes not staged for a commit- you would add it to the staging process by running git add. 2)Changes to be committed - to move the file over we would with a git commit command. 3)Untracked File- again you would need to stage this file with git add.

#Write a handy cheatsheet of the commands you need to commit your changes?
git status: see what changes are where
git add: puts it into the staging area
git commit -m "Add Commit Memo"
git log: see what commits have taken place

#What is a pull request and how do you create and merge one?
A pull request on Github is when changes to a project have been pushed to the remote/orgin. This request is asking if you want to merge the changes to the project that were sent to it.
git pull: pulling changes from the remote and merging them to the branch.

To Create a pull request you will have to push the changes to the remote( git push orgin feature-branch). Then go to the remote on GitHub and click New Pull Request. Before moving forward, make sure your branch is the base fork and not the Original Repo. Once this is confirmed scroll down click create a pull request. After that you will be able to merge the pull.

#Why are pull requests preferred when working with teams?
It gives the team the ability to view and make changes to updated files before merging it to the Main Master.