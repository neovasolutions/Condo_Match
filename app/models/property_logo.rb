class PropertyLogo < ActiveRecord::Base
  acts_as_content_block
  belongs_to_attachment
  belongs_to :property
  validates_presence_of :name
  validates_presence_of :property_id
        
        def set_attachment_file_path
          # The default behavior is use /attachments/file.txt for the attachment path,
          # assuming file.txt was the name of the file the user uploaded
          # You should override this with your own strategy for setting the attachment path
          super
        end

        def set_attachment_section
          # The default behavior is to put all attachments in the root section
          # Override this method if you would like to change that
          super
        end

end
