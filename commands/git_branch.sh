from_branch=$1
to_branch=$2
if [[ $3 != "" ]]; then
  cd $3
fi
echo "Working directory: $(pwd)"

git checkout $from_branch
git pull

git checkout -b $to_branch $from_branch

echo "pushing $to_branch"
git push origin $to_branch

git branch --set-upstream-to=origin/$to_branch $to_branch

