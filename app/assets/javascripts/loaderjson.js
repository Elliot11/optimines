var buttonjson;
var circutjson;
$.getJSON("http://fast-shelf-9370.herokuapp.com/opttrucks.json", function(json) {
    circutjson = json;
    console.dir(circutjson);
    circut();
});

$.getJSON("http://fast-shelf-9370.herokuapp.com/optloaders.json", function(json) {
    buttonjson = json;
    console.dir(buttonjson);
    buttons();
});

