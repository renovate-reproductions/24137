# renovate-discussion-24137
Minimal reproduction related to this discussion : https://github.com/renovatebot/renovate/discussions/24137

# Context

Hello :)

I've been trying to use the RegexManagers to make my Dockerfiles and GitLab-CI files from using LTS Node versions only. I've tried to handle this problem with the configuration in the [dockerLTS.json](dockerLTS.json) file.

Renovate successfully managed to upgrade the version in the gitlab-ci file but in the Dockerfile, it only changes the two lines that use an alpine image (production-builder and production stages) and not the first one that uses the "classic" image (the one called builder).

I've tested my regex using regex101 and it successfully finds the 3 lines in the Dockerfile with the right capture group.

# What has been tried to fix this issue

- Setting ```versioningTemplate: node``` in the ```regexManagers``` block
- Setting ```versioningTemplate: docker``` and capture the whole tag (including alpine, busybox or whatever) with the regex.