Description:
This folder is everything needed in order to break up the 1 large file
from Google Forms (XLSX) into multiple files - one set of files for each
route.


First Time Setup:

1) git clone https://github.com/mr-ice/233treerecycling.git
2) cd 233treerecycling
3) ./dockerbuild or dockerbuild.cmd

Re-Setup: (Do this if returning after any significant time  or when you
    know there may be changes)

1) cd 233treerecycling
2) git pull
3) ./dockerbuild or dockerbuild.cmd

Split the Tree Recyling Routes:

1) download the Google Docs as an xlsx
    (for example 2020TreeRecyclingRequests.xlsx)

2) ./splitfile 2020TreeRecyclingRequests.xlsx
3) ./genpdfs 2020TreeRecyclingRequests.xlsx

    (optional) append --output 2020-Routes to change the name of the
    output directory to 2020-Routes.   The default is %Y-Routes using
    the current year, typically the year of pick-up, not the year of the
    christmas/fundraising season.  Make sure to use the same arguments
    for both scripts.

