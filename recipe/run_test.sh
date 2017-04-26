# Up ulimit on Travis and OSX.
if [[ $(uname) == "Darwin" ]] && [[ $TRAVIS == true ]] && [[ $(ulimit -n) -lt 4096 ]] ; then
    ulimit -n 4096
fi
echo "ulimit -n:" `ulimit -n`
python -m instaseis.tests
