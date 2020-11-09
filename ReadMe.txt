Description:
This folder is everything needed in order to break up the 1 large file from Google Forms (CSV) into multiple files - one file for each route.  It will save this as as a pdf, html, and csv form.

Installation:
1) Copy the Tree Recycling folder (or just clone the whole repo)
2) Change directory to the TreeRecycling directory
3) run: "python3 -m venv venv"
4) run: ". venv/bin/activate"
5) run: "pip install -r requirements.txt"

Instructions (using the Jupyter Notebook format):
0) run: ". venv/bin/activate"
1) run: "jupyter notebook"
2) click on "ParseTreePickupMasterList.ipynb"
3) Update the file name in block 2 to match the master list
4) Select Cell -> Run All
You should now have a csv, html, pdf, and xlsx version of each route.

Instructions (using the splitter script):
0) run: ". venv/bin/activate"
1) change input filename on line 5
2) change output directory name on lines 18, 34, 36, 38
3) mkdir $output_directory
4) python3 splitter
You should now have a csv, html, pdf, and xlsx pdf version of each route.
