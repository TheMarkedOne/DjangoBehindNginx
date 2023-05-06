#!/bin/bash
echo "# DjangoBehindNginx" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://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@github.com/TheMarkedOne/DjangoBehindNginx.git
git push -u origin main
