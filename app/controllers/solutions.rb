get '/solutions' do
  @categories = Category.all
  erb :'solutions/index'
end

get '/solutions/:id' do
  @solution = Solution.find(params[:id])
  @symptom = @solution.symptom
  @category = @symptom.category
  @tools = list_tools(@solution)
  erb :'solutions/show'
end