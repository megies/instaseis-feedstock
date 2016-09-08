# Up ulimit on Travis and OSX.
if [[ $(uname) == "Darwin" ]] && [[ $TRAVIS == true ]] && [[ $(ulimit -n) -lt 2048 ]] ; then
    ulimit -n 2048
fi
python -m instaseis.tests
