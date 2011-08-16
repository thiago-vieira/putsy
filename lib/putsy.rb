Kernel.module_eval do

  define_method :putsy do |obj|
    puts "\e[33m\e[1m#{obj.inspect}\e[0m"
  end

end

