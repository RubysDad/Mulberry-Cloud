class PagesController < ApplicationController
  def home
    @posts = Blog.all
    @skills = Skill.all
  end

  def about
    @skills = Skill.all
  end

  def contact
  end
  
  def realtor_news
    @tweets = SocialTool.twitter_search
  end
end
