module HomeHelper
  def pic_to_normal(str)
    array=str.to_s.split('/')
    new_str=''
    count=0
    array.each do |s|
      count=count+1
      if count==6
        new_str=new_str << 'normal_' << s
      else
        new_str=new_str << (s << '/')
      end

    end
    logger.warn(new_str)
    return  new_str
  end
end
