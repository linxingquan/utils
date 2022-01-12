branch=$1

echo "deleting the remote $branch ..."
git push origin --delete $branch
echo "deleting the local $branch ..."
git branch -D $branch