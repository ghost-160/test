contacts1 = {
    "John": "9876543210",
    "Evie": "7859344292"
}
contacts2 = {
    "Mark": "6573839201",
    "Robber": "9895027594"
}

print("contacts1:", contacts1)
print("contacts2:", contacts2)

# merge dictionaries using update()
merged_contacts = contacts1.copy()
merged_contacts.update(contacts2)

print("merged_contacts:", merged_contacts)
