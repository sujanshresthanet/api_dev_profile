; Make file for api_dev profile.

; Contributed modules

projects[] = autoload
projects[] = ctools
projects[] = devel
projects[] = drupal_queue
projects[] = simpletest

; Clone api module from git so we can work on it.
projects[api][type] = module
projects[api][download][type] = git
projects[api][download][url] = http://git.drupal.org/project/api

; Grammar parser maintainer doesn't want to release a 6.x version so we must
; download 7.x and apply a patch to change the core version in the info file.
projects[grammar_parser][type] = module
projects[grammar_parser][download][type] = file
projects[grammar_parser][download][url] = http://ftp.drupal.org/files/projects/grammar_parser-7.x-1.1.tar.gz
projects[grammar_parser][patch][994518][url] = http://drupal.org/files/issues/grammar_parser.info.patch
projects[grammar_parser][patch][994518][md5] = f46a6cdf5e86c8067e051f06f276de87

