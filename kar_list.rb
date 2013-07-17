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

class KarList
	attr_reader :kar_list
	
	def initialize 
		@kar_list = Hash.new
	end

	def add_task task
		@kar_list[task.hash] = task
	end

	def show_task task_hash
		@kar_list[task_hash]
	end

	def delete_task task_hash
		@kar_list.delete task_hash
	end

	def edit_task
		raise 'Not Implemented'
	end

	def search_task task_hash
		@kar_list[task_hash]
	end
end

