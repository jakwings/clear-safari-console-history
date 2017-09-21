#!/bin/bash

set -e

export PATH='/usr/bin:/bin:/usr/sbin:/sbin'

for db in ~/Library/WebKit/com.apple.Safari/WebsiteData/LocalStorage/*.localstorage
do
    sqlite3 "${db}" "DELETE FROM ItemTable WHERE key = 'com.apple.WebInspector.console-prompt-history';"
done
