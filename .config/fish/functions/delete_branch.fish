function delete_branch
	git log ..$argv[1]; git branch -d $argv[1]; git push --delete origin $argv[1];
end