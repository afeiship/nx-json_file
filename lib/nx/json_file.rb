require "nx"
require "json"

module Nx
  class JsonFile
    attr_accessor :filename, :json

    def initialize(filname)
      self.filename = filname
      self.load
    end

    def load
      self.json = JSON.parse File.read(self.filename)
    end

    def update(path, value)
      self.json.set(path, value)
    end

    def save(target)
      File.write(target, JSON.pretty_generate(self.json))
    end
  end
end
