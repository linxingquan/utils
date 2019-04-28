from_branch=$1
to_branch=$2
cd $3

git checkout $from_branch
git pull

git checkout $to_branch
git pull

git merge $from_branch

