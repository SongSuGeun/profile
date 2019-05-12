class MainController < ApplicationController
  def index
    #  https://github.com/whomwah/rqrcode#svg
    require 'rqrcode'
    require 'rqrcode_png'
    require 'chunky_png'
    
    # png변환 -> 리사이즈 -> 베이스64 엔코드
    # 주소에 https는 필수 
    @qr = RQRCode::QRCode.new('https://www.naver.com/', :size => 4, :level => :h)
  end
end

