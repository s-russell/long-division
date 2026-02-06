#let red = rgb("#E15759")
#let blue = rgb("#4E79A7")
#let green = rgb("#59A14F")
#let purple = rgb("#B07AA1")

#let rt(body) = text(
  fill: red,
)[#body]

#let bt(body) = text(
  fill: blue,
)[#body]

#let gt(body) = text(
  fill: green,
)[#body]

#let pt(body) = text(
  fill: purple,
)[#body]

#let mcolor(body, fill) = text(fill: fill)[$body$]

#let div_sub(dividend, divisor) = {
  assert(divisor != 0, message: "ndiv: division by zero")

  let q = calc.div-euclid(dividend, divisor)
  let r = calc.rem-euclid(dividend, divisor)

  text(size: 8pt)[
    $mcolor(dividend, red) div mcolor(divisor, red) = mcolor(#q, red) #(if r != 0 { [ r #r ] } else { [] })$]
}

#let mult_sub(m, n) = {
  let prod = m * n
  text(size: 8pt)[
    $mcolor(#m, blue) times mcolor(#n, blue) = mcolor(#prod, blue)$
  ]
}

#let diff_sub(m, n) = {
  let diff = m - n
  text(size: 8pt)[
    $mcolor(#m, green) - mcolor(#n, green) = mcolor(#diff, green)$
  ]
}

#let drop_sub = text(size: 8pt)[$$]

