 $( document ).ready(function(){
	 $("#btnAddStudent").click(function(){
         $( "#addUserDialog" ).dialog({
             show: {
                 effect: "blind",
                 duration: 1000
                 },
             height: 500,
             width: 750,
             modal: true,
             hide: {
                 effect: "explode",
                 duration: 1000
             }
         });
     });
	 
 });