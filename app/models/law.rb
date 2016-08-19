class Law

  attr_accessor :title, :body

  def initialize(title:, body: nil)
    @title = title
    @body = body
    validate!
  end

  private

  # * validate title
  def validate!
    raise ArgumentError.new('Title is nil!') if @title.nil?
  end

end