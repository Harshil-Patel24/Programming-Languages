#!/usr/bin/ruby

Dir.glob('//**/*.conf').each do |x|
	puts x
end

#Dir['**/*.conf']

#Dir.foreach("~"){ |x| if #{x}.match(/\.conf$/)  
