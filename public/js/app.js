$("#button").on("click", function(){
    $.post("/add?name=" + $("#name").val() + "&age=" + $("#age").val(),
        function(data){
            if (data.result == "ok"){
                $("#name").val('');
                $("#age").val('');
            } 
        });

});

$("#find").on("click", function(){
    $.get("/find?name=" + $("#name_find").val(),
        function(data){
            $("#age_result").html("Age: " + data.result)
        });

});