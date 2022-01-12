message=$1
working_dir=$2
if [[ $working_dir != "" ]]; then
  cd $working_dir
fi
echo "Working directory: $(pwd)"
echo "git branch: "
echo "$(git branch)"
additional_options=$3

git commit -m "$message" $additional_options
