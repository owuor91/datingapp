class AddAttachmentPhoto1ToProfiles < ActiveRecord::Migration
  def self.up
    change_table :profiles do |t|
      t.attachment :photo1
    end
  end

  def self.down
    remove_attachment :profiles, :photo1
  end
end
