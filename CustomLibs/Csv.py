import csv


# file_path = " D:\development1\robot-scripts\swag-advance\Data\Users.csv"

def read_csv_file(filename):
    data = []
    with open(filename, mode='r',encoding="utf-8") as csvfile:
        reader = csv.reader(csvfile)
        for row in reader:
            data.append(row)
    return data