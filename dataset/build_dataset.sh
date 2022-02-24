#/bin/bash
# unzip dataset_massalia.zip

echo "Suppression datadir"
rm -r images/*  # clean datadir
rm -r labels/*


echo "Creation nouveau datadir"
mkdir labels
mkdir labels/train
mkdir labels/val

mkdir images
mkdir images/train
mkdir images/test
mkdir images/val


# train
echo "Building train dataset..."
mkdir train
ls dataset_massalia/images/train_images > train_images.txt
mogrify -format jpg dataset_massalia/images/train_images/*.png
mv dataset_massalia/images/train_images/*.jpg images/train


# submit
echo "Building Testing dataset..."
mogrify -format jpg dataset_massalia/images/test_images/*.png
mv dataset_massalia/images/test_images/*.jpg images/test

python3 build_dataset.py
# python3 build_dataset_helper.py