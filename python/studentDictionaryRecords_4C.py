#programt to maintain student records using a dictionary
#keys-student name
#valus- list of marks in 3 subjects
students ={
    "John":{85,90,78},
    "Evie":{72,88,91},
    "Adolf":{95,80,85}
}
#dislpaly student records
for name,marks in students.items():
    total = sum(marks)
    average = sum(marks)/len(marks)
    print(f"Student : {name}")
    print(f"Marks : {marks}")
    print(f"Total marks : {total}")
    print(f"Average Marks : {average:.2f}")
    print("." *20)
