with open('/home/hcn9/projects/fortunecookie/lib/seeds/fortunes.csv', 'r') as file:
    lines = file.readlines()
# print(lines)
for i in range(len(lines)):
    if ',' in lines[i] and i > 0:  # Check if 'old' is in the line
        lines[i] = "\"" + lines[i].strip() + "\"\n"
        # print(lines[i]) 

with open('/home/hcn9/projects/fortunecookie/lib/seeds/fortunes.csv', 'w') as file:
    file.writelines(lines) 