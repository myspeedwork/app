$(document).ready(function(){
    $('.hasSubmenu').live('clicks',function(e) {
         e.preventDefault();

        //var $this = $(this).parent('li');
        //$this.find('ul:first').slideToggle('slow');
        //$this.find('ul:first').toggleClass('active');
       
        /*if($this.hasClass('active')){
            $this.removeClass('active');
            $this.find('ul:first').slideUp('slow'); 
        }else{
            $this.addClass('active');
            $this.find('ul:first').slideDown('slow');
        }
        return false;*/
    });
});

