#!/bin/bash
# Auto make Download Section by Caio99BR <caiooliveirafarias0@gmail.com>

if [[ ${NEW_REPO_SLUG} == "Caio99BR" || ${NEW_REPO_SLUG} == "ifcaro" ||
      ${NEW_REPO_SLUG} == "sp193" || ${NEW_REPO_SLUG} == "ShaolinAssassin" ||
      ${NEW_REPO_SLUG} == "uyjulian" || ${NEW_REPO_SLUG} == "Jay-Jay-OPL" ||
      ${NEW_REPO_SLUG} == "BatRastard" || ${NEW_REPO_SLUG} == "AKuHAK" ||
      ${NEW_REPO_SLUG} == "ElPatas1" || ${NEW_REPO_SLUG} == "rickgaiser" ||
      ${NEW_REPO_SLUG} == "Dr-Q" || ${NEW_REPO_SLUG} == "ps2homebrew" ]]
then
	echo "You have access, continue :)"
else
	echo "Sorry, you clone not have access to upload here :("
	exit 1
fi

sed -i "s|\
\t\t\t\t\t<\!-- Automatic Download Section -->\
|\
\t\t\t\t\t<\!-- Automatic Download Section -->\n\
\t\t\t\t\t<section>\n\
\t\t\t\t\t\t<span class='image left'><img src='https://github.com/${NEW_REPO_SLUG}.png' alt='' /></span>\n\
\t\t\t\t\t\t<p>Release: ${OPL_DATE}</br>From: ${NEW_REPO_SLUG}</br>Build: #${TRAVIS_BUILD_NUMBER}</p>\n\
\t\t\t\t\t\t<ul class='actions'>\n\
\t\t\t\t\t\t\t<li><a href='${OPL_UP_LAST_BUILD}' class='button'>OPL Package<\/a><\/li>\n\
\t\t\t\t\t\t\t<li><a href='${OPL_LANG_UP_LAST_BUILD}' class='button'>Lang Package<\/a><\/li>\n\
\t\t\t\t\t\t<\/ul>\n\
\t\t\t\t\t</section>\
|" index.html

git add index.html
git commit -m "[AUTOMATIC TRAVISCI COMMIT] BUILD: ${TRAVIS_BUILD_NUMBER} | FROM: ${NEW_REPO_SLUG}"
git push -fq origin gh-pages > /dev/null
