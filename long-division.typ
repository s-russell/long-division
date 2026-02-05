#import "lib/text_helper.typ": *
#import "lib/div_helper.typ": *

= Assmumptions & Context
I have written this lesson assuming the following background information has been mastered by the students:
- The multiplication table, what I here refer to as _facts_ (e.g. $3 #sym.times 4=12$)
- The division _facts_ that correspond to entries on the multiplication table \
  (e.g. $3 #sym.times 4 = 12 -> 12 #sym.div 4 = 3 "and" 12 #sym.div 3 = 4$)
- The terms _dividend_, _divisor_, _quotient_, and _remainder_ and how to identify them in a statement such as $9 div 4 = 2 "r" 1$
- The idea of an _algorithm_ as a list of steps that can be mechanically applied to perform some arithmetic. By now the students will have already encountered the algorithms for addition, subtraction, and multiplication.

I envision this content as a section in a chapter on division. Here is a rough outline of the chapter:
  - #underline[#sym.section#1: Division Facts] \
    _Learn all the division math facts associated with the corresponding math facts from the multiplication table_
  - #underline[#sym.section#2: Remainders and the Modulus] \
    _Use multiplication facts and skip counting to find remainders; introduce the modulus operation"_
  - #underline[#sym.section#3: The Division Algorithm] *($<-$ You are here)* \
    _Introduction to the standard "long" division algorithm using divisors from the multiplication table_
  - #underline[#sym.section#4: Remainders & The Division Algorithm] \
    _Continued practice with the division algorithm now allowing for nonzero remainders_
  - #underline[#sym.section#5: Divisibility Rules] \
    _Rules that allow determining whether a divisor divides a dividend "evenly" (with zero remainder) without executing the division algorithm._
  - #underline[#sym.section#6: Shortcuts For The Division Algorithm] \
    _Demonstrate tips for simplifying the applicaion of the division algorithm as well as when to apply them, including strategies for dealing with large divisors_
  - #underline[#sym.section#7: Estimating Quotients] \
    _Practice rounding dividends and divisors to estimate quotients._

Note that dealing with remainders is left until the lesson after this introduction to the division algorithm. In this lesson all examples and homework problems are constructed to divide evenly.

#pagebreak()

#title[The Long Division Algorithm]

= The Steps
The Division Algorithm has four steps:
+ #rt[Divide]
+ #bt[Multiply]
+ #gt[Subtract]
+ #pt[Drop]
When doing a division we will usually go through all four step multiple times.

== Example 1: The Basics
=== Question
What is $936 div 4$?

=== Answer
First rewrite the division using a tableau
#align(center)[
  #divtab(4, hl(1, 4), $4$, vl(start: 0), ..spl(936))
]
Just like the addition, subtraction, and multiplication algorithms that we've already see, getting each number in exactly the right place is very important! Since this is a first example we'll add a grid to help keep things straight.
#align(center)[
  #divtab(
    4, 
    grid: true, 
    [$$], [], [], [],
    hl(1, 4), 
    $4$, vl(), ..spl(936),
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
      Divide the first digit of the dividend $9$ by the divisor $4$:
      $ 9 div 4 = 2 "r" 1 $
      We discard the remainder $1$ and write the quotient $2$ above the $9$ on the tableau.
    ]
  ],
  [
    #divtab(
      4, 
      grid: true, 
      [$$], rt[$2$], [], [],
      hl(1, 4), 
      rt[$4$], vl(), rt[$9$],..spl(36),
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
      Multiply the $2$ that we just wrote down by the divisor ($4$). Since $2 times 4 = 8$ we write an $8$ under the dividend lined up with the $2$
    ]
  ],
  [
    #divtab(
      4, 
      grid: true, 
      [$$], bt[$2$], [], [],
      hl(1, 4), 
      bt[$4$], vl(), ..spl(936),
      [$$], bt[$8$], [], [],
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
      Subtract the $8$ from the previous step from the digit of the dividend directly above it ($9$).
    ]
  ],
  [
    #divtab(
      4, 
      grid: true, 
      [$$], $2$, [], [],
      hl(1, 4), 
      $4$, vl(), gt[$9$], ..spl(36),
      minus, gt[$8$], [], [],
      hl(1,2),
      [$$], gt[$1$], [], [],
      [$$], [], [], [],
      [$$], [], [], [],
      [$$], [], [], [],
      [$$], [], [], []
    )
  ],
  [
    #pt[
      === Drop
      Finally, we drop the next digit in the dividend ($3$) down to the same line as the $1$ we just got from subtracting
    ]
  ],
  [
    #divtab(
      4, 
      grid: true, 
      [$$], $2$, [], [],
      hl(1, 4), 
      $4$, vl(), $9$, pt[$3$], $6$,
      minus, $8$, [], [],
      hl(1,2),
      [$$], pt[$1$], pt[$3$], [],
      [$$], [], [], [],
      [$$], [], [], [],
      [$$], [], [], [],
      [$$], [], [], []
    )
  ]  
)

