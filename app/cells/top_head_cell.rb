class TopHeadCell < Cell::Rails

  cache :top , :expires_in => 1.days
  def top
    render
  end


  def main_head (args)
    @type=args[:type]
    @category=Category.all

    category=Category.find(args[:type])

    t = Time.now
    str= t.strftime("%Y-%m-%d 00:00:00")

    if category.mark=='alltype'
      @all_count=Shelf.find_all_by_state(1).count
      @today_count=Shelf.where(" state=:state and created_at > :created_at",
                               {:state => 1,:created_at => str}).count
    else
      @all_count=Shelf.find_all_by_state_and_category_id(1,@type).count
      @today_count=Shelf.where(" state=:state and created_at > :created_at and category_id=:category_id",
                               {:state => 1,:created_at => str,:category_id=>@type}).count
    end
    render
  end

end
