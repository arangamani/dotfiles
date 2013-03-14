require 'rubygems'
require 'ruby-debug'

# Pretty Print method
require 'pp'

# Load the readline module.
IRB.conf[:USE_READLINE] = true

# Remove the annoying irb(main):001:0 and replace with >>
IRB.conf[:PROMPT_MODE] = :SIMPLE

# Tab Completion
require 'irb/completion'

# Automatic Indentation
IRB.conf[:AUTO_INDENT]=true

# Save History between irb sessions
require 'irb/ext/save-history'
IRB.conf[:SAVE_HISTORY] = 100
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-save-history"

# Wirble is a set of enhancements for irb
# http://pablotron.org/software/wirble/README
# Implies require 'pp', 'irb/completion', and 'rubygems'
require 'wirble'
Wirble.init

# Enable colored output
Wirble.colorize

begin
  require 'rest_connection'
  con = RestConnection::Connection.new
  p con.inspect
rescue LoadError
  puts "Can't load Restconnection"
end

puts "loaded"

