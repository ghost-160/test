#program to copy odd lines of one file to other
file=open("file3.txt","w")
file.write("This is the first line \n This is the second line \n This is the third line \n This is the fourth line")
file.close()
file=open("file3.txt","r")
print(file.readline())
print(file.readline())
print(file.readline())
file.close()
with open("file3.txt","r")as file1:
    with open("file4.txt","w")as file2:
        line_number=1
        for line in file1:
            if line_number % 2 !=0:
                file2.write(line)
            line_number+=1
print("Odd lines written to file4.txt: ")
with open("file4.txt","r")as file2:
    for line in file2:
        print(line.strip())
