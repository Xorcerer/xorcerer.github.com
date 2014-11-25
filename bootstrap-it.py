#!/usr/bin/env python

import sys


tmpl_filename = sys.argv[1]
in_filename = sys.argv[2]
out_filename = sys.argv[3]
title = sys.argv[4]

content = open(in_filename, 'r').read()

template = open(tmpl_filename, 'r').read()

with open(out_filename, 'w') as f:
    f.write(template.replace('$(title)', title).replace('$(body)', content))

