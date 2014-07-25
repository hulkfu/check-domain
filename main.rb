#!/usr/bin/env ruby

require 'open-uri'

begin
  # make sure that the first option is a URL
  url = URI(ARGV[0])
rescue
  puts <<-INFO
Usage:
  anemone count <url>

Synopsis:
  Crawls a site starting at the given URL and outputs the total number
  of unique pages on the site.
INFO
  exit(0)
end

puts "usage: " if ARGV.count != 1
print ARGV