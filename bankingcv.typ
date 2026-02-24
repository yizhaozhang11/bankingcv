#set page(margin: (x: 1.8cm, y: 1.8cm))
#set text(font: "Latin Modern Sans", size: 10.5pt)

#let bankingcv_blue = rgb("#2B5D9B")
#let bankingcv_left_column = 22%

#let _rule() = line(length: 100%, stroke: (paint: bankingcv_blue, thickness: 0.5pt))

#let makecvtitle(first, last, title: none, contacts: (), quote: none) = {
  align(center)[
    #text(size: 24pt, weight: "bold")[#first #last]
    #if title != none {
      linebreak()
      text(fill: bankingcv_blue)[#title]
    }
    #if contacts.len() > 0 {
      linebreak()
      #for (idx, contact) in contacts.enumerate() {
        #if idx > 0 {
          #h(0.6em)·#h(0.6em)
        }
        #contact
      }
    }
    #if quote != none {
      linebreak()
      emph[#quote]
    }
  ]
  v(0.8em)
  _rule()
  v(0.6em)
}

#let cvsection(title, body) = {
  v(0.8em)
  text(size: 13pt, weight: "bold", fill: bankingcv_blue)[#title]
  v(0.25em)
  _rule()
  v(0.25em)
  body
}

#let _meta_line(org: none, city: none, grade: none) = {
  if org != none {
    text(weight: "medium")[#org]
  }
  if city != none {
    if org != none {
      h(0.4em)
      text(fill: luma(90%))[|]
      h(0.4em)
    }
    #city
  }
  if grade != none {
    h(0.4em)
    emph[#grade]
  }
}

#let cventry(years, role, org: none, city: none, grade: none, description: none) = {
  grid(columns: (bankingcv_left_column, 1fr), column-gutter: 1.2em)[
    #text(weight: "bold")[#years]
  ][
    #text(weight: "semibold")[#role]
    #if org != none or city != none or grade != none {
      linebreak()
      _meta_line(org: org, city: city, grade: grade)
    }
    #if description != none {
      linebreak()
      #description
    }
  ]
  v(0.35em)
}

#let cvitem(label, body) = {
  grid(columns: (bankingcv_left_column, 1fr), column-gutter: 1.2em)[
    #text(weight: "bold")[#label]
  ][#body]
  v(0.25em)
}

#let cvitemwithcomment(label, body, comment) = {
  grid(columns: (bankingcv_left_column, 1fr, auto), column-gutter: 1.0em)[
    #text(weight: "bold")[#label]
  ][#body][#emph[#comment]]
  v(0.25em)
}

#let cvdoubleitem(label_a, body_a, label_b, body_b) = {
  grid(columns: (bankingcv_left_column, 1fr, bankingcv_left_column, 1fr), column-gutter: 0.9em)[
    #text(weight: "bold")[#label_a]
  ][#body_a][
    #text(weight: "bold")[#label_b]
  ][#body_b]
  v(0.25em)
}

#let cvlistitem(body) = {
  grid(columns: (bankingcv_left_column, 1fr), column-gutter: 1.2em)[[]][
    - #body
  ]
  v(0.1em)
}

#let cvlistdoubleitem(left, right) = {
  grid(columns: (bankingcv_left_column, 1fr, 1fr), column-gutter: 1.2em)[[]][
    - #left
  ][
    - #right
  ]
  v(0.1em)
}

#let makelettertitle(recipient, date, subject: none, opening: none) = {
  text(weight: "bold")[#recipient]
  h(1fr)
  date
  v(0.8em)
  if subject != none {
    text(weight: "semibold")[#subject]
    v(0.6em)
  }
  if opening != none {
    opening
    v(0.6em)
  }
}

#let makeletterclosing(closing, signature: none) = {
  v(0.8em)
  closing
  if signature != none {
    v(2.0em)
    signature
  }
}
