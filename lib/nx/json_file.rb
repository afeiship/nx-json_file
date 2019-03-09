require "nx"
require "json"

module Nx
  class JsonFile
    attr_accessor :filename, :json

    def initialize(filename)
      self.filename = filename
      self.load filename
    end

    def load(filename = nil)
      self.json = JSON.parse File.read(filname || self.filename)
    end

    def update(path, value)
      self.json.set(path, value)
    end

    def updates(hash)
      hash.each do |key, value|
        self.update(key, value)
      end
    end

    def save(target = nil)
      target ||= self.filename
      File.write(target, JSON.pretty_generate(self.json))
    end
  end
end
