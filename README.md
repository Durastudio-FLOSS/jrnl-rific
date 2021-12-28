# Jrnl-Rific

This is a private repo. If you want to contribute, contact me Kelley Graham (50ten40) for an account on the private server. All GitHub activity has been suspended.

## Automating jrnl use for creative workflow. https://jrnl.sh/

* Jrnl provides a simple, less distracting work environment
* Jrnl maintains a consistent tech experience
* Jrnl has a flat learning curve with few changes over time
* Jrnl offers multiproject support
* Jrnl-Rific makes Git integration easy

## Usage - [ RTFM ]

Folder Structure for multiple journals with associated git repos.
```
   [ GIT REPOS ]
      |
      |--> symlink: "ln -s ~/jrnl-rific/export_jrnl_files.sh"     
      |
      |--> [ REPO 1 ]
      |
      |--> [ REPO 2 ] 
      |
      |--> [ REPO 3 ]
      |
      |--> [ ...    ]       
```
* Each journal title must match the repo name.
* Inside your working directory [ GIT REPOS ] execute ../export_jrnl_files.sh
* Respond to the prompt to push changes. Done!
* Read the script to see what's going on. :)

## Todo
* Make automation switch in config for unattended updates of GIT repos
* Configuration file editor eg jrnl.yaml
* Add, edit, remove additional journals
* Drupal CMS publishing via Feeds Import from CSV
* CalDAV and CarDAV tagged entry push support

## Resources
* Building a Sabre/Dav Client - https://sabre.io/dav/building-a-caldav-client/
* Python iCalendar Search - https://duckduckgo.com/?q=python+icalendar
* Python iCalendar Docs - https://icalendar.readthedocs.io/en/latest/
* Python URL File Parsing etc - https://github.com/irgangla/icalevents
* Python Thorn webhooks project (Django only) - https://github.com/robinhood/thorn#about
* Python Github Webhooks - https://github.com/bloomberg/python-github-webhook
