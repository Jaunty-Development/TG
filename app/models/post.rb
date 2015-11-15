class Post < ActiveRecord::Base
  belongs_to :user
  has_attached_file :document
  validates_attachment_content_type :document, :content_type => ["application/pdf", "application/doc", "application/docx", "application/xlsx", "application/xls"]
end
