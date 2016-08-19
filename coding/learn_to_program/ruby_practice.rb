=begin
  print vs puts: puts adds a newline after executing, 
  and print does not.
=end

puts "puts prints a newline after executing."
puts "See!"

print "Where print does not."
print "See!"

=begin
  variables with incursion
=end

text = "See"
variable = "value"
puts "\n#{text} the #{variable} of variables?"

=begin
Escape 
Sequence:		Meaning:
\n				newline (0x0a)
\s				space (0x20)
\r				carriage return (0x0d)
\t				tab (0x09)
\v				vertical tab (0x0b)
\f				formfeed (0x0c)
\b				backspace (0x08)
\a				bell/alert (0x07)
\e				escape (0x1b)
\nnn			character with octal value nnn
\xnn			character with hexadecimal value nn
\unnnn			Unicode code point U+nnnn (Ruby 1.9 and later)
\cx				control-x
\C-x			control-x
\M-x			meta-x
\M-\C-x			meta-control-x
\x				character x itself (\" a single quote, for example
=end