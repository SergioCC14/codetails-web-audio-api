class CreateSound < ActiveRecord::Migration
  def change
    create_table :sounds do |t|
      t.text        :title
      t.attachment  :audio

    end
  end
end
