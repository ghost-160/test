class BankAccount:
 def __init__(self, acc_no, name, acc_type, balance):
 self.account_number = acc_no
 self.name = name
 self.account_type = acc_type
 self.balance = balance
 def deposit(self, amount):
 # Deposit the specified amount into the account.
 if amount <= 0:
 print("Deposit amount must be positive!")
 else:
 self.balance += amount
 print(f"Deposited: {amount}")
 print(f"Updated Balance: {self.balance}")
 def withdraw(self, amount):
 # Withdraw the specified amount if sufficient balance exists.
 if amount <= 0:
 print("Withdrawal amount must be positive!")
 elif self.balance < amount:
 print("Insufficient balance!")
 else:
 self.balance -= amount
 print(f"Withdrew: {amount}")
 print(f"Updated Balance: {self.balance}")
 def display(self):
 # Display account details.
 print("\nAccount Details:")
 print(f"Account Number: {self.account_number}")
 print(f"Account Holder: {self.name}")
 print(f"Account Type: {self.account_type}")
 print(f"Account Balance: {self.balance}")
# Main program
acc_no = int(input("Enter account number: "))
name = input("Enter account holder name: ")
acc_type = input("Enter account type (Savings/Current): ")
balance = int(input("Enter initial balance: "))
# Create a BankAccount object
account = BankAccount(acc_no, name, acc_type, balance)
# Display account details
account.display()
# Perform deposit
deposit_amount = int(input("\nEnter the amount to deposit: "))
account.deposit(deposit_amount)
# Perform withdrawal
withdraw_amount = int(input("\nEnter the amount to withdraw: "))
account.withdraw(withdraw_amount)
