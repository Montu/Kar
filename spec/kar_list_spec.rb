# Author: Akshay Bhardwaj
# Copyright 2013 Akshay Bhardwaj
#
# Kar: A Todo App named written in ruby
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


require '../kar_list'
require '../kar_task'
require 'rspec'

describe KarList do
	before :each do
		@test_kar_list = KarList.new
	end
	
	it 'Should create task list' do
		@test_kar_list.kar_list.should_not == nil
	end

	it 'Should add a task to the task list' do
		test_task = KarTask.new 1, 'Test_name', Date.new(2013, 7, 7), Date.new(2013, 8, 8), 'Test_details'
		@test_kar_list.add_task test_task
		saved_task = @test_kar_list.search_task test_task.hash
		saved_task.should_not == nil
		saved_task.task_id.should == 1
		saved_task.task_name.should == 'Test_name'
		saved_task.task_start_date.should == Date.new(2013,7,7)
		saved_task.task_end_date.should == Date.new(2013,8,8)
		saved_task.task_details.should == 'Test_details'
	end

	it 'Should delete a task from the task list' do
		test_task = KarTask.new 1, 'Test_name', Date.new(2013, 7, 7), Date.new(2013, 8, 8), 'Test_details'
		@test_kar_list.add_task test_task
		@test_kar_list.delete_task test_task.hash
		@test_kar_list.search_task(test_task.hash).should == nil
	end

	it 'Should edit a task in the task list' do

	end

	it 'Should search a task in the task list' do

	end
end