#import "lib/text_helper.typ": *
#import "lib/div_helper.typ": *

= Assmumptions & Context
This is the background that I'm assuming would already have been built up before introducing the students to long division:
- The multiplication table, what I here refer to as _facts_ (e.g. $3 #sym.times 4=12$)
- The division _facts_ that correspond to entries on the multiplication table \
  (e.g. $3 #sym.times 4 = 12 -> 12 #sym.div 4 = 3 "and" 12 #sym.div 3 = 4$)
- The idea of an _algorithm_ as a list of steps that can be mechanically applied to perform some arithmetic. By now the students will have already encountered the algorithms for addition, subtraction, and multiplication.
- The subject of remainders will be left until the lesson after the introduction to the division algorithm. For this intro all examples and homework problems will be constructed to divide evenly.
- We are working in the set of natural numbers. Discussions involving
- I am writing this content as a section in a chapter on division. Here is a rough outline of the chapter I envision:
  - #underline[#sym.section#1: Division Facts] \
    _Learn all the division math facts associated with the corresponding math facts from the multiplication table_
  - #underline[#sym.section#2: Remainders] \
    _Use multiplication facts and skip counting to answer the questions "how many times does $n$ fit into $m$?" and "what is the remainder afterword?"_
  - #underline[#sym.section#3: The Division Algorithm] *($<-$ You are here)* \
    _Introduction to the standard "long" division algorithm using divisors from the multiplication table_
  - #underline[#sym.section#4: Remainders & The Division Algorithm] \
    _Continued practice with the division algorithm now allowing for nonzero remainders_
  - #underline[#sym.section#5: Divisibility Rules] \
    _Rules that allow determining whether a divisor divides a dividend "evenly" (with zero remainder) without executing the division algorithm._
  - #underline[#sym.section#6: Shortcuts For The Division Algorithm] \
    _Demonstrate tips for simplifying the applicaion of the division algorithm as well as when to apply them._

#pagebreak()

#title[The Long Division Algorithm]

= Remember!
We have already seen that _division_ is the undoing of a multiplication:
$ 3 #sym.times 4 = 12 #sym.arrow 12 #sym.div 4 = 3 $

= The steps
The Division Algorithm has four steps:
+ #rt[Divide]
+ #bt[Multiply]
+ #gt[Subtract]
+ #pt[Drop]
When doing a division we will usually go through all four multiple times.

== Example 1
=== Problem
Divide: $825 div 3$

=== Solution
First rewrite the division using a tableau
#align(center)[
  #divtab(4, hl(1, 4), $3$, vl(start: 0), ..spl(825))
]
Just as with the addition, subtraction, and multiplication algorithms that we've already see, getting each number in exactly the right place is very important! We'll start our practice by drawing a grid to help us keep everything straight:
#align(center)[
  #divtab(
    4, 
    grid: true, 
    [$$], [], [], [],
    hl(1, 4), 
    $3$, vl(), ..spl(825),
    [$$], [], [], [],
    [$$], [], [], [],
    [$$], [], [], [],
    [$$], [], [], [],
    [$$], [], [], [],
    [$$], [], [], []
  )
]

Now we're ready to follow the steps of the algorithm!
#grid(
  columns: (1fr, 1fr),
  align: (left, center),
  gutter: (2em, 0.5em),
  [
    #rt[
      === Divide
      Look at the divisor (3) and the first digit of the dividend (8). How many times does 3 go into 8? It goes 2 times.  Write the number 2 above the number 8 on the tableau.
    ]
  ],
  [
    #divtab(
    4, 
    grid: true, 
    [$$], rt[$2$], [], [],
    hl(1, 4), 
    rt[$3$], vl(), rt[$8$],..spl(25),
    [$$], [], [], [],
    [$$], [], [], [],
    [$$], [], [], [],
    [$$], [], [], [],
    [$$], [], [], [],
    [$$], [], [], []
  )
  ],
  [
    #bt[
      === Multiply
      Multiply the 2 that we just wrote down by the divisor (3). Since $2 times 3 = 6$ we write a $6$ under the dividend lined up with the $2$
    ]
  ],
  [
    #divtab(
    4, 
    grid: true, 
    [$$], bt[$2$], [], [],
    hl(1, 4), 
    bt[$3$], vl(), ..spl(825),
    [$$], bt[$6$], [], [],
    [$$], [], [], [],
    [$$], [], [], [],
    [$$], [], [], [],
    [$$], [], [], [],
    [$$], [], [], []
  )
  ]
)

