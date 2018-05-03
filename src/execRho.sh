##
## run Rholang source code
##

if [ "$#" -ne 1 ]; then
    echo "Usage is: $0 src-code.rho";
    exit -1
fi
docker run \
       -ti \
       --mount type=bind,source="$(pwd)",target=/tmp rchain/rnode \
       --eval /tmp/$1
