class CreateTargets < ActiveRecord::Migration[6.0]
  def change
    create_table :targets do |t|
      t.string :filename
      t.string :label

      t.timestamps
    end
  end
end
