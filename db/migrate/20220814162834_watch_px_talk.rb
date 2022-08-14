class WatchPxTalk < ActiveRecord::Migration[7.0]
  def change
    add_column :watches, :px_talk, :text
  end
end
