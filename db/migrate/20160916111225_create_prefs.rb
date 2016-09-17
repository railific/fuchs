class CreatePrefs < ActiveRecord::Migration[5.0]
  def change
    create_table :prefs do |t|
      t.integer :language
      t.string :timezone
      t.string :date_format
      t.string :email
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
