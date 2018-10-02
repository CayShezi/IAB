
$(document).ready(function(){
	

	
	
	$("text").draggable({ containment: 'document', revert: true,
		start: function(){
			contents = $(this).text();
		}
	});
	

	$('#list').droppable({ hoverClass: 'border', accept: '.item',
		drop: function(){
			$('#list').append(contents + '   '); 
		}
	});
	
});