#!/bin/bash
read -p "Commit description: " desc && \
#rake gen_deploy;
git add -A;
git commit -m "$desc";
git push
exit
