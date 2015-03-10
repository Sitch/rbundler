require 'rserve/simpler'

module RBundler
  class REPL

    def initialize
      @r = Rserve::Simpler.new
    end

    def r_version
      @r >> 'package_version(R.version);'
    end

    def package_version(package)
      @r >> "packageVersion('#{package}')"
    end

    def install_package(package)
      @r >> "install.packages('#{package}')"
    end

    # http://www.ats.ucla.edu/stat/r/faq/packages.htm
    def package_installed?(package)
      @r >> "is.element('#{package}', installed.packages()[,1])"
    end

    # http://www.inside-r.org/r-doc/utils/update.packages
    def update_package(package)
    end

end