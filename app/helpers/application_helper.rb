require 'redis/value'
module ApplicationHelper
  
  def money_integer (f)
    format("%.2f",f).to_s.split('.')[0]
  end
  def money_decimal(f)
    begin
      format("%.2f",f).to_s.split('.')[1]
    rescue TypeError
      return '00'
    end
  end
  def money_float(f)
    format("%.2f",f)
  end

  def to_local_path(url,id)
    # debugger
    # Redis.current.put(id.to_s,url)
    # @value=Redis::Value:new id
    @value = Redis::Value.new(id.to_s)
    unless @value.value
      @value.value=url
    end
    return id
  end
end
