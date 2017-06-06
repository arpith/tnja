class OfficeBearersController < ApplicationController
  def index
    @positions = Hash.new
    Position.all.each do |position|
      @positions[position.title] = position.users.select(:full_name)
    end
  end
end
