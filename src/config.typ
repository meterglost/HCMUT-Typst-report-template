#import "utils.typ": *

#let authors = ()
#let print = "twoside"

#let university = "VIETNAM NATIONAL UNIVERSITY - HO CHI MINH CITY\nHO CHI MINH CITY UNIVERSITY OF TECHNOLOGY"
#let faculty = "FACULTY OF COMPUTER SCIENCE & ENGINEERING"
#let group = dotfill()

#let subject = "Report of " + dotfill(len: 150pt)
#let project = "Project: " + dotfill()

#let instructors = (
    dotfill(),
    dotfill(),
)
#let implementers = (
    "Ha Vinh Nguyen"+ "<" + mailto(mail: "nguyen.ha.professor@hcmut.edu.vn") + ">",
    dotfill(),
    dotfill(),
    dotfill(),
)

#let location = "Ho Chi Minh City"
#let date = datetime.today().display("[month repr:short] [year]")

#assert(print in (false, "oneside", "twoside"))
