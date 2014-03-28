#!/bin/bash

[ -f /.setup_trac.sh ] && /bin/bash /.setup_trac.sh

tracd --port 8000 /trac
