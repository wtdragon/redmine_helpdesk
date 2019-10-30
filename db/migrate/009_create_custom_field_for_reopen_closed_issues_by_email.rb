class CreateCustomFieldForReopenClosedIssuesByEmail < ActiveRecord::Migration[5.2]
  def self.up
    c = CustomField.new(
      :name => 'reopen-closed-issues-by-email',
      :editable => true,
      :visible => true,
      :field_format => 'bool')
    c.type = 'ProjectCustomField' # cannot be set by mass assignement!
    c.save
  end

  def self.down
    CustomField.find_by_name('reopen-closed-issues-by-email').delete
  end
end