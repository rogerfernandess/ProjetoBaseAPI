require 'cucumber'
require 'rspec'
require 'capybara'
require 'httparty'
require 'pry'
require 'sqlserver'
require 'allure-cucumber'

$environment        = YAML.load_file('./features/config/environment.yml')[ENV['ENV']]   
$parameters         = YAML.load_file('./features/config/parameters.yml')[ENV['PAR']]
$authentication     = YAML.load_file('./features/config/authentication.yml')[ENV['AUT']]

include AllureCucumber::DSL
AllureCucumber.configure do |c|
  c.output_dir    = 'log/reports'
  c.clean_dir     = false

  class Cucumber::Core::Test::Step
    def name
      return text if self.text == 'Before hook'
      return text if self.text == 'After hook'
      "#{source.last.keyword}#{text}"
    end
  end

end