class Admin::HomeController < ApplicationController
	def index
		@leaves = Leave.all
		@expenses = Expense.all
		@tasks = Task.all
		@tickets = Ticket.all
	end
	def payroll_summery
		@employees = Employee.all
		@increament = Increament.new
		#@increments = Increment.search(params[:search])
	end
	
	def salary_statement
		@increaments = Increament.search(params[:search])
	end

	def job_applicant

	end
	
	def system

	end
end