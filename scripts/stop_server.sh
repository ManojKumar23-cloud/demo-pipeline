#!/bin/bash
echo "Stopping the service"
isExistApp = `pgrep httpd`
if [[ -n  $isExistApp ]]; then
    service httpd stop        
fi
