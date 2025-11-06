# Dictionay of student marks

student ={
    "John":340,
    "Evie":459,
    "Mark":367
}
#sort by ascending
asc_by_name=dict(sorted(student.items()))
print("\n Sorted by Name Ascending ")
print(asc_by_name)

#sort by descending
desc_by_name=dict(sorted(student.items(), reverse=True))
print("\n Sorted by Name Descending ")
print(desc_by_name)
