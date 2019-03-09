require "nx"
require "json"

module Nx
  class JsonFile
    def initialize(filname)
      @filename = filname
      @json = nil
    end

    def load
      @json = JSON.parse File.read(@filename)
    end

    def update(path, value)
      @json.set(path, value)
    end

    def save(target)
      File.write(target, JSON.pretty_generate(@json))
    end
  end
end
