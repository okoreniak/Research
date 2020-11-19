#!/bin/bash
pwd
cd phonexa-screens-*
rpmbuild -ba SPECS/phonexa-screens-*.spec --define '_topdir %(pwd)'

