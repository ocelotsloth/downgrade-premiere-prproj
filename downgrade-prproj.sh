#!/bin/bash

# Copyright (c) 2020 Mark Stenglein
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

###################################################################
# Script Name  : Downgrade PRPROJ File
# Description  : This script downgrades a Premiere Pro Project File
# Args         : List of PRPROJ files to downgrade
# Author       : Mark Stenglein
# Email        : hello@markstenglein.com
###################################################################

for file in "$@"
do
        EXT=$(echo "$file" | tail -c 7)
        if [[ $EXT == "prproj" ]]; then
                PRFILE=$(gunzip < "$file")
                MODIFIED=$(echo "$PRFILE" | sed "s/62ad66dd-0dcd-42da-a660-6d8fbde94876\" Version=\".*\"/62ad66dd-0dcd-42da-a660-6d8fbde94876\" Version=\"1\"/")
                echo "$MODIFIED" | gzip > "${file%.*}-downgraded.prproj"
        fi
done

