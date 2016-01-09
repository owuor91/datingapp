class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.string :location
      t.string :relationship
      t.string :phone
      t.string :occupation
      t.string :education
      t.string :hobbies
      t.text :bio
      t.attachment :avatar
    end
  end
end
