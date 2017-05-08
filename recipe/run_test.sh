# Up ulimit on OSX.
if [[ $(uname) == "Darwin" ]] && [[ $(ulimit -n) -lt 4096 ]] ; then
    ulimit -n 4096
fi
echo "ulimit -n:" `ulimit -n`
python -m instaseis.tests
