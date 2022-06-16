class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name, null: false, unique: true
      t.string :email, null: false, unique: true
      t.string :gender, null: false
      t.string :status, null: false
      t.timestamps default: -> { 'CURRENT_TIMESTAMP' }
    end
  end
end
