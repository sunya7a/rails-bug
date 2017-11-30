class CreateAsBs < ActiveRecord::Migration[5.2]
  def change
    create_table :as_bs do |t|
      t.references :a, foreign_key: true
      t.references :b, foreign_key: true

      t.timestamps
    end
  end
end
