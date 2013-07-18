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

require 'date'
require 'rspec'
require '../kar_task'

describe KarTask do
	# before :each do
	# 	task = KarTask.each 1, 'Test_name', Date.new(2013, 7, 7), Date.new(2013, 8, 8), 'Test_details'
	# end

	it 'Should create a new task' do
		task = KarTask.new 1, 'Test_name', Date.new(2013, 7, 7), Date.new(2013, 8, 8), 'Test_details'
		task.task_id.should == 1
		task.task_name.should == 'Test_name'
		task.task_start_date == Date.new(2013,7,7)
		task.task_end_date == Date.new(2013,8,8)
		task.task_details == 'Test_details'
	end
end