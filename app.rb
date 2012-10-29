class App
  def self.call(env)
    new(env).response.finish
  end

  def initialize(env)
    @request = Rack::Request.new(env)
  end

  def response
    case @request.path
    when "/" then Rack::Response.new(body)
    else Rack::Response.new("NOT FOUND", 404)
    end
  end

  def body
    "Hello World!"
  end
end
