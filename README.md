Website PMIUM README
==============
Website PMIUM

Ruby version
--------------
ruby-2.1.4

How to clone onto C9
--------------
Open up your Dashboard. Create new Workspace. Choose 'Custom'. Give it the name "website_pmium". Once your workspace is loaded, type :

    git init
    git remote add origin git@github.com:SafwanMarwan/websitepmium.git
    git pull --rebase origin master

Note: You might need to add your cloud9 SSH keys to your github account You can get your cloud9 ssh keys by typing this:

    less ~/.ssh/id_rsa.pub

Copy the output and add it to your Github account under "Settings->SSH Keys" (or if doing just for this repo, go to "Settings->Deploy Keys")

You might also be prompted that your README.md file will be overwritten. Just Delete the existing README.md file and rerun  git pull --rebase origin master