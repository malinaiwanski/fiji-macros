macro "CLAHE all slices" {
	img = getTitle();
	frames=nSlices;
	for(i=0; i<frames; i++) {
		selectWindow(img);
		currentslice=i+1;
		setSlice(currentslice);
		run("Enhance Local Contrast (CLAHE)", "blocksize=127 histogram=256 maximum=3 mask=*None*");
	}
}

print("Enhanced local contrast for movie: " + img);