class CreateQuotaConfigs < ActiveRecord::Migration
  def change
    create_table :quota_configs do |t|
      t.integer :subject_id
      t.integer :own_quota
      t.integer :program_quota
      t.integer :pregrade_quota

      t.timestamps
    end
  end
end
