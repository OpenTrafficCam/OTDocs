# CVAT

CVAT is a free video and image annotation tool for computer vision.  

We recommend the developers guides for [Installation] (<https://github.com/openvinotoolkit/cvat/blob/develop/cvat/apps/documentation/installation.md>) as well as the [user's guide] (<https://github.com/openvinotoolkit/cvat/blob/develop/cvat/apps/documentation/user_guide.md>).

## Projects, Tasks and Jobs

We define certain set of videos as a **project**.
Every project has multiple **tasks** (each consists of one video to annotate). Each task has a status ("Pending", "In Progress" and "Completed") and a progress bar showing the number of completed jobs. Open the task with klick on "Open".  
For each task (or video) multiple **jobs** with a certain amounts of frames from the video are defined. Each job has a status ("annotation", "validation" and "completed"), an "assignee" (responsible for annotation) and a "reviewer" (responsible for reviewing the assignees annotation). Open the job with klick on "Job #...".

## Import datafix

TODO

## Workflow

For each job, the project coordinator assigns the roles of the "assignee" (= annotator) and the "reviewer". The reviewer then starts working on a job by initial labeling (see [Annotation](#annotation)) of the video frames. The assignee should save his labeling work from time to time and can also stop and later repeat working on a job. After finishing the initial labeling, the assignee requests a review (menu - request review, the assigned reviewer should already be named there) and thus sets status of the job to "validation". Then the reviewer checks the initial labeling done by the assignee and raises issues when there is a problem or question. After reviewing all video frames of the job, the reviewer submits the review (see see [Review](#review) by either accepting and completing the job or rejecting it (which sets the status of the job bach to "Annotation"). Now the assignee has to check the issues, update the labels, resolve the issus and again request a review. The review process starts again and if necessary also next annotations, until the reviewer accepts the job and it is marked as "Completed".  
![CVAT Workflow](cvat-macro-workflow.png)

We recommend the following procedure for annotation in CVAT:

- Go through all pre-labeled objects on the right
  - Check and delete false positive labels (if there is no object)
  - Check and delete duplicate labels for the same object
  - Check and correct object class for target classes
  - Check and delete objects from other classes if they are classified wrong
- Zoom in on one quadrant of the image at a time:
  - Check and correct position of object´s 2D boxes
  - Check if there are objects from the target classes not already pre-labeled, draw new 2D box and annotate object class

## Download data

TODO
