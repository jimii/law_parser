#!/usr/bin/env ruby
Dir[File.expand_path('app/**/*.rb', File.dirname(__FILE__))].each do |f|
  module_name = /\/([^\/\.]+?)\.rb$/.match(f)[1].capitalize.to_sym
  autoload(module_name, f)
end

# check input
if ARGF.filename != "-" or (not STDIN.tty? and not STDIN.closed?)
  stream = ARGF.read

  articles = stream.split('Art. ').delete_if{|e| e.length == 0}
  articles.each do |article|
    if article.include? "§"
      parapgraphs = article.split('§ ')
      puts "Art. #{parapgraphs[0]}"
      parapgraphs.shift
      parapgraphs.each do |p|
        puts "\t§ #{p}"
      end
    else
      puts "Art. #{article}"
    end
  end

else
  puts "no input!"
end