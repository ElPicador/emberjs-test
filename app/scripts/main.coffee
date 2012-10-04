@ChooseYourEmployee = Ember.Application.create
	name: "ChooseYourEmployee"
	ready: ->
		console.log 'App is running'

@ChooseYourEmployee.Employee = Ember.Object.extend
	name: 'toto'
	id: 1

@ChooseYourEmployee.EmployeesController = Ember.ArrayController.create
	content: []
	addEmployee: () ->
		@pushObject ChooseYourEmployee.Employee.create()
	init: () ->
		@_super()
		@addEmployee()


@ChooseYourEmployee.EmployeesView = Ember.View.extend
  templateName: 'employees-template'
