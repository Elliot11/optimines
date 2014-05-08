var circutstep = 0;
var buttonstep = 0;

function circut(){
    var truck;
    var colorname;
    circutjson.forEach(function(row){
        if(row.time == circutstep){
            truck = row.truck;
            if(row.percentage<101){
                $("#truck"+truck).width(row.percentage+"%");
            }
            else{
                $("#truck"+truck).width("100%");
            }
        }
    });
    if (circutstep<649) {
        circutstep = circutstep + 1;
        window.setTimeout(circut,50);
    }
    else {
        circutstep = 0;
        window.setTimeout(circut,0);
    }
}

function buttons(){
    var button;
    var colorname;
    buttonjson.forEach(function(row){
        if(row.time == buttonstep){
            button = row.truck;
            $("#button"+button).removeClass("btn-danger");
            $("#button"+button).removeClass("btn-warning");
            $("#button"+button).removeClass("btn-success");
            $("#button"+button).removeClass("btn-default");
            if(row.color == "4"){
                colorname = "danger";
            }
            if(row.color == "2"){
                colorname = "warning";
            }
            if(row.color == "3"){
                colorname = "success";
            }
            if(row.color == "1"){
                colorname = "default";
            }
            $("#button"+button).addClass("btn-"+colorname);
        }
    });
    if (buttonstep<649) {
        buttonstep = buttonstep + 1;
        window.setTimeout(buttons,100);
    }
    else {
        buttonstep = 0;
        window.setTimeout(buttons,0);
    }
}

