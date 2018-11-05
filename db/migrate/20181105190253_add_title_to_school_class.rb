class AddTitleToSchoolClass < ActiveRecord::Migration
  def change
    t.string :title
  end
end
