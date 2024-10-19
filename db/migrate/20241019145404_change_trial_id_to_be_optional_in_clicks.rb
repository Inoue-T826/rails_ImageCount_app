class ChangeTrialIdToBeOptionalInClicks < ActiveRecord::Migration[7.0]
  def change
    change_column_null :clicks, :trial_id, true  # trial_id の NULL 制約を解除
  end
end
