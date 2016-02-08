class AddAttachmentPhoto2Photo3Photo4Photo5ToProfiles < ActiveRecord::Migration
  def self.up
    change_table :profiles do |t|
      t.attachment :photo2
      t.attachment :photo3
      t.attachment :photo4
      t.attachment :photo5
    end
  end

  def self.down
    remove_attachment :profiles, :photo2
    remove_attachment :profiles, :photo3
    remove_attachment :profiles, :photo4
    remove_attachment :profiles, :photo5
  end
end
