
type ..\git-task1\.gitignore > .gitignore
notepad .gitignore
start ..\git-task1\ignore.bat
git add --all
git commit -m "add gitignore"

cd . > readme.txt
git add --all
git commit -m "init"

git checkout -b develop
mkdir "task1 - git practise I"
cd "task1 - git practise I"
cd . > index.html
git add --all
git commit -m "add index.html"

git checkout -b images
mkdir images
copy ..\..\git-task1\images images
git add --all
git commit -m "add images dir"

echo add images source, close file when it's done
type ..\..\git-task1\images_source.txt > index.html
notepad index.html
git add --all
git commit -m "add images source"

git checkout develop
git checkout -b styles
mkdir styles
type ..\..\git-task1\site.css > styles\site.css
git add --all
git commit -m "add styles file"

echo add link to styles, close file when it's done
type ..\..\git-task1\styles_link.txt > index.html
notepad index.html
git add --all
git commit -m "add link to styles"

git checkout develop
git merge images

git merge styles
echo resolve conflict, close file when it's done
notepad index.html
git add --all
git commit -m "merge styles"

cd ../
git checkout master
git merge develop

git checkout develop
cd "task1 - git practise I"
git checkout -b images2
mkdir images2
copy ..\..\git-task1\images2 images2
git add --all
git commit -m "add images2 dir"

echo add images2 source, close file when it's done
notepad index.html
git add --all
git commit -m "add images2 source"

git checkout develop
git checkout -b styles2
mkdir styles2
type ..\..\git-task1\site2.css > styles2\site.css
git add --all
git commit -m "add styles2 file"

echo add link to styles2, close file when it's done
notepad index.html
git add --all
git commit -m "add link to styles"

git rebase images2
git push origin --all

git reflog > GIT_Basics_homework_I.txt