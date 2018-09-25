require_dependency "default_my_page_copy/patches/user_preference_patch"

Redmine::Plugin.register :redmine_default_my_page_copy do
  name 'Default My Page Copy Plugin'
  author 'Minoru Nagasawa'
  description 'When creating a new user, copy MyPage of the current user to the new user as default setting.'
  version '1.0.0'
  author 'Nagasawa'
  author_url 'https://github.com/minoru-nagasawa/'
  url 'https://github.com/minoru-nagasawa/redmine_default_my_page_copy'
end


