function setKind(kind) {
	$(".s").each(function() {
		if($(this).val()==kind){
			$(this).prop("selected", true);
		}
	})
};

$(".p").click(function() {
	const n= $(this).attr("data-list-pn");
	$("#pageNum").val(n);
	$('#frm').submit();
			
});