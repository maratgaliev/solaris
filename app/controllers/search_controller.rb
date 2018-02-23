class SearchController < ApplicationController
  def index
    @search = Post.search do
      keywords(params[:q])
		end
	end
	
	def perform
		@search = Post.search do
      keywords(params[:q])
    end
	end
	# def search
	# 	page_size = 10

	# 	@search = Post.solr_search do
	# 		keywords params[:q] do
	# 			boost_fields name: 10.0, user: 4.0
	# 		end

	# 		with :include_search, true
	# 		paginate page: params[:page], per_page: page_size
	# 	end

	# 	@results = @search.results

	# 	@total = @search.total
	# 	@paging = @total > page_size
	# 	@start = (@search.current_page - 1) * page_size + 1
	# 	@end = [@start + page_size - 1, @total].min

	# 	render (if @results.empty? then :no_results else :results end)
	# end

end