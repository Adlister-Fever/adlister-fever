(function(){
    function open(obj){
        for(let key in obj){
            let str = [];
            console.log(key + ": " + obj[key]);
        }
    }

    let pullUser = ()=>($.ajax({
        url: 'https://randomuser.me/api/',
        dataType: 'json',
        success: function(data) {
            // console.log(data);
            // console.log(data.results);
            // console.log(data.results[0].gender);
            // console.log(data.results[0].picture.thumbnail);
            let myJSON = JSON.stringify(data);
            document.getElementById("main").innerHTML = myJSON;

            // console.log(data.results[0].picture.large);
            let src = `src="${data.results[0].picture.large}"`;
            $(`<div><img ${src} alt="profile image"><div class="display-4">${data.results[0].name.first} ${data.results[0].name.last}</div></div>`).appendTo('#main');

            open(data.results[0]);
            open(data.results[0].name);
            open(data.results[0].location);
            open(data.results[0].login);
            open(data.results[0].dob);
            open(data.results[0].registered);
            open(data.results[0].id);
            open(data.results[0].picture);
            let fs = require('fs');
            fs.writeFile("/Users/wilfredopacheco/IdeaProjects/adlister-fever/src/make-user", myJSON, function(err) {
                if(err) {
                    return console.log(err);
                }

                console.log("The file was saved!");
            });
        }
    }));
    pullUser();
})();