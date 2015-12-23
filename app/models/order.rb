class Order < ActiveRecord::Base
  has_many :products, class_name: 'OrderProduct'

  validates :email, presence: true, format: /@/
  validates :phone, presence: true, format: { with: /\+\d{12}/, message: 'Format: +380XXXXXXXXX' }
  validates :address, presence: true

  accepts_nested_attributes_for :products

  before_save :cal_total

  private

  def cal_total
    # TODO; Sum order_products*quantity
  end
end
