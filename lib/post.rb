class Post

  attr_reader :title, :date, :text

  def initialize(title, text)
    @title = title
    @date = Time.now
    @text = text
  end
end

