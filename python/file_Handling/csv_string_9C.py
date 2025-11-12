#program to write a dictionary to a CSV file,then read the same CSV file to display its contents and print each row as a list of strings
import csv

field_name = ['No', 'Company', 'Car Model']
car = [
    {'No': 1, 'Company': 'Koenigsegg', 'Car Model': 'CCXR'},
    {'No': 2, 'Company': 'Pagani', 'Car Model': 'Zonda HP Barchetta'},
    {'No': 3, 'Company': 'Bugatti', 'Car Model': 'Type 57SC Atlantic'},
    {'No': 4, 'Company': 'RedBull', 'Car Model': 'RB21'},
    {'No': 5, 'Company': 'Mercedes-AMG', 'Car Model': 'W11'}
]

# Write to CSV
with open('car.csv', 'w', newline='') as csvfile:
    writer = csv.DictWriter(csvfile, fieldnames=field_name)
    writer.writeheader()
    writer.writerows(car)  # Pass the list of dictionaries here

# Read from CSV
with open('car.csv', newline='') as csvfile:
    reader = csv.reader(csvfile)
    for row in reader:
        print(','.join(row))  # Prints as CSV line
        print(row)            # Prints as list
