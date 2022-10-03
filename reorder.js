$(document).ready(function(){	
	$("ul.reorder-gallery").sortable({		
		update: function( event, ui ) {
			updateOrder();
		}
	});  
});
function updateOrder() {	
	var item_order = new Array();
	$('ul.reorder-gallery li').each(function() {
		item_order.push($(this).attr("id"));
	});
	var order_string = 'order='+item_order;
	$.ajax({
		type: "GET",
		url: "update_order.php",
		data: order_string,
		cache: false,
		success: function(data){			
		}
	});
}