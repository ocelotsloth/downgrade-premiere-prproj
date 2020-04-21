# Downgrade Premiere Pro Project Files

Tooling to Downgrade Premiere Pro Project Files

These scripts allow you to take a Premiere Pro project file and downgrade
it to a previous version of Premiere Pro. In the process, you will lose any
attributes that are not part of the older version of Premiere that you are
downgrading to.

Included are two files:
  - A Bash script that can be used on any MacOS or Unix-like system. It only requires gzip/gunzip, bash, and sed to be available on the system.
  - A MacOS Automator Workflow. This workflow, when imported to Finder, provides a quick-action.

## Disclaimer

See the rest of the license conditions (this is released under the very permissive MIT license), look at the included LICENSE file.

```
MIT License

Copyright (c) 2020 Mark Stenglein

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

## Installing the MacOS Quick Action

1. Download the files here:
2. Extract the ZIP file and open the extracted folder.
3. Double click the `downgrade-prproj.workflow` workflow file. Say yes when asked if you wish to import the workflow.

## Using the MacOS Quick Action

1. Open Finder to the projet file(s) you wish to downgrade.
2. Select all of the `prproj` files you wish to downgrade. The quick action allows you to select multiple files at one time.
3. Right click one of the selected files and select `Quick Actions > downgrade-prproj`.
4. You should see new `prproj` files appear of the same name, with `-downgraded` added to the file names.

