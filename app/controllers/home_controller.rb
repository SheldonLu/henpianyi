require 'redis/value'
class HomeController < ApplicationController
  caches_page :alltype,:fushi,:shishang,:xiebao,:jujia,:qita,:meishi , :expires_in => 10.days
  def alltype
    @type=Category.find_by_mark('alltype').id
    respond_to do |format|
      format.html
    end
  end

  def fushi
    @type=Category.find_by_mark('fushi').id
    respond_to do |format|
      format.html
    end
  end
  def shishang
    @type=Category.find_by_mark('shishang').id
    respond_to do |format|
      format.html
    end
  end
  def xiebao
    @type=Category.find_by_mark('xiebao').id
    respond_to do |format|
      format.html
    end
  end
  def jujia
    @type=Category.find_by_mark('jujia').id
    respond_to do |format|
      format.html
    end
  end

  def qita
    @type=Category.find_by_mark('qita').id
    respond_to do |format|
      format.html
    end
  end

  def meishi
    @type=Category.find_by_mark('meishi').id
    respond_to do |format|
      format.html
    end
  end

  def to_other
    id = params[:id]
    url = Redis::Value.new(id.to_s)
    puts url.value
    redirect_to url.value
  end

end
