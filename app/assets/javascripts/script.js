$(document).ready(function(){
  $("a.new_window").attr("target", "_blank");
  $(".topic-trim").text(function(index, text) {
  	if(text.trim().length > 30){
  		return text.trim().substr(0,22) + "...(more)";
  	}
    
});
 });