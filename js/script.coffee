$ ->
  showdata = (data,name,suffix,istext) ->
    console.log "FILER loaded ",name,suffix,istext,"data":data
    
  $('#pastehere').paster (data) ->
    console.log "PASTER: ",data
  
  $('#drophere').dropper
    error: (errro) ->
      console.log "FILER error ",error
    success: showdata
  
  $('#filehere').filer
    error: (errro) ->
      console.log "FILER error ",error
    success: showdata
  