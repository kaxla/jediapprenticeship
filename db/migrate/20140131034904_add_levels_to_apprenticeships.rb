class AddLevelsToApprenticeships < ActiveRecord::Migration
  def change
    add_column :apprenticeships, :level, :integer
  end
end
