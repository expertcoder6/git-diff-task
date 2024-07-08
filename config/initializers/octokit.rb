require 'octokit'
GITHUB_CLIENT = Octokit::Client.new(:access_token => ENV['PERSONAL_ACCESS_TOKEN'])
