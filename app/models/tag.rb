class Tag < ActiveRecord::Base
  attr_accessible :content, :help_request_id
  validates :content, uniqueness: true
  belongs_to :help_request

  before_save :upcase_content

  # migrations
    # t.string :content
    # t.string :help_request_id
    # t.timestamps

  def self.parse_tags(tags, request_id)
    tag_objects = []
    tags.upcase.split(/,\s|\s/).map do |tag_content|
      tag_content = tag_content.delete('#')
      t = Tag.find_or_create_by_content( tag_content )
      t.help_request_id = request_id; t.save
      tag_objects << t
    end
    tag_objects
  end

  private
    def upcase_content
      content.upcase!
    end
end
