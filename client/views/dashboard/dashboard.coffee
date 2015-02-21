AutoForm.hooks
	add:
		onError: (operation,error)->
			App.alertError(error)
      
Template.products.events "click .toggle-checked": ->
  Products.update @_id,
    $set:
      checked: not @checked
      
Template.dashboard.events "click .order": ->
  console.log Products.find(checked: true).count()