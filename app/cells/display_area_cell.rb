class DisplayAreaCell < Cell::Rails
  helper :application,:home
  def good(args)
    category=Category.find(args[:type])

    if category.mark=='alltype'
      #@shelves=Shelf.all
      
      unless params['k'] 
        @shelves=Shelf.paginate :page=>params[:page] ,:order=>'position desc',:per_page=>6 ,:conditions => ["state != -1"]
      else
        @shelves=Shelf.paginate :page=>params[:page] ,
                                :order=>'position desc',
                                :per_page=>6 ,
                                :conditions => ["state != -1 and title like ?",'%'<< params['k'].strip() <<'%']

      end

    else
      #@shelves=Shelf.find_all_by_category_id(args[:type])
      @shelves=Shelf.paginate :page=>params[:page] ,
                              :order=>'position desc',
                              :per_page=>6 ,
                              :conditions => ["category_id = ? and state != -1", "#{args[:type]}"]
    end
    render
  end

end
