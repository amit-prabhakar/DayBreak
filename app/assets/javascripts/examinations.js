//open the image full sized in a new tab/window
$("#dicom_image").on("click", function() 
{
	w = window.open();
	fullsize = $("#dicom_image").clone();
	fullsize.height("auto");
	//make the image its original size
	fullsize.appendTo($(w.document.body));
});

//heartrate warning system
$('#examination_fetal_heart_hrate').change('input', checkhr); 

function checkhr() 
{
	bpm = $("#examination_fetal_heart_hrate").val();
	label = $("#label_fetal_heart_hrate");
	value = $(this);
	if (bpm == "")
	 {
		label.css("background-color", "");
		$("#warning_heartbeat_low").remove();
		$("#warning_heartbeat_high").remove();
		if ($("#FX_warning_list li").length == 0) 
		{
			$("#FX_warning_row").hide();
		}
	} 
	else if (bpm < 100) 
	{
		$("#FX_warning_row").show();
		label.css("background-color", "#f2dede");
		if ($("#warning_heartbeat_low").length == 0)
		{
			$("#FX_warning_list").append("<li id='warning_heartbeat_low' class='text-danger'>Heartbeat low</li>");
		}
		$("#warning_heartbeat_high").remove();
	} 
	else if (bpm > 180) 
	{
		$("#FX_warning_row").show();
		label.css("background-color", "#f2dede");
		if ($("#warning_heartbeat_high").length == 0) 
		{
			$("#FX_warning_list").append("<li id='warning_heartbeat_high' class='text-danger'>Heartbeat high</li>");
		}
		$("#warning_heartbeat_low").remove();
	} 
	else 
	{
		label.css("background-color", "");
		$("#warning_heartbeat_low").remove();
		$("#warning_heartbeat_high").remove();
		if ($("#FX_warning_list li").length == 0) 
		{
			$("#FX_warning_row").hide();
		}
	}
}

//errno warning system
//demo warning system where the "unusual" conditions must both be even #s of odd #s
$("#examination_fetal_anat_intercranial").change(evenOddErrno);
$("#examination_fetal_anat_face").change(evenOddErrno);
function evenOddErrno()
{
	brainsel = $("#examination_fetal_anat_intercranial").find(":selected").text();
	facesel = $("#examination_fetal_anat_face").find(":selected").text();
	brainlabel = $("#label_fetal_anat_intercranial");
	facelabel = $("#label_fetal_anat_face");
	
	mismatch1 = (brainsel == "Unusual 3" && facesel == "Unusual 6");
	mismatch2 = (brainsel == "Unusual 4" && facesel == "Unusual 5");
	
	$("#even_odd_errno").remove(); //make sure only 1 copy of the warning exists
	if(mismatch1 || mismatch2)
	{		
		brainlabel.css("background-color", "#f2dede");
		facelabel.css("background-color", "#f2dede");

		$("#FX_warning_row").show();
		$("#FX_warning_list").append("<li id='even_odd_errno' class='text-danger'>Intercranial and facial observations not possible.</li>");
	}
	else
	{
		brainlabel.css("background-color", "");
		facelabel.css("background-color", "");
		
		if ($("#FX_warning_list li").length == 0) 
		{
			$("#FX_warning_row").hide();
		}
	}
}

checkhr();
evenOddErrno();
