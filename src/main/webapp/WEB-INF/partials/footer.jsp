<audio>
    <source src="../../Fire-8Bit.mp3">
</audio>
<script
        src="https://code.jquery.com/jquery-3.3.1.js"
        integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
        crossorigin="anonymous">

</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


<script>
    function fireParty() {
        var danceCount = 0;
        var interval = 250;
        var audio =  $('audio')[0];
        audio.loop = true;
        audio.play();
        setInterval(function () {
            if (danceCount === 0) {
                $(".image").css("display", "none");
                $("#image1").css("display", "inline");
                $("#image6").css("display", "inline");
                danceCount++;
            } else if (danceCount === 1) {
                $(".image").css("display", "none");
                $("#image2").css("display", "inline");
                $("#image7").css("display", "inline");
                danceCount++;
            } else if (danceCount === 2) {
                $(".image").css("display", "none");
                $("#image3").css("display", "inline");
                $("#image8").css("display", "inline");
                danceCount++;
            } else if (danceCount === 3) {
                $(".image").css("display", "none");
                $("#image4").css("display", "inline");
                $("#image9").css("display", "inline");
                danceCount++;
            } else if (danceCount === 4) {
                $(".image").css("display", "none");
                $("#image5").css("display", "inline");
                $("#image10").css("display", "inline");
                danceCount = 0;
            }
        }, interval);
    }


    var inputArray = [];
    $(document).keyup(function (event) {
        inputArray.push(event.keyCode);
        console.log(inputArray.toString());
        if (inputArray.toString().includes("38,38,40,40,37,39,37,39,66,65,13")) {
            fireParty();
        }
    });
</script>

