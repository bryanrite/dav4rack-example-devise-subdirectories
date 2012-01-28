# lib/sub_domain.rb
class NotDav
  
  def self.matches?(request)
    request.subdomain != 'webdav'  
  end
  
end