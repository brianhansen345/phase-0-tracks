# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.


# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
"iNvEsTiGaTiOn".swapcase!
# => “InVeStIgAtIoN”

"zom".insert(1, "o")
# => “zoom”

"enhance".insert(-1, "    ").insert(0, "    ")
# => "    enhance    "

"Stop! You’re under arrest!".upcase
"Stop! You’re under arrest!".upcase!
# => "STOP! YOU’RE UNDER ARREST!"

"the usual".insert(-1, " suspects")
#=> "the usual suspects"

" suspects".insert(0, "the usual")
# => "the usual suspects"

"The case of the disappearing last letter".chop
"The case of the disappearing last letter".chop!
# => "The case of the disappearing last lette"

"The mystery of the missing first letter".byteslice(1..39)
# => "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".clear.insert(0, "Elementary, my dear Watson!")
# => "Elementary, my dear Watson!"

"z".getbyte(0)
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

"How many times does the letter 'a' appear in this string?".count "a"
# => 4