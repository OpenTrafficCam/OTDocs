# Preprocessing Data

Before retraining the YOLOv5 model, you might want to preprocess your labeled data to ensure that your frames are in the right format.

## Convert CVAT output to YOLOv5

OTLabels provides the `cvat_to_yolo.py` script to convert the annotated data to the appropriate format YOLOv5 needs for retraining the model.
Before executing the script, you have to setup the configurations for your needs:

- Within the script:
  - Set destPath: path where your data is stored (typically ./data/*).
  - Set annFile: path to the COCO-annotation file (if you do not have it yet, see below how to get it).
  - Set catFile: path to a text file containing your CVAT labels (standard: labels_CVAT.txt).
  - Set cvatFile: path to a CVAT output file (containing images and labels, see also section **CVAT**: Download data) **or** to a folder containing multiple CVAT output files.
  - Set name: the name of subfolder of *destPath/images* and *destPath/labels* to store the data in.
- labels_CVAT.txt: a text file with two columns separated by actual commas with headers named *Cat* and *CatId* containing the name and the ID of your CVAT labels.
  For a example, see the *labels_CVAT.txt* file in the OTLabels repository.
  Please note that labels **not provided in this file will not be converted and consequently be deleted**.

The script performs the following steps:

1. Unzip the CVAT output file
2. Copy the images to the directory *destPath/images/name*.
3. Import the label files and convert the CVAT labels to the COCO labels used by YOLOv5.
4. Export the converted label files to the directory *destPath/labels/name*.

## Filter the labels

If for some reason you want to filter the labels that are already stored in your data directory, you can use the *filter_labels.py* script.
Before executing the script, you have to setup the configurations for your needs:

- Within the script:
  - Set path: path where the data is stored (typically ./data/*).
  - Set name: the name of **one or more** subfolder of *destPath/images* and *destPath/labels* to store the data in.
    More than one name must be provided as list.
  - Set annFile: path to the COCO-annotation file (if you do not have it yet, see below how to get it).
  - Set labelsFilter: path to a text file (standard: label_filter.txt) containing the labels you want to keep.
- label_filter.txt: a text file containing the category **names** (e.g., "car") of the labels you want to keep (without quotes and one category name per row).

Please note that the images will not be copied to the corresponding folder in *destPath/images* in order to save file space.
Instead, a text file with all images still containing the filtered labels is created.
This file of filenames can also be referred to by YOLOv5.

The script performs the following steps:

1. Get the category IDs to the corresponding category name.
2. Import the label files.
3. Filter the labels by the provided category names.
4. Export the labels to the directory *destPath/labels/name_filtered*.
5. Create a text file with all image files in the directory *path*.
Please note that **images and label files not including any label after filtering are not exported**.

## Get COCO annotation file

This file is necessary to ensure your labels match the labels of the pretrained YOLOv5 models.
Use the *get_coco_annotation_files.py* script to download one or more COCO annotation files.
Configurations to be made:

- Within the script:
  - Set path: path where the data is stored (typically ./data/*).
  - Set URLFile: path to the config file that stores the URLs of the annotation files
- coco_annotation_json_URLs.txt: a text file containing the URLs of the annotation files (without quotes and one URL per row)

## Get the original COCO dataset

In some cases you might want to get the original COCO dataset that was used to train the original YOLOv5 models.
Therefore, OTLabels provides the *get_coco_data.py* script to download the data.
Please note that you could also **use the *get_coco.sh* script from the YOLOv5 repository**.
Before executing the script, you have to setup the configurations for your needs:

- Within the script:
  - Set imageURLs: path of a text file (standard: coco_image_URLs.txt) containing the URLs of the image data sets.
  - Set annURL: URL to the labels.
  - Set destPath: path where your data is stored (typically ./data/*).
- coco_image_URLs.txt: a text file containing the URLs of the images for training, validation and testing (without quotes and one URL per row).
