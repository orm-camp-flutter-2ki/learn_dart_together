#!/bin/bash

# 현재 브랜치 저장
current_branch=$(git symbolic-ref --short HEAD)

# 원격 저장소에서 업데이트된 정보를 가져옴
git fetch

# 머지할 브랜치 목록 생성 (현재 브랜치를 제외한 모든 브랜치)
branches=$(git branch -r | grep -v "origin/$current_branch" | sed 's/origin\///')

# 각 브랜치에 대해 PR을 가져와서 머지
for branch in $branches
do
    # 해당 브랜치의 PR을 가져옴
    pr_number=$(hub pr list -h $branch -s open -f "%I")

    # PR이 존재하면 머지
    if [ -n "$pr_number" ]; then
        # PR을 머지
        git checkout $branch
        git pull origin $branch
        git merge "pull/$pr_number/head"
        git push origin $branch

        # PR이 머지된 후 브랜치를 삭제할 경우 아래 라인을 추가합니다.
        # hub pr close -m "Merged manually" $pr_number
    else
        echo "No open PR found for branch $branch"
    fi
done

# 다시 현재 브랜치로 이동
git checkout $current_branch
