class RankingController < ApplicationController
  def have
    ids = Have.group(:item_id).order('count_item_id desc').limit(10).count(:item_id).keys
    # have_countの多い順にlimit(10)
    @ranking_haves = Item.find(ids).sort_by {|item| ids.index(item.id) }
  end
  
  def want
    ids = Want.group(:item_id).order('count_item_id desc').limit(10).count(:item_id).keys
    # want_countの多い順にlimit(10)
    @ranking_wants = Item.find(ids).sort_by {|item| ids.index(item.id) }
  end
  
end
