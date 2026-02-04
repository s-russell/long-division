#let hl(start, end) = table.hline(start: start, end: end, stroke: 0.5pt + black)
#let vl(start: 1, end: 2) = table.vline(start: start, end: end, stroke: 0.5pt + black)
#let minus = table.cell(
  align: bottom + right,
  inset: (x: 0.2em),
)[#text(size: 0.5em)[$-$]]
#let spl(n) = str(n).codepoints().map(n => $#(n)$)

#let divtab(columns, grid: false, ..contents) = table(
  columns: columns,
  stroke: if grid { 0.5pt + rgb("dcdcdc") } else { none },
  inset: 0.25em,
  ..contents
)
