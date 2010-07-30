/**
 * @author root
 */
//This function do a ajax for getting search result.
function doSearch(){
	var search_text=jQuery('#search').val();
	if (escape(search_text) != "") {
		jQuery("#searchResult").load('/search?search_text=' + escape(search_text) + "&view=" + jQuery("#view_type").val());
	}
} 


//This function do a ajax call for getting the search result in photo format.
function searchResultPhotoView(){
	jQuery("#view_type").val("photo");
	doSearch();
}


//This function do a ajax call for getting the search result in list format.
function searchResultListView(){
	jQuery("#view_type").val("list");
	doSearch();
}

//This function do a AJAX call for getting the search result in column view
function doSearchColumnView(){
	jQuery("#view_type").val("column");
	doSearch();
}
