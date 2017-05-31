module DefaultPageContent
  extend ActiveSupport::Concern
  
  included do
    before_action :set_page_defaults
  end
  
  def set_page_defaults
    @page_title = "Jvaz"
    @seo_keywords = "JVAZ Portfolio"
  end
end
  

  

  