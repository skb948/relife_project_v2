class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users, id: :integer, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", comment: "ユーザー", force: :cascade do |t|
      t.string :name, limit: 128, null: false, comment: "氏名"
      t.string :email, null: false, comment: "メールアドレス"
      t.text :description, comment: "説明"

      t.timestamps
    end
  end
end
