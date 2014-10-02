course1 = Course.create({name: 'Math101'})
course2 = Course.create({name: 'ENG101'})
course3 = Course.create({name: 'CHEM201'})
course4 = Course.create({name: 'PHYSIC300'})

student1 = Student.create({name: "Cenk"})
student2 = Student.create({name: "Ryan"})
student3 = Student.create({name: "Brook"})
student4 = Student.create({name: "Mathew"})
student5 = Student.create({name: "Phil"})
student6 = Student.create({name: "Pete"})
student7 = Student.create({name: "Havier"})

Enrollment.create({course: course2,student: student1, enrollment_date: DateTime.now })
Enrollment.create({course: course3,student: student1, enrollment_date: DateTime.now - 1.day})
Enrollment.create({course: course4,student: student1, enrollment_date: DateTime.now - 2.days})

Enrollment.create({course: course1,student: student2, enrollment_date: DateTime.now - 5.months})
Enrollment.create({course: course4,student: student2, enrollment_date: DateTime.now })

Enrollment.create({course: course1,student: student3, enrollment_date: DateTime.now - 2.weeks})
Enrollment.create({course: course4,student: student3, enrollment_date: DateTime.now - 1.month})
Enrollment.create({course: course2,student: student3, enrollment_date: DateTime.now - 4.days})
Enrollment.create({course: course3,student: student3, enrollment_date: DateTime.now - 2.hours})

Enrollment.create({course: course1,student: student4, enrollment_date: DateTime.now })
Enrollment.create({course: course2,student: student4, enrollment_date: DateTime.now - 5.hours})
Enrollment.create({course: course3,student: student4, enrollment_date: DateTime.now - 1.week})
Enrollment.create({course: course4,student: student4, enrollment_date: DateTime.now - 3.weeks})