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

== Example 1: The Basics
=== Question
What is $825 div 3$?

=== Answer
First rewrite the division using a tableau
#align(center)[
  #divtab(4, hl(1, 4), $3$, vl(start: 0), ..spl(825))
]
Just like the addition, subtraction, and multiplication algorithms that we've already see, getting each number in exactly the right place is very important! Since this is a first example we'll add a grid to help keep things straight.
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
#pagebreak()
#grid(
  columns: (1fr, 1fr),
  align: (left, center),
  gutter: (0.5em, 1.5em),
  [
    #rt[
      === Divide
      Divide the first digit of the dividend $8$ by the divisor $3$:
      $ 8 div 3 = 2 "r" 2 $
      We discard the remainder $2$ and write the quotient $2$ above the 8 on the tableau.
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
      Multiply the $2$ that we just wrote down by the divisor ($3$). Since $2 times 3 = 6$ we write a $6$ under the dividend lined up with the $2$
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
  ],
  [
    #gt[
      === Subtract
      Subtract the $6$ from the previous step from the digit of the dividend directly above it ($8$).
    ]
  ],
  [
    #divtab(
      4, 
      grid: true, 
      [$$], $2$, [], [],
      hl(1, 4), 
      $3$, vl(), gt[$8$], ..spl(25),
      minus, gt[$6$], [], [],
      hl(1,2),
      [$$], gt[$2$], [], [],
      [$$], [], [], [],
      [$$], [], [], [],
      [$$], [], [], [],
      [$$], [], [], []
    )
  ],
  [
    #pt[
      === Drop
      Finally, we drop the next digit in the dividend down to the same line as the $2$ we just got from subtracting
    ]
  ],
  [
    #divtab(
      4, 
      grid: true, 
      [$$], $2$, [], [],
      hl(1, 4), 
      $3$, vl(), $8$, pt[$2$], $5$,
      minus, $6$, [], [],
      hl(1,2),
      [$$], pt[$2$], pt[$2$], [],
      [$$], [], [], [],
      [$$], [], [], [],
      [$$], [], [], [],
      [$$], [], [], []
    )
  ]  
)

To finish we treat $22$ as the new dividend and keep repeating the #rt[Divide], #bt[Multilpy], #gt[Subtract], and #pt[Drop] steps until we run out of digits.

#grid(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 2fr),
  row-gutter: 1em,
  [
    #align(center)[#rt[Divide]]
    #divtab(
      4, 
      grid: true, 
      [$$], $2$, rt[$7$], [],
      hl(1, 4), 
      rt[$3$], vl(), ..spl(825),
      minus, $6$, [], [],
      hl(1,2),
      [$$], rt[$2$], rt[$2$], [],
      [$$], [], [], [],
      [$$], [], [], [],
      [$$], [], [], [],
      [$$], [], [], []
    )
  ],
  [
    #align(center)[#bt[Multiply]]
    #divtab(
      4, 
      grid: true, 
      [$$], $2$, bt[$7$], [],
      hl(1, 4), 
      bt[$3$], vl(), ..spl(825),
      minus, $6$, [], [],
      hl(1,2),
      [$$], $2$, $2$, [],
      [$$], bt[$2$], bt[$1$], [],
      [$$], [], [], [],
      [$$], [], [], [],
      [$$], [], [], []
    )
  ],
  [
    #align(center)[#gt[Subtract]]
    #divtab(
      4, 
      grid: true, 
      [$$], $2$, $7$, [],
      hl(1, 4), 
      $3$, vl(), ..spl(825),
      minus, $6$, [], [],
      hl(1,2),
      [$$], gt[$2$], gt[$2$], [],
      minus, gt[$2$], gt[$1$], [],
      hl(1,3),
      [$$], [], gt[$1$], [],
      [$$], [], [], [],
      [$$], [], [], []
    )
  ]
  ,
  [
    #align(center)[#pt[Drop]]
    #divtab(
      4, 
      grid: true, 
      [$$], $2$, $7$, [],
      hl(1, 4), 
      $3$, vl(), ..spl(82), pt[$5$],
      minus, $6$, [], [],
      hl(1,2),
      [$$], [$2$], [$2$], [],
      minus, [$2$], [$1$], [],
      hl(1,3),
      [$$], [], [$1$], pt[$5$],
      [$$], [], [], [],
      [$$], [], [], []
    )
  ],
  [
    #align(center)[#rt[Divide]]
    #divtab(
      4, 
      grid: true, 
      [$$], $2$, $7$, rt[$5$],
      hl(1, 4), 
      rt[$3$], vl(), ..spl(825),
      minus, $6$, [], [],
      hl(1,2),
      [$$], [$2$], [$2$], [],
      minus, [$2$], [$1$], [],
      hl(1,3),
      [$$], [], rt[$1$], rt[$5$],
      [$$], [], [], [],
      [$$], [], [], []
    )
  ],
  [
    #align(center)[#bt[Multiply]]
    #divtab(
      4, 
      grid: true, 
      [$$], $2$, $7$, bt[$5$],
      hl(1, 4), 
      bt[$3$], vl(), ..spl(825),
      minus, $6$, [], [],
      hl(1,2),
      [$$], [$2$], [$2$], [],
      minus, [$2$], [$1$], [],
      hl(1,3),
      [$$], [], $1$, $5$,
      [$$], [], bt[$1$], bt[$5$],
      [$$], [], [], []
    )
  ],
  [
    #align(center)[#gt[Subtract]]
    #divtab(
      4, 
      grid: true, 
      [$$], $2$, $7$, $5$,
      hl(1, 4), 
      $3$, vl(), ..spl(825),
      minus, $6$, [], [],
      hl(1,2),
      [$$], [$2$], [$2$], [],
      minus, [$2$], [$1$], [],
      hl(1,3),
      [$$], [], gt[$1$], gt[$5$],
      [$$], minus, gt[$1$], gt[$5$],
      hl(2,4),
      [$$], [], [], gt[$0$]
    )
  ],
  [
    #align(center)[#pt[Drop]]
    #align(center)[
      There is no digit left to drop, so we're done!
    ]
  ]
)

Finally we can answer the question by reading the quotient from the top of the tableau:
$ 875 div 3 = 275 $
