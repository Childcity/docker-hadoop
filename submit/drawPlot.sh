wget https://bootstrap.pypa.io/get-pip.py && \
python get-pip.py --user && \
~/.local/bin/pip install tk matplotlib && \
rm -rf ./get-pip.py | \
mkdir output | \
python plot2d.py && \
exit 0
