CoderetreatLive::Application.routes.draw do
  resources :coderetreats, only: [] do
    get :running_today, :on => :collection
  end

  resources :coderetreats, module: "admin", only: [] do
    get :manage, :on => :member
  end
end
