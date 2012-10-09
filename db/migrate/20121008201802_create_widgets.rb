class CreateWidgets < ActiveRecord::Migration
  def change
    create_table :widgets do |t|
      t.string "state", :limit => 16
      t.timestamps
    end
  end
end
