require 'sinatra'

get "/SurfandPaddle?/:blogtitle?" do
  posts = [
    {:id=>'HockingHills', :header=>'Hocking Hills'},
    {:id=> 'Chicago', :header=>'Chicago Trip'},
    {:id=>'LakeMohawk', :header=>'Lake Mohawk at Sunset'},
    {:id=>'Sedona', :header=>'Sedona, AZ'}
  ]
  params['blogtitle']= "Lauren's Blog"

  erb :index, :locals=> {:posts=>posts}
end

get "/BobsBlog?/:blogtitle?" do
  posts = [
    {:id=>'HockingHills', :header=>'Africa'},
    {:id=> 'Chicago', :header=>'Bobs Burgers'},
    {:id=>'LakeMohawk', :header=>'Alaska'},
    {:id=>'Sedona', :header=>'Hawaii'}
  ]
  params['blogtitle']= "Bobs Blog"

  erb :index, :locals=> {:posts=>posts}
end
