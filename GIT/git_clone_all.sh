#!/bin/bash/

USER=olibraun;
curl "https://api.github.com/users/$USER/repos?per_page=1000" | grep -w clone_url | grep -o '[^"]\+://.\+.git' | xargs -L1 git clone