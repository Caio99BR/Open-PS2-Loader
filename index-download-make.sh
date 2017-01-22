#!/bin/bash
# Auto make Download Section by Caio99BR <caiooliveirafarias0@gmail.com>

sed -i "s|\t\t\t\t\t\t<\!-- Download Section -->|\
\t\t\t\t\t\t<\!-- Download Section -->\n\
\t\t\t\t\t\t<p>Release: ${OPL_DATE} \| From: ${NEW_REPO_SLUG} \| Nightly \#${TRAVIS_BUILD_NUMBER}<\/p>\n\
\t\t\t\t\t\t<ul class='actions'>\n\
\t\t\t\t\t\t\t<li><a href='${OPL_UP_LAST_BUILD}' class='button'>OPL Package<\/a><\/li>\n\
\t\t\t\t\t\t\t<li><a href='${OPL_LANG_UP_LAST_BUILD}' class='button'>Lang Package<\/a><\/li>\n\
\t\t\t\t\t\t<\/ul>|" index.html
