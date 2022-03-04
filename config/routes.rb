Rails.application.routes.draw do
  pages = %w(about history mission philosophy)

  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    root 'pages#home'
    pages.each do |page|
      get "#{page}", to: "pages##{page}"
    end
    resources :pages, only: [:edit, :update, :show]
    post 'tinymce_assets', to: 'tinymce_assets#create'
    get 'login', to: 'sessions#new'
    post 'login', to: 'sessions#create'
    delete 'logout', to: 'sessions#destroy'
  end
  # match '*path', to: redirect("/#{I18n.default_locale}/%{path}")
  # match '', to: redirect("/#{I18n.default_locale}")

end
