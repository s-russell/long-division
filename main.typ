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

#title[
  Lesson 3: \
  The Long Division Algorithm
]

= Why do we need an algorithm?
We saw in Lesson 1 that to answer the question "what is $12 div 3$?" we must remember a multiplication fact that starts with a $3$ on one side of the $=$ and has a $12$ on the other:
$ 3 times "??" = 12 $ 
With practice, the correct fact leaps quickly to mind! $ 3 times 4 = 12 $ 
The missing number $4$ in the multiplication fact reveals a matching division fact that also answers our question:
$ 12 div 3 = 4 $

While relying on our memorized multiplication facts allows us to do division quickly and reliably it only works for numbers that were on the multiplication table. How could we do a division with numbers that _aren't_ on the multiplication table? For example, what is $936 div 4$?

To do divisions with numbers that aren't on the multiplication table we need a list of steps that we can follow to calculate the answer. Remember that such a list of steps is called an _algorithm_, so we need a _division algorithm_.

Fortunately, as man has studied God's creation we have discovered a division algorithm!

= The Tableau
Before we apply the division algorithm we have to rewrite the division problem to make some space for writing the steps down. If we start with this division
$ 936 div 4 $

We would write it like this (notice dividend and divisor have switched places!)
#align(center)[#divtab(4, hl(1, 4), $4$, vl(start: 0), ..spl(936))]
We call this form a _tableau_ (pronounced tab-BLOW) because it looks a little like a table and _tableau_ is the French word for table.

After we finish the steps of the division algorithm the quotient (answer) will show up on top of the tableau like this
#align(center)[#divtab(4, [$$], [$2$],[$3$],[$4$], hl(1, 4), $4$, vl(start: 1), ..spl(936))]

#pagebreak()
== Example
=== Question
Rewrite each division fact using a tableau \
#{
  set enum(numbering: "a.)")
  [
    + $18 div 6 = 3$
    + $50 div 5 = 10$
    + $322 div 14 = 23$
  ]
}
=== Answer
#{
  set enum(numbering: "a.)")
  [
    + #divtab(3, [$$], [$$],[$3$], hl(1, 4), $6$, vl(start: 1), ..spl(18))

    + #divtab(3, [$$], [$1$],[$0$], hl(1, 4), $5$, vl(start: 1), ..spl(50))

    + #divtab(5, [$$], [], [], $2$, $3$, hl(2, 5), $1$, $4$, vl(start: 1), ..spl(322))
  ]
}

== Example
=== Question
Rewrite each division as a tableau and find the quotient.
#{
  set enum(numbering: "a.)")
  [
    + $6 div 3$
    + $20 div 5$
    + $72 div 6$
  ]
}
=== Answer
#{
  set enum(numbering: "a.)")
  [
    + #divtab(2, [$$], $2$, hl(1, 3), $3$, vl(start: 1), $6$)

    + #divtab(3, [$$], [$$],[$4$], hl(1, 4), $5$, vl(start: 1), ..spl(20))

    + #divtab(3, [$$], [$1$],[$2$], hl(1, 4), $6$, vl(start: 1), ..spl(72))
  ]
}
= The Steps
The Division Algorithm has four steps:
+ #rt[Divide]
+ #bt[Multiply]
+ #gt[Subtract]
+ #pt[Drop]
When doing a division we will usually go through all four step multiple times.

#pagebreak()
== Example
=== Question
What is $936 div 4$?

=== Answer
First rewrite the division using a tableau
#align(center)[
  #divtab(4, hl(1, 4), $4$, vl(start: 0), ..spl(936))
]
Just like the addition, subtraction, and multiplication algorithms that we've already seen, getting each number in exactly the right place is very important! Since this is a first example we'll add a grid to help keep things straight.
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
  row-gutter: 1.5em,
  [
    #align(center)[
      #rt[Divide] \
      #div_sub(13,4)
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
    ]
  ],
  [
    #align(center)[
      #bt[Multiply] \
      #mult_sub(3,4)
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
    ]
  ],
  [
    #align(center)[
      #gt[Subtract] \
      #diff_sub(13,12)
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
  ],
  [
    #align(center)[
      #pt[Drop] \
      #drop_sub
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
    ]
  ],
  [
    #align(center)[
      #rt[Divide] \
      #div_sub(16,4)
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
    ]
  ],
  [
    #align(center)[
      #bt[Multiply] \
      #mult_sub(4,4)
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
    ]
  ],
  [
    #align(center)[
      #gt[Subtract] \
      #diff_sub(16,16)
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
    ]
  ],
  [
    #align(center)[
      #pt[Drop] \
      #drop_sub
      #align(center)[
        There's no digit left to drop, so we're done!
      ]
    ] 
  ]
)

