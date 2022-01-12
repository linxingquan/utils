
pod_name=$1
name_space=$2
if [[ $name_space == "" ]]; then
  name_space=wps-be
fi

kubectl -n $name_space exec -it $pod_name -- /bin/sh
