# To create string with %q:
puts %q{this is a string}

# But we can't include variables with it:
name = 'ahamd'
puts %q{Hi #{name}} # doesn't work.

# there is %Q which allow as include variables:
puts %Q{Hi #{name}}

# Furthermore we can write string in lines:
puts %Q{Hi,#{name}
how are you?}

# And it's worth mentioning to create string
# with more than one line with EOS (end of string):
puts <<EOS
Hi
this is another line
EOS

# we often use EOS to denote content:
puts <<SQL
Hi
SELECT * FROM students
SQL

# To define string arrays:
puts %w{sport education art}

# And with W capital we can include variables:
# And we have literals %s{.. .. ..} for symbols.
# Literals %r{....} for Regular Expressions etc..
