# require 'rbundler/context'
# require 'rbundler/lock_down'

require 'pry'

module RBundler
  # def self.context
  #   @context ||= RBundler::Context.new
  # end

  # def self.setup_test
  #   context.classpath.require_test_classpath
  #   context.config
  # end

  # def self.require_r_pkgs
  #   if context.vendor.vendored?
  #     jars = context.vendor.require_r_pkgs
  #     if context.config.verbose
  #       warn "rbundler classpath:"
  #       jars.each do |path|
  #         warn "\t#{path}"
  #       end
  #     end
  #   elsif context.classpath.exists? && context.jarfile.exists_lock?
  #     require 'java'
  #     context.classpath.require_classpath
  #     if context.config.verbose
  #       warn "rbundler classpath:"
  #       JBUNDLER_CLASSPATH.each do |path|
  #           warn "\t#{path}"
  #       end
  #     end
  #     Jars.freeze_loading
  #   end
  # end

  # def self.install( debug = false, verbose = false )
  #   rbundler = RBundler::LockDown.new( context.config )
  #   msg = rbundler.lock_down( false, debug, verbose )
  #   puts msg if msg
  # end

  def self.setup
    puts '1231324234234234234'
    puts '1231324234234234234'
    puts '1231324234234234234'
    puts '1231324234234234234'
    puts '1231324234234234234'
    puts '1231324234234234234'
    binding.pry
    Dir.glob('~/Projects/genopedia/vendor/R_packages/*.tar.gz').select { |e| File.file? e }.each do |r_pkg_path|
      execute "R CMD INSTALL #{fetch(:deploy_to)}/current/#{r_pkg_path}"
      puts "Installed #{r_pkg_path}"
    end

    # Bundler.load.specs.each do |spec|
    #     jars = []
    #     spec.requirements.each do |rr|
    #       rr.split(/\n/).each do |r|
    #         jars << r if r =~ /^\s*(jar|pom)\s/
    #       end
    #     end
    #     unless jars.empty?
    #       pom = Pom.new(spec.name, spec.version, jars, "pom")
    #       aether.install(pom.coordinate, pom.file)
    #       unless @jarfile.locked?(pom.coordinate)
    #         aether.add_artifact(pom.coordinate)
    #       end
    #     end
    #   end

    # if context.config.skip
    #   warn "skip rbundler setup" if context.config.verbose
    # else
    #   require_r_pkgs
    # end
  end
end

Dir.glob('~/Projects/genopedia/vendor/R_packages/*.tar.gz').select { |e| File.file? e }.each do |r_pkg_path|
  execute "R CMD INSTALL #{fetch(:deploy_to)}/current/#{r_pkg_path}"
  puts "Installed #{r_pkg_path}"
end

RBundler.setup
