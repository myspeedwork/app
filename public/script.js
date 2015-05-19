$(document).ajaxStart(function(){
    NProgress.start();
});
$(document).ajaxComplete(function(){
    NProgress.done();
});

$(document).ajaxStop(function(){
    NProgress.done();
});