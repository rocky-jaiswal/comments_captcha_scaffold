Scaffoldhub::Specification.new do

  # Github URL where you will post your scaffold - the specified folder must contain this file
  base_url  'https://github.com/rocky-jaiswal/comments_captcha_scaffold/blob/master'

  # The name of your new scaffold: should be a single word
  name 'comments_captcha'

  # Metadata about this scaffold - these values are only used for display on scaffoldhub.org:
  metadata do

    # A short paragraph describing what this scaffold does
    description 'A simple rails application with Google re-captcha configured. See my blog - http://rockyj.in/?p=118 for more information.'

    # 4x3 aspect ratio screen shot
    screenshot 'comments_captcha_screenshot.png'

    # Tag(s) to help scaffoldhub.org users find your scaffold
    tag 're-captcha'

    # Optionally specify an example of a scaffold parameter
    #parameter_example 'FIELD_NAME'

    # Optionally post a link to an article you write explaining how the scaffold works.
    blog_post 'http://rockyj.in/?p=118' 
  end

  # Define a model template - this ERB file will be used to generate a new
  # model class with this path & filename: app/models/NAME.rb
  model 'templates/model.rb'

  # Define an ActiveRecord migration template - this ERB file will be used to generate a new
  # migration class with this path & filename: db/migrate/TIMESTAMP_create_PLURAL_NAME.rb
  migration 'templates/migration.rb'

  # Define a controller template - this ERB file will be used to generate a new
  # controller class with this path & filename: app/controllers/PLURAL_NAME.rb
  controller 'templates/controller.rb'

  # You can use "with_options" to specify the same source folder for a series of templates:
  # You can also specify the same destination folder using the :dest option,
  # or just use the :src and :dest options on each keyword.
  with_options :src => 'templates' do
    view '_form.html.erb'
    view '_recaptcha.html.erb'
    view 'new.html.erb'
    view 'index.html.erb'
    view 'show.html.erb'
    view 'edit.html.erb'
  end

  # Other keywords available are:

  # Define any other generic template - this ERB file will be used to generate
  # a new file - the dest option is required to indicate where to put the new file
  # template 'xyz.html.erb', :dest => 'path/to/xyz.html'

  # Copy any file without running an ERB transformation
  # file 'xyz.html', :dest => 'path/to/xyz.html'

  # Add a gem to the Gemfile
  gem 'ruby-recaptcha'
end
