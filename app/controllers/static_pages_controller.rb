class StaticPagesController < ApplicationController

  def home
  end

  def hello
    render html: "hello there"
  end
end
