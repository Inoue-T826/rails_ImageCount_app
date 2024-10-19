class AddButtonToClicks < ActiveRecord::Migration[7.0]
  def change
    add_column :clicks, :button, :integer
  end
end
