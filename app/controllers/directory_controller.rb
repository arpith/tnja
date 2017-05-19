class DirectoryController < ApplicationController
  def index
    @categories = Hash.new
    Category.all.each do |category|
      @categories[category.name] = category.users.select(:rank, :full_name)
    end
  end
end
