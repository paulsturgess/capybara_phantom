require 'capybara'
require 'capybara/dsl'
require 'capybara/poltergeist'

$stdout.sync = true

class Demo
  include Capybara::DSL

  def self.run
    new.run
  end

  def initialize
    setup_poltergeist
  end

  def run
    visit('https://google.com')
    save_page
  end

  private

  def setup_poltergeist
    Capybara.register_driver :poltergeist do |app|
      Capybara::Poltergeist::Driver.new(app, polyergeist_options)
    end
    Capybara.default_driver = :poltergeist
  end

  def polyergeist_options
    { js_errors: false }
  end
end

Demo.run
