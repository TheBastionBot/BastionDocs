#!/usr/bin/env bash

AWESOME_DIR_NAME=".awesome"

case $1 in
  build )
    mkdir -p $AWESOME_DIR_NAME
    cd $AWESOME_DIR_NAME
    rm -rfI * .*

    git clone https://github.com/AwesomeDocs/AwesomeDocs.git .
    rm -rf .git

    yarn install --prod

    cp -f ../content/* content/
    cp -f ../data/* data/
    cp -rf ../static static

    cd ..
    ;;

  serve )
    cd "$AWESOME_DIR_NAME" &>/dev/null \
      || (echo "You should build the documentation first, using --build." && exit 1)

    yarn start

    cd ..
    ;;

  deploy )
    cd "$AWESOME_DIR_NAME" &>/dev/null \
      || (echo "You should build the documentation first, using --build." && exit 1)

    yarn build && node scripts/gh-deploy.js

    cd ..
    ;;

  * )
    echo "AwesomeDocs Script"
    echo
    echo "Usage:"
    echo "  $0 [OPTION]"
    echo
    echo "Options:"
    echo "  build   -  Builds the documentation. This should be done before"
    echo "             you do anything else."
    echo "  serve   -  Serves the documentation in browser so that you can"
    echo "             preview it while working on it."
    echo "  deploy  -  Deploys to documentation site to GitHub Pages."
    echo
    ;;
esac
