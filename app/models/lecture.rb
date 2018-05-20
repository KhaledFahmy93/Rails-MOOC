class Lecture < ApplicationRecord
    mount_uploader :attachment, AttachmentUploader
    belongs_to :course
    acts_as_votable
    acts_as_commontable
end
