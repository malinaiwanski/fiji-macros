makeRectangle(0, 0, 512, 256);
roiManager("Add");
makeRectangle(0, 256, 512, 256);
roiManager("Add");

count = roiManager("Count");
img = getTitle();

for (i = 0; i < count; i ++){
	selectWindow(img);
	roiManager("Select", i);	
	run("Duplicate...", "duplicate");
}

for (i = 0; i < count; i ++){

	roiManager("Delete");
}