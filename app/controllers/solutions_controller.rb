get '/solutions' do
  @menu = params[:menu]
  @hotspot = Hotspot.find_by(name: params[:hs])
  erb :'solutions/index'
end

get '/solutions/:id' do
  @solution = Solution.find(params[:id])
  @symptom = @solution.symptom
  @category = @symptom.category
  @tools = list_tools(@solution)
  erb :'solutions/show'
end
