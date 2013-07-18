# Author: Akshay Bhardwaj
# Copyright 2013 Akshay Bhardwaj
#
# Kar: A Todo App written in ruby
#
# This file is part of Kar
#
# Kar is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

class KarTask
	attr_reader :task_id, :task_name, :task_start_date, :task_end_date, :task_details
	def initialize task_id, task_name, task_start_date, task_end_date, task_details
		@task_id = task_id
		@task_name = task_name
		@task_start_date = task_start_date
		@task_end_date = task_end_date
		@task_details = task_details
	end
	def match_kar_task field_name, field_value
		task_reg_exp = /*
	end
end