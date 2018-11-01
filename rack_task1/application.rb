class MyApplication

	def call(env)
		case env['REQUEST_PATH']
	  when '/'
	    content = File.read('views/index.html')
	    content = ERB.new(content)
	    [200, {'Content-Type' => 'text/html'}, [content.result]]	
		end

	end
end