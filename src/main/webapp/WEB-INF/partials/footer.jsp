
<script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>
<script>
    function fireParty() {
        var danceCount = 0;
        var interval = 250;
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

