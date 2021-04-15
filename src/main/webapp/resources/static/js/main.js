/**
 * 
 */

$(document).ready(function(){
   
$('.table #deleteButton').on('click',function(event)
{
    event.preventDefault();        	 /**to avoid default event **/
    var href=$(this).attr('href'); 	 /**to get current href value **/
    $('#myModal #delRef').attr('href',href)
    $('#myModal').modal();
   
    });
   
});