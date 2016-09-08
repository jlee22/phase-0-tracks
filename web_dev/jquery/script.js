console.log("Running Script...")

//experimenting with different jquery functions

$(document).ready(function(){
    $("#btn").click(function(){
        $("img").fadeOut(3000);
     
    });
});

$(document).ready(function(){
    $("#p1").hover(function(){
        alert("Surprise!");
    },
    function(){
        alert("Bye!");
    });
});

$(document).ready(function(){
    $("#btn1").click(function(){
        $("#p2").append(" It has great public transport.");
    });

});