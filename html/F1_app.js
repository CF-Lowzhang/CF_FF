$(function() {
	window.addEventListener('message', function(event) {
		if(event.data.type == "F1_init"){  
			$('.F1_menu').show()          
			setTimeout(function(){ document.getElementById("menu-toggler").checked = true;}, 50);
			
		} else if (event.data.type == "F1_destroy"){      
			document.getElementById("menu-toggler").checked = false;       
			setTimeout(function(){ $('.F1_menu').hide()}, 300);
		}    
	});

	$("#menu-toggler").click(function() {
		 $.post(`https://${GetParentResourceName()}/F1_closemenu`, JSON.stringify({}));
	});

	$("li.menu-item").click(function() {
		$.post(`https://${GetParentResourceName()}/F1_openmenu`, JSON.stringify({ id: $(this).data('id') }));
	});

	window.addEventListener("keydown", function onEvent(event) {
		if (event.key == "F1" || event.key == "Escape") {
			$.post(`https://${GetParentResourceName()}/F1_closemenu`, JSON.stringify({}));
		}
	});
}); 
