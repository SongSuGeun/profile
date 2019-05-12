class MainController < ApplicationController
  def index
    #  https://github.com/whomwah/rqrcode#svg
    require 'rqrcode'
    require 'rqrcode_png'
    require 'chunky_png'
    
    # png변환 -> 리사이즈 -> 베이스64 엔코드
    # 주소에 https는 필수
    puts "@@@@@@@"
    p request.original_url
    address = request.original_url + information_index_path
    @qr = RQRCode::QRCode.new(address , :size => 6, :level => :h)
  end
end