Next we treat $13$ as the new dividend and keep repeating the #rt[Divide], #bt[Multilpy], #gt[Subtract], and #pt[Drop] steps until we run out of digits:

#grid(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 2fr),
  row-gutter: 1em,
  [
    #align(center)[#rt[Divide]]
    #divtab(
      4, 
      grid: true, 
      [$$], $2$, rt[$3$], [],
      hl(1, 4), 
      rt[$4$], vl(), ..spl(936),
      minus, $8$, [], [],
      hl(1,2),
      [$$], rt[$1$], rt[$3$], [],
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
      [$$], $2$, bt[$3$], [],
      hl(1, 4), 
      bt[$4$], vl(), ..spl(936),
      minus, $8$, [], [],
      hl(1,2),
      [$$], $1$, $3$, [],
      [$$], bt[$1$], bt[$2$], [],
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
      [$$], $2$, $3$, [],
      hl(1, 4), 
      $4$, vl(), ..spl(936),
      minus, $8$, [], [],
      hl(1,2),
      [$$], gt[$1$], gt[$3$], [],
      minus, gt[$1$], gt[$2$], [],
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
      [$$], $2$, $3$, [],
      hl(1, 4), 
      $4$, vl(), ..spl(93), pt[$6$],
      minus, $8$, [], [],
      hl(1,2),
      [$$], $1$, $3$, [],
      minus, $1$, $2$, [],
      hl(1,3),
      [$$], [], $1$, pt[$6$],
      [$$], [], [], [],
      [$$], [], [], []
    )
  ],
  [
    #align(center)[#rt[Divide]]
    #divtab(
      4, 
      grid: true, 
      [$$], $2$, $3$, rt[$4$],
      hl(1, 4), 
      rt[$4$], vl(), ..spl(936),
      minus, $8$, [], [],
      hl(1,2),
      [$$], $1$, $3$, [],
      minus, $1$, $2$, [],
      hl(1,3),
      [$$], [], rt[$1$], rt[$6$],
      [$$], [], [], [],
      [$$], [], [], []
    )
  ],
  [
    #align(center)[#bt[Multiply]]
    #divtab(
      4, 
      grid: true, 
      [$$], $2$, $3$, bt[$4$],
      hl(1, 4), 
      bt[$4$], vl(), ..spl(936),
      minus, $8$, [], [],
      hl(1,2),
      [$$], $1$, $3$, [],
      minus, $1$, $2$, [],
      hl(1,3),
      [$$], [], $1$, $6$,
      [$$], [], bt[$1$], bt[$6$],
      [$$], [], [], []
    )
  ],
  [
    #align(center)[#gt[Subtract]]
    #divtab(
      4, 
      grid: true, 
      [$$], $2$, $3$, $4$,
      hl(1, 4), 
      $4$, vl(), ..spl(936),
      minus, $8$, [], [],
      hl(1,2),
      [$$], $1$, $3$, [],
      minus, $1$, $2$, [],
      hl(1,3),
      [$$], [], gt[$1$], gt[$6$],
      [$$], minus, gt[$1$], gt[$6$],
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

At last, the *answer* has appeared on top of the tableau!
$ 936 div 4 = #text(weight: "bold")[234] $
