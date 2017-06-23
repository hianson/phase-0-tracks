# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?

A version control system (VCS) keeps track of who makes changes to projects, and when those changes are made. VCS is useful because it allows us to go back in time to earlier versions of a project.
* What is a branch and why would you use one?

Branches are copies of your main project, and whose changes are intended to be combined back into the main project to improve it. You would use a branch because there is no risk to the integrity of the original project; anything that goes wrong with a branch copy can simply be deleted.
* What is a commit? What makes a good commit message?

After modifying files and adding them to staging, a commit is executed to save those changes to your project, and to give a small description of the change. Ideally, commits should be often, meaning commit messages should be short and specific, and (according to Git) in the present tense.
* What is a merge conflict?

A merge conflict occurs when trying to combine two branches which have different changes in its latest commit. For example, merging branch 1 (with committed files "abc") and branch 2 (with committed files "xyz") will result in a merge conflict, because the 2 branches have different levels of commit. 
