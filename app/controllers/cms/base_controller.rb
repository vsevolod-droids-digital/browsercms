class Cms::BaseController < ApplicationController
  include AuthenticatedSystem
  
  before_filter :login_required
  layout 'cms/application'
  
  verify :method => :post, :only => [:create]
  verify :method => :put, :only => [:update]
  verify :method => :delete, :only => [:destroy]

  helper Cms::ApplicationHelper
  include Cms::PathHelper
  helper Cms::PathHelper
  
  protected
  
    def redirect_to_first(*urls)
      urls.each do |url|
        unless url.blank?
          return redirect_to(url)
        end
      end
    end
end