module RBundler
  class DSL
    def source(_src)
    end

    def rversion(_version)
    end

    def rpkg(_name, _options = {})
    end

    def group(_env, _options = {})
      yield
    end
  end
end
