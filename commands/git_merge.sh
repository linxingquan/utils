from_branch=$1
to_branch=$2
if [[ $3 != "" ]]; then
  cd $3
fi
echo "Working directory: $(pwd)"

git checkout $from_branch
git pull

git checkout $to_branch
git pull

git merge $from_branch

