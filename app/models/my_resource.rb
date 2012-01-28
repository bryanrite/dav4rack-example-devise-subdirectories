class MyResource < DAV4Rack::FileResource

  def root
    File.join(options[:root].to_s, user.id.to_s)
  end

  private
  
    def authenticate(username, password)
      self.user = User.find_by_username(username)
      user.try(:valid_password?, password)
    end  
    
end