class UserSearch
  include ActiveModel::Model

  attr_accessor :search_name, :search_age_under, :search_age_top

  def execute
    User.ransack(name_eq: @search_name, age_gt: @search_age_under, age_lt: @search_age_top).result
  end
  
end