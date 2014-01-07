lineWidth=40
array=['Table of Contents','Chapter 1: Numbers','Page 1','Chapter 2: Letters','Page 72','Chapter 3: Variables','Page 118']
puts array[0].center lineWidth
puts ''
puts array[1].ljust(lineWidth/2) + array[2].rjust(lineWidth/2)
puts array[3].ljust(lineWidth/2) + array[4].rjust(lineWidth/2)
puts array[5].ljust(lineWidth/2) + array[6].rjust(lineWidth/2)

