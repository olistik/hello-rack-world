class Middlewares
  def initialize(context)
    context.instance_exec do
      if ENV['RACK_ENV'] == 'development'
        use Rack::Reloader, 0
      end
    end
  end
end

