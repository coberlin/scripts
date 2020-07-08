#!/bin/bash
branches=(
  tmp-fix-migration-for-OB-330-use-zero-pricing
  v-OA-2504-more-polyfill-for-ie-11
)

for branch_name in "${branches[@]}"
do
  echo $branch_name
  git branch -D $branch_name
  git push -d origin $branch_name
done

# Optionally remove branches removed by others
# git remote prune origin