At last, the *answer* has appeared on top of the tableau!
$ 936 div 4 = #text(weight: "bold")[234] $

= Leading Zeros
Many times when we apply the division algorithm we run into numbers that look like this:
$ 0284 $

The $0$ in the front of number is called a _leading zero_ and can be ignored. The number $0284$ is actually the just $284$ in disguise! Remember that $0284$ is $0$ _thousands_ and $2$ _hundreds_ and $8$ _tens_ and $4$ _ones_. We just discard the $0$ _thousands_ and write $284$.

Sometimes you might even find multiple leading zeros. These can all be discarded:
$ 01 &= 1 \ 0072 &= 72 \ 00015 &= 15 $

But! We _never_ discard the _trailing_ zeros that come at _the end_ of a number:
$ 0230 &= 230 \ 0076 &= 76 \ 000100000 &= 100000 $
#pagebreak()
== Example
=== Question
Simplify each number by discarding any leading zeros: \
a) $001$ \
b) $0450$ \
c) $000$ \
d) $1200$

=== Answer
a) $1$ \
b) $450$ \
c) $0$ (_note: we have to keep one zero so there's still a number left!_ ) \
d) $1200$

== Example
=== Question
What is $1988 div 7$?
=== Answer
First rewrite the division using a tableau:
#align(center)[
  #divtab(5, hl(1, 5), $7$, vl(start: 0), ..spl(1988))
]

Before beginning, we should remember that dividing a number by a divisor bigger than itself is alway zero with a remainder. This means that, for example $ 1 div 7 = 0 "r" 7 $ Now we're ready to start!

