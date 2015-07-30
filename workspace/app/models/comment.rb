class Comment < ActiveRecord::Base
  belongs_to :res_board
  validates :body, presence: true #빈칸금지 유효성검증
end
