import time
import datetime

from duplicity.config import current_time

print("Current date and time: ",datetime.datetime.now())

print("Current year : ", datetime.date.today().strftime("%Y"))

print("Month of year : ",datetime.date.today().strftime("%B"))

print("Week number of the year :",datetime.date.today().strftime("%W"))

print("Day number of the week :",datetime.date.today().strftime("%w"))

print("Day of year :",datetime.date.today().strftime("%j"))

print("Day of the month  :",datetime.date.today().strftime("%d"))

print("Day of week ",datetime.date.today().strftime("%A"))

print("\n Using time module : ")
current_time=time.localtime()
print("Todays Date : ",time.strftime("%Y-%m-%d",current_time))