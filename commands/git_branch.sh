from_branch=$1
to_branch=$2
cd $3

git checkout $from_branch
git pull

git checkout -b $to_branch $from_branch
git push --set-upstream origin $to_branch

