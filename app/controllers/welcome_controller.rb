class WelcomeController < SecuredController
  
  def index
    render text: "hello, world!"
  end
  
end


