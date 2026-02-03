
= Assmumptions & Context
This is the background that I'm assuming would already have been built up before introducing the students to long division:
- The multiplication table, what I here refer to as _facts_ (e.g. $3 #sym.times 4=12$)
- The division _facts_ that correspond to entries on the multiplication table \
  (e.g. $3 #sym.times 4 = 12 -> 12 #sym.div 4 = 3 "and" 12 #sym.div 3 = 4$)
- The idea of an _algorithm_ as a list of steps that can be mechanically applied to perform some arithmetic. By now the students will have already encountered the algorithms for addition, subtraction, and multiplication.
- The subject of remainders will be left until the lesson after the introduction to the division algorithm. For this intro all examples and homework problems will be constructed to divide evenly.
- We are working in the set of natural numbers. Discussions involving 
- I am writing this content as a section in a chapter on division. Here is a rough outline of the chapter I envision:
  - #underline[#sym.section#(1): Division Facts] \
    _Learn all the division math facts associated with the corresponding math facts from the multiplication table_
  - #underline[#sym.section#(2): Remainders] \
    _Use multiplication facts and skip counting to answer the questions "how many times does $n$ fit into $m$?" and "what is the remainder afterword?"_
  - #underline[#sym.section#(3): The Division Algorithm] *($<-$ You are here)* \
    _Introduction to the standard "long" division algorithm using divisors from the multiplication table_
  - #underline[#sym.section#(4): Remainders & The Division Algorithm] \ 
    _Continued practice with the division algorithm now allowing for nonzero remainders_
  - #underline[#sym.section#(5): Divisibility Rules] \
    _Rules that allow determining whether a divisor divides a dividend "evenly" (with zero remainder) without executing the division algorithm._
  - #underline[#sym.section#(6): Shortcuts For The Division Algorithm] \
    _Demonstrate tips for simplifying the applicaion of the division algorithm as well as when to apply them._

#pagebreak()

#title[The Long Division Algorithm]

= Remember!
We have already seen that _division_ is the undoing of a multiplication:
$ 3 #sym.times 4 = 12  #sym.arrow 12 #sym.div 4 = 3 $

= Example
#include "examples/simple.typ"

