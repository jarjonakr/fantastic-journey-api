class AddEntryCodeToChatRoom < ActiveRecord::Migration[6.1]
  def change
    add_column :chat_rooms, :entry_code, :string, null: false, index: { unique: true }
  end
end