#grid(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr,),
  row-gutter: 1em,
  [
    #align(center)[
      #rt[Divide] \
      #div_sub(1,7) 
      #divtab(
        5, 
        grid: true, 
        [$$], rt[$0$], [], [], [],
        hl(1, 5), 
        rt[$7$], vl(start: 1), rt[$1$], ..spl(988),
        [$$], [], [], [], [],
        [$$], [], [], [], [],
        [$$], [], [], [], []
      )
    ]
  ],
  [
    #align(center)[
      #bt[Multiply] \
      #mult_sub(0,7)
      #divtab(
        5, 
        grid: true, 
        [$$], bt[$0$], [], [], [],
        hl(1, 5), 
        bt[$7$], vl(start: 1), ..spl(1988),
        [$$], bt[$0$], [], [], [],
        [$$], [], [], [], [],
        [$$], [], [], [], []
      )
    ]
  ],
  [
    #align(center)[
      #gt[Subtract] \
      #diff_sub(1,0)
      #divtab(
        5, 
        grid: true, 
        [$$], $0$, [], [], [],
        hl(1, 5), 
        $7$, vl(start: 1), gt[$1$], ..spl(988),
        minus, gt[$0$], [], [], [],
        hl(1,2),
        [$$], gt[$1$], [], [], [],
        [$$], [], [], [], []
      )
    ]
  ],
  [
    #align(center)[
      #pt[Drop] \
      #drop_sub
      #divtab(
        5, 
        grid: true, 
        [$$], $0$, [], [], [],
        hl(1, 5), 
        $7$, vl(start: 1), [$1$], pt[$9$], ..spl(88),
        minus, $0$, [], [], [],
        hl(1,2),
        [$$], $1$, pt[$9$], [], [],
        [$$], [], [], [], []
      )
    ]
  ],
  [
    #align(center)[
      #rt[Divide] \
      #div_sub(19,7)
      #divtab(
        5, 
        grid: true, 
        [$$], $0$, rt[$2$], [], [],
        hl(1, 5), 
        rt[$7$], vl(start: 1), ..spl(1988),
        minus, $0$, [], [], [],
        hl(1,2),
        [$$], rt[$1$], rt[$9$], [], [],
        [$$], [], [], [], []
      )
    ]
  ],
  [
    #align(center)[
      #bt()[Multiply] \
      #mult_sub(2,4)
      #divtab(
        5, 
        grid: true, 
        [$$], $0$, bt[$2$], [], [],
        hl(1, 5), 
        bt[$7$], vl(start: 1), ..spl(1988),
        minus, $0$, [], [], [],
        hl(1,2),
        [$$], $1$, $9$, [], [],
        [$$], bt[$1$], bt[$4$], [], []
      )
    ]
  ],
  [
    #align(center)[
      #gt()[Subtract] \
      #diff_sub(19,14)
      #divtab(
        5, 
        grid: true, 
        [$$], $0$, $2$, [], [],
        hl(1, 5), 
        $7$, vl(start: 1), ..spl(1988),
        minus, $0$, [], [], [],
        hl(1,2),
        [$$], gt[$1$], gt[$9$], [], [],
        minus, gt[$1$], gt[$4$], [], [],
        hl(1,3),
        [$$], [], gt[$5$], [], [],
        [$$], [], [], [], [],
        [$$], [], [], [], [],
      )
    ]
  ],
  [
    #align(center)[
      #pt()[Drop] \
      #drop_sub
      #divtab(
        5, 
        grid: true, 
        [$$], $0$, $2$, [], [],
        hl(1, 5), 
        $7$, vl(start: 1), ..spl(19), pt[$8$], $8$,
        minus, $0$, [], [], [],
        hl(1,2),
        [$$], $1$, $9$, [], [],
        minus, $1$, $4$, [], [],
        hl(1,3),
        [$$], [], $5$, pt[$8$], [],
        [$$], [], [], [], [],
        [$$], [], [], [], [],
      )
    ]
  ],
  [
    #align(center)[
      #rt()[Divide] \
      #div_sub(58,7)
      #divtab(
        5, 
        grid: true, 
        [$$], $0$, $2$, rt[$8$], [],
        hl(1, 5), 
        rt[$7$], vl(start: 1), ..spl(1988),
        minus, $0$, [], [], [],
        hl(1,2),
        [$$], $1$, $9$, [], [],
        minus, $1$, $4$, [], [],
        hl(1,3),
        [$$], [], rt[$5$], rt[$8$], [],
        [$$], [], [], [], [],
        [$$], [], [], [], [],
      )
    ]
  ],
  [
    #align(center)[
      #bt()[Multiply] \
      #mult_sub(8,7)
      #divtab(
        5, 
        grid: true, 
        [$$], $0$, $2$, bt[$8$], [],
        hl(1, 5), 
        bt[$7$], vl(start: 1), ..spl(1988),
        minus, $0$, [], [], [],
        hl(1,2),
        [$$], $1$, $9$, [], [],
        minus, $1$, $4$, [], [],
        hl(1,3),
        [$$], [], $5$, $8$, [],
        [$$], [], bt[$5$], bt[$6$], [],
        [$$], [], [], [], [],
      )
    ]
  ],
  [
    #align(center)[
      #gt()[Subtract] \
      #diff_sub(58,56)
      #divtab(
        5, 
        grid: true, 
        [$$], $0$, $2$, $8$, [],
        hl(1, 5), 
        $7$, vl(start: 1), ..spl(1988),
        minus, $0$, [], [], [],
        hl(1,2),
        [$$], $1$, $9$, [], [],
        minus, $1$, $4$, [], [],
        hl(1,3),
        [$$], [], gt[$5$], gt[$8$], [],
        [$$], minus, gt[$5$], gt[$6$], [],
        hl(2,4),
        [$$], [], [], gt[2], [],
      )
    ]
  ],
  [
    #align(center)[
      #pt[Drop] \
      #drop_sub
      #divtab(
        5, 
        grid: true, 
        [$$], $0$, $2$, $8$, [],
        hl(1, 5), 
        $7$, vl(start: 1), ..spl(198), pt[$8$],
        minus, $0$, [], [], [],
        hl(1,2),
        [$$], $1$, $9$, [], [],
        minus, $1$, $4$, [], [],
        hl(1,3),
        [$$], [], $5$, $8$, [],
        [$$], minus, $5$, $6$, [],
        hl(2,4),
        [$$], [], [], $2$,pt[$8$],
      )
    ]
  ]
)
#pagebreak()
#grid(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr,),
  row-gutter: 1em,  
  [
    #align(center)[
      #rt[Divide] \
      #div_sub(28, 7)
      #divtab(
        5, 
        grid: true, 
        [$$], $0$, $2$, $8$, rt[$4$],
        hl(1, 5), 
        rt[$7$], vl(start: 1), ..spl(1988),
        minus, $0$, [], [], [],
        hl(1,2),
        [$$], $1$, $9$, [], [],
        minus, $1$, $4$, [], [],
        hl(1,3),
        [$$], [], $5$, $8$, [],
        [$$], minus, $5$, $6$, [],
        hl(2,4),
        [$$], [], [], rt[$2$], rt[$8$]
      )
    ]
  ],
  [
    #align(center)[
      #bt[Multilpy] \
      #mult_sub(4, 7)
      #divtab(
        5, 
        grid: true, 
        [$$], $0$, $2$, $8$, bt[$4$],
        hl(1, 5), 
        bt[$7$], vl(start: 1), ..spl(1988),
        minus, $0$, [], [], [],
        hl(1,2),
        [$$], $1$, $9$, [], [],
        minus, $1$, $4$, [], [],
        hl(1,3),
        [$$], [], $5$, $8$, [],
        [$$], minus, $5$, $6$, [],
        hl(2,4),
        [$$], [], [], $2$, $8$,
        [$$], [], [], bt[$2$], bt[$8$],
      )
    ]
  ],
  [
    #align(center)[
      #gt[Subtract] \
      #diff_sub(28, 28)
      #divtab(
        5, 
        grid: true, 
        [$$], $0$, $2$, $8$, $4$,
        hl(1, 5), 
        $7$, vl(start: 1), ..spl(1988),
        minus, $0$, [], [], [],
        hl(1,2),
        [$$], $1$, $9$, [], [],
        minus, $1$, $4$, [], [],
        hl(1,3),
        [$$], [], $5$, $8$, [],
        [$$], minus, $5$, $6$, [],
        hl(2,4),
        [$$], [], [], gt[$2$], gt[$8$],
        [$$], [], minus, gt[$2$], gt[$8$],
        hl(3,5),
        [$$], [], [], [], gt[$0$]
      )
    ]
  ],
  [
    #align(center)[
      #pt[Drop] \
      #drop_sub
      #align(center)[
        There is no digit left to drop, so we're done!
      ]
    ]
  ]
)

