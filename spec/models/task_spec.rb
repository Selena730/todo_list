require 'rails_helper'

RSpec.describe Task, type: :model do
  describe 'validations' do
    it 'is valid with valid attributes' do
      task = Task.new(title: 'Groceries', description: 'Buy food', category: 'Shopping', completed: false)
      expect(task).to be_valid
    end

    it 'is not valid without a title' do
      task = Task.new(description: 'Test Description', category: 'Test Category', completed: false)
      expect(task).not_to be_valid
    end

    it 'is not valid without a description' do
      task = Task.new(title: 'Test Task', category: 'Test Category', completed: false)
      expect(task).not_to be_valid
    end

    it 'is not valid without a category' do
      task = Task.new(title: 'Test Task', description: 'Test Description', completed: false)
      expect(task).not_to be_valid
    end
  end
end
