#!/bin/sh
# script to create a tarball for the files that should be in the CTAN upload
#
# do not forget to replace comments/headers beforehand
# 1. date and version in manual/moderncv_userguide.tex (the bankingcv user guide)
# 2. find . -type f -exec sed -i 's/$OLD_DATE $OLD_VERSION/$NEW_DATE $NEW_VERSION/g' {} \;

# fetch version via git
VERSION=$(git describe --tags --dirty)
TARBALL=bankingcv-$VERSION.tar

# remove existing tarballs
rm -f $TARBALL $TARBALL.gz

# create tar with all files in git repo
git archive --prefix=bankingcv/ HEAD > $TARBALL

# remove git specific files
tar -f $TARBALL --delete bankingcv/.github/ bankingcv/.gitignore bankingcv/create-release-tarball.sh bankingcv/.codespellrc

# compress
gzip $TARBALL
