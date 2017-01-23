$( document ).ready(function() {
  function reload() {
	        $.ajax({
	            dataType: "json",
	            type: 'GET',
	            url: "/Student/student",
	            contentType : "application/json",
	            success: function (data) {
	               alert(data);
	                var template = $('#tplList').html();
	                var html = Mustache.render(template, data);
	                $('#listProject').html(html);
	               
	            },
	            error: function (data) {
	    
	            }
	        });
	    }
	    reload();
	    
	});
