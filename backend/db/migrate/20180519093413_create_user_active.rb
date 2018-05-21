class CreateUserActive < ActiveRecord::Migration[5.2]
  def change
    create_table(:user_active, id: false, primary_key: 'user_id') do |t|
      t.references(:user, index: { unique: true }, foreign_key: true, null: false)
      t.timestamp :created_at, :null => false
    end
  end
end
