#!/bin/bash
set -e

base_dir=$home/my-space/
git_org="akashaswal5"
git_host="github.com"

# list of git repos
repos=(
	"personal"
	"previous_record"
	"poc"
	"payloads"
	"money"
	"jira_script"
	"web-vulnerability-scanner"
	"phantomnet"
	"networking_script"
	"resuma"
	"weekly_report"
	"wallpapers"
	"devops_repo_script"
)

# check condition if base_dir exist or not
if [ ! -d "$base_dir" ]; then
	echo "creating directory: $base_dir"
	mkdir -p "$base_dir"
fi

for repo_name in "${repos[@]}"; do
	repo_url="https://$git_host/$git_org/$repo_name.git"
	target_path="$base_dir/$repo_name"

	echo -e "\n checking repo: $repo_name"

	# check if repo exists on github
	if git ls-remote "$repo_url" >/dev/null 2>&1; then
		echo "repo exists on github"

		# if repo already exist
		if [ -d "$target_path/.git" ]; then
			echo "repo $repo_name already exists, pulling latest changes"
			git -C "$target_path" pull
		else
			echo "cloning from $repo_url ........"
			git clone "$repo_url" "$target_path"
		fi
	else
		echo "repo $repo_name does not exist on github, skipping..."
	fi
done