Phew! In the last step we can see the answer on top of the division tableau:
$ 0284 $

But since we know we can discard leading zeros, we write the *answer* as:
$ 1988 div 7 = #text(weight: "bold")[284] $

= Example
== Question
What is $6024 div 6$?

== Answer
First we write the division using a tableau:
#align(center)[
  #divtab(5, hl(1, 5), $6$, vl(start: 0), ..spl(6024))
]

So far when we have shown the division algorithm steps we copied the tableau over and over to make it clear exactly what happens in each step. This would take much to long to do every time, so from now on we will show only what the tableau looks like after we finish applying the division algorithm (this is what your homework problems will look like too):

#align(center)[
  #table(
    columns: 2,
    stroke: none,
    divtab(
      5,
      grid: true,
      [$$], ..spl(1004),
      hl(1, 5), $6$, vl(start: 1), ..spl(6024),
      minus, $6$, [], [], [],
      hl(1,2), 
      [$$], $0$, $0$, [], [],
      minus, [], $0$, [], [],
      hl(1,3),
      [$$], [], $0$, $2$, [],
      [$$], minus, [], $0$, [],
      hl(2,4),
      [$$], [], [], $2$, $4$,
      [$$], [], minus, $2$, $4$,
      hl(3,5),
      [$$], [], [], [], $0$
    ),
    divtab(
      2,
      grid: false,
      [$$], [$$],
      [$$], [$$],
      [$$], [$$],
      [#text(size: 8pt)[($00$ is just $0$)]], [$$],
      [$$], [$$],
      [#text(size: 8pt)[($02$ is just $2$)]], [$$],
    )
  )
  ]

