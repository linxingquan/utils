use_local_web_assets=$1
env=$2

if [[ $use_local_web_assets == "" ]]; then
  use_local_web_assets=False
fi
if [[ $env == "" ]]; then
  env=stage
fi

wish-python $CL_HOME/sweeper/merchant_dashboard/server.py --use_local_web_assets=$use_local_web_assets --env=$env 

