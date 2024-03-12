#!/bin/bash

# 현재 브랜치 이름 가져오기
current_branch=$(git branch | grep '*' | cut -d ' ' -f 2)

# 현재 브랜치를 제외한 모든 브랜치 목록 가져오기
branches=$(git branch -r | grep -v '\->' | grep -v "$current_branch")

# 각 브랜치의 PR 목록 가져오기
for branch in $branches; do
  echo "### $branch 브랜치 PR 목록:"
  pull_requests=$(gh pr list -B "$branch" -s open --json url,title | jq -r '.[].url')
  for pull_request in $pull_requests; do
    echo "- $pull_request"
  done
done

# 각 브랜치의 PR을 모두 머지하기
for branch in $branches; do
  echo "### $branch 브랜치 PR 머지 시작:"
  pull_requests=$(gh pr list -B "$branch" -s open --json url,title | jq -r '.[].url')
  for pull_request in $pull_requests; do
    echo "- $pull_request 머지 시작..."
    gh pr merge "$pull_request" -m "Merge pull request #$(echo $pull_request | cut -d '/' -f 7)"
    echo "- $pull_request 머지 완료."
  done
  echo "### $branch 브랜치 PR 머지 완료."
done

echo "### 모든 브랜치 PR 머지 완료."
