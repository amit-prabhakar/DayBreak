//open the image full sized in a new tab/window
$("#dicom_image").on("click", function()
{
	w = window.open();
	fullsize = $("#dicom_image").clone();
	fullsize.height("auto"); //make the image its original size
	fullsize.appendTo($(w.document.body));
});


