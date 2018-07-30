require 'sinatra'
require_relative "randompairing.rb"
enable :sessions


get '/' do
  product = session[:product] || []
  grouped_names = ''
  brake = '<br>'
  product.each do |i|
    unless i.is_a?(Array)
      grouped_names += i
    else
      groups = i.join(' ')
      grouped_names += groups
    end
    grouped_names += brake
  end


  erb :random_pair, locals:{product: product, grouped_names: grouped_names}
end



post '/randomocity' do
  name = params[:names] || []
  if name.include?("")
    while name.include?("")
      del = name.index("")
      name.delete_at(del)
    end
  end
  product = pairing_names(name)
  session[:product] = product
  redirect '/'
end

