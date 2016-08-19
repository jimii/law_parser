#!/usr/bin/env ruby
Dir[File.expand_path('app/**/*.rb', File.dirname(__FILE__))].each do |f|
  module_name = /\/([^\/\.]+?)\.rb$/.match(f)[1].capitalize.to_sym
  autoload(module_name, f)
end
require_relative 'app/parsers/law_parser'
require_relative 'app/parsers/law/civil'
require_relative 'test/seed'

# check input
if ARGF.filename != "-" or (not STDIN.tty? and not STDIN.closed?)
  stream = ARGF.read

  # articles to compare
  articles_1 = seed_civil_articles
  # get articles from stream
  articles_2 = Civil.parse(stream)

  # compare it
  is_match = true
  articles_1.each_with_index do |article, i|
    is_match = false unless article.to_s == articles_2[i].to_s
  end
  puts "Is match: #{is_match}"

else
  puts "no input!"
end