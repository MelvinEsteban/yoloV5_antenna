import random
files = []

percent_train = 80
percent_valid = 100 - percent_train


with open("train_images.txt") as train_file:
    all_files=[]
    for line in train_file.readlines():
        all_files.append(line.strip())



with open("dataset_massalia/labels/csv/train_boxes.csv") as f:
    # ignore first line
    f.readline()
    index_percent_train = int(len(all_files) * percent_train / 100)
    train_files = random.sample(all_files, index_percent_train)
    print(train_files)
    for line in f.readlines():
        data = line.strip().split(",")
        if data[0] in train_files:
            filename = "train/" + data[0].replace(".png", ".jpg")
        else:
            filename = "val/" + data[0].replace(".png", ".jpg")

        width = (int(data[3]) - int(data[1]))/512.0
        height = (int(data[4]) - int(data[2]))/512.0

        center_x = (int(data[3]) + int(data[1]))/2/512.0
        center_y = (int(data[4]) + int(data[2]))/2/512.0

        desc = "0 " + str(center_x) + " " + str(center_y) + \
            " " + str(width) + " " + str(height) + "\n"
        files.append("./images/" + filename)


        # write file description
        file = open("./labels/" + filename.replace(".jpg", ".txt"), "a")
        file.write(desc)
        file.close()


