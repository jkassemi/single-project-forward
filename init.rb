require 'redmine'

Redmine::Plugin.register :single_project_forward do
  name 'Single Project Forward'
  author 'James Kassemi'
  url 'http://github.com/jkassemi/single-project-forward'
  author_url 'http://tweekedideas.com/'
  description 'Forward a Redmine user to a single project page if only access to this project is available.'
  version '0.1'

  requires_redmine :version_or_higher => '0.8.0'
end
