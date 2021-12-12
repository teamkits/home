#! /bin/sh -e

cd $(dirname $0)/..

tag_name="release-v$(date +'%Y%m%d%H%M%S')"
git tag $tag_name
git push origin $tag_name
