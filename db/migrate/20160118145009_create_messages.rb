class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer    :user_id
      t.integer    :send_to
      t.text       :m_text
      t.timestamps null: false
    end
  end

  add_column :users, :introduce_text, :text
  add_column :users, :sex           , :string
end
