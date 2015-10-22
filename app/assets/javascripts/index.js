function init(){
			$(document).ready(function() {

				$("#owl-demo1").owlCarousel({
					items : 3,
					lazyLoad : true,
					autoPlay : true,
					navigation : true,
					navigationText : ["", ""],
					rewindNav : true,
					scrollPerPage : false,
					pagination : false,
					paginationNumbers : false
				});$("#owl-demo2").owlCarousel({
					items : 3,
					lazyLoad : true,
					autoPlay : true,
					navigation : true,
					navigationText : ["", ""],
					rewindNav : true,
					scrollPerPage : false,
					pagination : false,
					paginationNumbers : false
					 
				});
			});
}