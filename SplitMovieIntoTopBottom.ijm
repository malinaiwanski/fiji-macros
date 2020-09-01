img = getTitle();
width = getWidth;
height = getHeight;

makeRectangle(0, 0, width, height/2);
roiManager("Add");
makeRectangle(0, height/2, width, height/2);
roiManager("Add");

count = roiManager("Count");

for (i = 0; i < count; i ++){
	selectWindow(img);
	roiManager("Select", i);	
	run("Duplicate...", "duplicate");
}

for (i = 0; i < count; i ++){
	roiManager("Delete");
}

print("Split movie: " + img);