Rails.application.routes.draw do
 
  get ("/") , { :controller => "casino" , :action => "slots"}

  get ("/dice/2/6") , { :controller => "casino" , :action => "cards"}

  get ("/dice/2/10") , { :controller => "casino" , :action => "bet"}

  get ("/dice/1/20") , { :controller => "casino" , :action => "jackpot"}

  get ("/dice/5/4") , { :controller => "casino" , :action => "blackjack"}
end
