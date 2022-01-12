
name=$1
name_space=$2
if [[ $name_space == "" ]]; then
  name_space=wps-be
fi

kubectl describe pod -n $name_space $name