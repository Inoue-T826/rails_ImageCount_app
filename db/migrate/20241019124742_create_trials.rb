class CreateTrials < ActiveRecord::Migration[7.0]
  def change
    create_table :trials do |t|

      t.timestamps
    end
  end
end
