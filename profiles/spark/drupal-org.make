; This is a standard make file for packaging the distribution along with any
; contributed modules/themes or external libraries. Some examples are below.
; See http://drupal.org/node/159730 for more details.

api = 2
core = 7.x

; Contributed modules; standard.

projects[responsive_bartik][type] = theme
projects[responsive_bartik][download][type] = git
projects[responsive_bartik][download][revision] = 7c2db58a201fd572153545b24bfcc2703c2fac80
projects[responsive_bartik][download][branch] = 7.x-1.x
projects[responsive_bartik][subdir] = contrib

projects[ctools][type] = module
projects[ctools][version] = 1.3
projects[ctools][subdir] = contrib
; Adding a renderable-array block to a page gives errors in the admin UI. 
; @todo remove with ctools upgrade to 1.4.
projects[ctools][patch][1925018] = "http://drupal.org/files/ctools-1925018-61.patch"

projects[entity][type] = module
projects[entity][version] = 1.1
projects[entity][subdir] = contrib

projects[jquery_update][type] = module
projects[jquery_update][version] = 2.x-dev
projects[jquery_update][subdir] = contrib

projects[json2][type] = module
projects[json2][version] = 1.1
projects[json2][subdir] = contrib

projects[libraries][type] = module
projects[libraries][version] = 2.x-dev
projects[libraries][subdir] = contrib

projects[panels][type] = module
projects[panels][version] = 3.3
projects[panels][subdir] = contrib
; Apply layout settings form submit callback fix needed for layout module.
projects[panels][patch][] = "http://drupal.org/files/layout-settings-submit.patch"
; Fix for strict warning on home page.
projects[panels][patch][1632898] = "http://drupal.org/files/1632898-10.patch"

projects[picture][type] = module
projects[picture][version] = 1.1
projects[picture][subdir] = contrib

projects[views][type] = module
projects[views][version] = 3.7
projects[views][subdir] = contrib

; Contributed projects; Sparkish.
projects[ckeditor][type] = module
projects[ckeditor][version] = 1.13
projects[ckeditor][subdir] = contrib

projects[breakpoints][type] = module
projects[breakpoints][version] = 1.0
projects[breakpoints][subdir] = contrib

projects[navbar][type] = module
projects[navbar][version] = 1.0-alpha10
;projects[navbar][download][type] = git
;projects[navbar][download][branch] = 7.x-1.x
projects[navbar][subdir] = contrib

projects[edit][type] = module
projects[edit][version] = 1.0-alpha11
;projects[edit][download][type] = git
;projects[edit][download][branch] = 7.x-1.x
projects[edit][subdir] = contrib

projects[ember][type] = theme
projects[ember][version] = 1.0-alpha5
;projects[ember][download][type] = git
;projects[ember][download][branch] = 7.x-1.x
projects[ember][subdir] = contrib

projects[gridbuilder][type] = module
projects[gridbuilder][version] = 1.0-alpha2
;projects[gridbuilder][download][type] = git
;projects[gridbuilder][download][branch] = 7.x-1.x
projects[gridbuilder][subdir] = contrib

projects[layout][type] = module
projects[layout][version] = 1.0-alpha6
;projects[layout][download][type] = git
;projects[layout][download][branch] = 7.x-1.x
projects[layout][subdir] = contrib

projects[every_field][type] = module
projects[every_field][version] = 1.x-dev
projects[every_field][subdir] = contrib

projects[responsive_preview][type] = module
projects[responsive_preview][version] = 1.0-beta1
;projects[responsive_preview][download][type] = git
;projects[responsive_preview][download][branch] = 7.x-1.x
projects[responsive_preview][subdir] = contrib

; Contributed modules; UX++
projects[module_filter][type] = module
projects[module_filter][version] = 1.7
projects[module_filter][subdir] = contrib

projects[simplified_menu_admin][type] = module
projects[simplified_menu_admin][version] = 1.0-beta2
projects[simplified_menu_admin][subdir] = contrib

; Libraries.
; NOTE: These need to be listed in http://drupal.org/packaging-whitelist.
libraries[ckeditor][download][type] = get
libraries[ckeditor][download][url] = http://download.cksource.com/CKEditor/CKEditor/CKEditor%204.0.1/ckeditor_4.0.1_standard.zip

libraries[json2][download][type] = get
libraries[json2][download][url] = https://raw.github.com/douglascrockford/JSON-js/master/json2.js
libraries[json2][revision] = fc535e9cc8fa78bbf45a85835c830e7f799a5084

libraries[underscore][download][type] = get
libraries[underscore][download][url] = https://github.com/documentcloud/underscore/archive/1.4.4.zip

libraries[backbone][download][type] = get
libraries[backbone][download][url] = https://github.com/documentcloud/backbone/archive/1.0.0.zip
