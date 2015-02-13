# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

namespace :app_json do
  desc 'Validate the app.json manifest'
  task :validate do
    require 'rainbow'

    # check if the app.json validator is available
    `which app.json`
    if $?.exitstatus != 0
      abort <<-eos.gsub /^( |\t)+/, ""

        The #{Rainbow('app.json').red} program is not available.
        You may want to install it in order to validate the app.json file.

        Try #{Rainbow('`npm install app.json --global`').yellow} (use `sudo` if necessary)
        or see https://github.com/app-json/app.json for instructions.

      eos
    end

    # perform validation
    response = `app.json validate  2>&1`

    # celebrate successful validation!
    if response =~ /Your app.json file is valid!/
      puts Rainbow(response.strip).green
    else
      puts Rainbow(response.strip).red
    end
  end
end

task :default => ['app_json:validate']
