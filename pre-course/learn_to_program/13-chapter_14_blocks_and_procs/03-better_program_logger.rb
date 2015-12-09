# Learn to Program - Second Edition
# Exercise from Chapter 14 - Blocks and Procs
# Sam Gerber

# The output from the last logger was kind of hard to read,
# and it would just get worse the more you used it. It would be so much
# easier to read if it indented the lines in the inner blocks. So, you'll
# need to keep track of how deeply nested you are every time the logger wants
# to write something. To do this, use a global variable, which is a variable
# you can set from anywher in your code. To make a global variable, just
# precede the variable name with $, like so: $global, $nesting_depth, and
# $big_top_pee_wee. In the end, your logger should output code like below:
$nesting_depth = 0
def log(description, &block)
  indent = "  " * $nesting_depth
  puts indent + "Beginning \"#{description}\"..."
  $nesting_depth += 1
  return_value = block.call
  puts indent + "...\"#{description}\" finished, returning:"
  puts indent + return_value.to_s
  $nesting_depth -= 1
end

log("Outer Block") do
  log("Some Little Block") do
    log("Teeny-Tiny Block") {"lots of love"}
    42
  end
  log("Yet Another Block") {"I love Indian food!"}
  "frisbee" < "swing"
end
# =>  Beginning "Outer Block"...
# =>    Beginning "Some Little Block"...
# =>      Beginning "Teeny-Tiny Block"...
# =>      ..."Teeny-Tiny Block" finished, returning:
# =>      lots of love
# =>    ..."Some Little Block" finished, returning:
# =>    42
# =>    Beginning "Yet Another Block"...
# =>    ..."Yet Another Block" finished, returning:
# =>    I love Indian food!
# =>  ..."Outer Block" finished, returning:
# =>  true
