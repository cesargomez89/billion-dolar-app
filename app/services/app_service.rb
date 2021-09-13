class AppService
  def self.for(*args)
    new(*args).process
  end
end
