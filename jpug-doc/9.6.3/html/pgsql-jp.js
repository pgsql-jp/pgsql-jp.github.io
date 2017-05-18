window.onload = function() {
    var dis = document.cookie.split( '; ' )[ 0 ].split( '=' )[ 1 ]
    if(dis === "true"){
	orignalDisplay();
    } else {
	originalHidden();
    }
}
function toggledisplay()
{
    var style = document.getElementsByClassName('hidden-original');
    if (style[0]){
	orignalDisplay();
    } else {
	originalHidden();
    }
}
function orignalDisplay() {
    document.body.classList.remove('hidden-original');
    document.cookie = 'original=true';
    var element = document.getElementById("original-toggle");
    element.innerText = "▼[原文]";
}

function originalHidden() {
    style = document.createElement('style');
    style.id = 'hidden-original';
    document.body.classList.add('hidden-original');
    document.cookie = 'original=false';
    var element = document.getElementById("original-toggle");
    element.innerText = "▶[原文]";
}
