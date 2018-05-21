class CreateUserMail < ActiveRecord::Migration[5.2]
  def change
    create_table(:user_mail, :id => false, :primary_key => 'user_id') do |t|
      t.references(:user, index: { unique: true }, foreign_key: true, null: false)
      t.string(:email, null: false, index: { unique: true })
      t.string(:password, null: false)
      t.timestamp(:created_at, null: false)
    end
  end
end
