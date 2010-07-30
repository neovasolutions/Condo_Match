jQuery(document).ready(function () {
	jQuery("#anav UL LI A").click(function(){
		jQuery(".property .tab").hide('normal');
		jQuery("#" + jQuery(this).attr("rel")).show('normal');
		jQuery("#anav UL LI").removeClass("select");
		jQuery(this).parent().addClass("select");
	});
});
