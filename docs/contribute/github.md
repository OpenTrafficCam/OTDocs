# GitHub

All code of OpenTrafficCam is hosted on [GitHub](https://github.com/OpenTrafficCam). For each core module a separate repository exists:

* [OTCamera](https://github.com/OpenTrafficCam/OTCamera)
* [OTVision](https://github.com/OpenTrafficCam/OTVision)
* [OTAnalytics](https://github.com/OpenTrafficCam/OTAnalytics)
* [OTLabels](https://github.com/OpenTrafficCam/OTLabels)

Following the [Feature Branch Workflow](https://www.atlassian.com/git/tutorials/comparing-workflows/feature-branch-workflow) each repository has a master branch, which at all times should contain a stable version of the software. All coding should be committed to separate feature branches. Once you completed coding on a feature, issue or bugfix, you create a pull request for the respective feature branch (preferably labeled using the [GitHub labeling system](https://docs.github.com/en/github/managing-your-work-on-github/applying-labels-to-issues-and-pull-requests)). Your contributed code will then be reviewed by the main developers, discussed (if necessary) and merged into the master branch.

Even without coding you can contribute to the project: If you encounter any bug or got any idea for enhancement, feel free to [open an issue](https://docs.github.com/en/enterprise/2.15/user/articles/creating-an-issue) in the corresponding repository. Every issue should at least have two labels assigned: One label indicating the maturaty of the issue (<span style="background-color:#D876E3; color:#000000; border-radius:3px; padding:3px">question</span>, <span style="background-color:#D73A4A; color:#ffffff; border-radius:3px; padding:3px">bug</span>, <span style="background-color:#0E8A16; color:#ffffff; border-radius:3px; padding:3px">feature</span> or <span style="background-color:#C2E0C6; color:#000000; border-radius:3px; padding:3px">idea</span>) and one assigning the repository-specific subpackage or section (<span style="background-color:#000000; color:#ffffff; border-radius:3px; padding:3px">black colored labels</span>).

All pull request will be checked by [GitHub's super-linter](https://github.com/github/super-linter/).
