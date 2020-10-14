target=$1
dir=$CL_HOME/sweeper/merchant_dashboard/static/js

if [[ $target == "" ]]; then
  target=legacy
fi

cd $dir
echo "Working directory: $(pwd)"

./finch watch $target

