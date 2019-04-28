cd $1
options="-DskipTests"
if test "$2" != "" 
then
  options=$2
fi

mvn clean install $options
 