Once again the *answer* waiting for us on top of the tableau:
$ 6024 div 6 = #text(weight: "bold")[1004] $
#pagebreak()
= Divisors With More Than One Digit
When the divisor has more than one digit the quotient will emerge with one or more leading zeros.
== Example
=== Question
What is $2482 div 12$?
=== Answer

#divtab(
  6,
  grid: true,
  [$$], [], ..spl("0207"),
  hl(2,6),
  $1$, $2$, vl(start: 1), ..spl(2484),
  [$$], minus, $0$, [], [], [],
  hl(2,3),
  [$$], [], $2$, $4$, [], [],
  [$$], minus, $2$, $4$, [], [],
  hl(2,4),
  [$$], [], [], $0$, $8$, [],
  [$$], [], minus, [], $0$, [],
  hl(3,5),
  [$$], [], [], [], $8$, $4$,
  [$$], [], [], minus, $8$, $4$,
  hl(4,6),
  [$$], [], [], [], [], $0$
)

The division algorithm produces the number $0207$. After tossing away the leading zero we see the *answer* is $ 2482 div 12 = #text(weight: "bold")[207] $

= Application
== Question
In order to be obedient to 1 Peter 4:9 which commands us to "show hospitality to one another without grumbling" Susan's husband has decided to budget \$180 this month to hosting other families from church for dinner. He wants to invite the Clark family who has 5 members on one night and the Taylor family with 3 members on a different night. Susan and her husband are newlyweds and have only one infant child who doesn't eat solid food yet. How much money should Susan plan to spend on each meal?
== Answer
The 5 Clarks and 3 Taylors together will need 8 meals. Susan and her husband (but not their kid) will each eat at both meals, which is 4 more meals. In total there are 12 meals that Susan will need to prepare with the \$180. To split \$180 into 12 equal parts we need division:
#align(center)[
  #divtab(
    5,
    [$$], [], ..spl("015"),
    hl(2,5),
    [$1$], [$2$], vl(start: 1), [$1$], [$8$], [$0$],
    [$$], minus, [$0$], [], [],
    hl(2,3),
    [$$], [], [$1$], [$8$], [],
    [$$], minus, [$1$], [$2$], [],
    hl(2,4),
    [$$], [], [], [$6$], [$0$],
    [$$], [], minus, [$6$], [$0$],
    hl(3,5),
    [$$], [], [], [], [$0$]
  )
]
Dropping the leading zero, we see Susan has \$15 to spend for each meal. 

There will be 7 people eating the meal with the Clarks, so Susan should plan to spend \$105 for that meal (since $7 times 15 = 105$). This leaves \$75 for the meal with the Taylors (since $180 - 105 = 75$).
#pagebreak()
= Application
== Question
Dave runs a business that fixes and installs HVAC systems in homes. He believes that hiring an employee to help him would let him earn an additional \$1000 per day. However Dave doesn't want to take on the hassle of finding jobs, scheduling, and billing for a new employee if it doesn't leave him with at least \$500 in new profit each day. Dave also estimates that a new employee would use about \$150 of parts and tools each day. If Dave expects the new employee would usually work 10 hours a day and the market rate for an HVAC technician is \$25 per hour should Dave try to hire a new employee?
== Answer
If Dave expects a \$1000 per day in new business, but wants to keep \$500 for himself in profit this leaves \$500 for the employee's wages and expenses (since $1000 - 500 = 500$). If the expenses will be \$150 this leaves \$350 to pay the employee (since $500 - 150 = 350$). To find the hourly rate that Dave can afford we have to divide the \$350 into 10 equal parts.
#align(center)[
  #divtab(
    5,
    [$$], [], ..spl("035"),
    hl(2,5),
    [$1$], [$0$], vl(start: 1), ..spl(350),
    [$$], minus, [$0$], [], [],
    hl(2,3),
    [$$], [], [$3$], [$5$], [],
    [$$], minus, [$3$], [$0$], [],
    hl(2,4),
    [$$], [], [], [$5$], [$0$],
    [$$], [], minus, [$5$], [$0$],
    hl(3,5),
    [$$], [], [], [], [$0$]
  )
]
We see now that Dave can afford to pay up to \$35 per hour. The market rate of \$25 per hour is the lowest rate that Dave will likely be able to find an employee willing to work for, but since Dave can afford to pay more than that he should attempt to hire a new employee.