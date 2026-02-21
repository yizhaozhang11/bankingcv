#import "./bankingcv.typ": *

#makecvtitle(
  "John",
  "Doe",
  title: "Résumé title",
  contacts: (
    "street and number, postcode city, country",
    "+1 (234) 567 890",
    "john@doe.org",
    "www.johndoe.com",
    "linkedin.com/in/john.doe",
  ),
  quote: "Some quote",
)

#cvsection("Education", [
  #cventry("year--year", "Degree", org: "Institution", city: "City", grade: "Grade", description: "Description")
  #cventry("year--year", "Degree", org: "Institution", city: "City", grade: "Grade", description: "Description")
])

#cvsection("Experience", [
  #cventry(
    "year--year",
    "Job title",
    org: "Employer",
    city: "City",
    description: [
      General description no longer than 1--2 lines.
      - Achievement 1
      - Achievement 2
      - Achievement 3
    ],
  )
  #cventry("year--year", "Job title", org: "Employer", city: "City", description: "Description line 1")
])

#cvsection("Languages", [
  #cvitemwithcomment("Language 1", "Skill level", "Comment")
  #cvitemwithcomment("Language 2", "Skill level", "Comment")
  #cvitemwithcomment("Language 3", "Skill level", "Comment")
])

#cvsection("Computer skills", [
  #cvdoubleitem("category 1", "XXX, YYY, ZZZ", "category 4", "XXX, YYY, ZZZ")
  #cvdoubleitem("category 2", "XXX, YYY, ZZZ", "category 5", "XXX, YYY, ZZZ")
])

#cvsection("Interests", [
  #cvitem("hobby 1", "Description")
  #cvitem("hobby 2", "Description")
  #cvitem("hobby 3", "Description")
])

#cvsection("Extra 1", [
  #cvlistitem("Item 1")
  #cvlistitem("Item 2")
  #cvlistitem("Item 3")
])

#pagebreak()

#makelettertitle(
  recipient: [Company Recruitment team\\
Company, Inc.\\
123 somestreet\\
some city],
  date: "January 01, 1984",
  subject: "Job application",
  opening: "Dear Sir or Madam,",
)

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ullamcorper neque sit amet lectus facilisis sed luctus nisl iaculis.

Suspendisse commodo, massa eu congue tincidunt, elit mauris pellentesque orci, cursus tempor odio nisl euismod augue.

$ e = m c^2 $

#makeletterclosing("Yours faithfully,", signature: "John Doe")
