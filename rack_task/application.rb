class MyApplication
	# def call(env, &block)
	def call(env)
		case env['REQUEST_PATH']
	  when '/'
	    content = File.read('views/index.html')
	    content = ERB.new(content)
	    [200, {'Content-Type' => 'text/html'}, [content.result]]	
		end

		# def call1(&block)
		#   content = ERB.new(content)
		#   call1 = call1.to_i
		#   block.call1
		# end
	end
end

