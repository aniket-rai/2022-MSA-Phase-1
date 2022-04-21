from multiprocessing.sharedctypes import Value
from pprint import pprint

def exercise_one():
    transmissions = []
    with open("transmissions.csv") as data_file:
        for entry in data_file:
            transmissions.append(entry.strip().split(","))

    pprint(transmissions)
    return transmissions

def exercise_two(data):
    data.pop(0)
    for i in range(len(data)):
        _, transmission = data[i]
        running_sum = 0
        for char in transmission:
            try:
                running_sum += int(char)
            except ValueError:
                continue
        
        data[i][0] = int(_)
        data[i][1] = running_sum
    
    return data

def exercise_three(data):
    sorted_transmissions = sorted(data)
    message = ""
    for _, ascii in sorted_transmissions:
        message += chr(ascii)
    
    return message


transmissions = exercise_one()
cleaned_transmissions = exercise_two(transmissions)
message = exercise_three(cleaned_transmissions)

print(f"Exercise three: {message}")
        


