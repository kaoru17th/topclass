class CreateQuotaConfigs < ActiveRecord::Migration
  def change
    create_table :quota_configs do |t|
      t.integer :idsubject
      t.integer :ownquota
      t.integer :programquota
      t.integer :pregradequota

      t.timestamps
    end
  end
end
