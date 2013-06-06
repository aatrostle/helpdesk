class AddReplyAttributeToTickets < ActiveRecord::Migration
  def up
    add_column :tickets, :response, :string, default: nil
  end

  def down
    remove_column :tickets, :response
  end
end
