require 'fileUtils'

fileDiffArray = []
["rb", "xml"].each do |param|
	p4IntPath = Dir.glob("C:/p4/test/06_3/int/TestScripts/**/*{#{param}}")
	p4IntPath.each do |fileName|
		teamPath = fileName.gsub("/int/", "/team/")
		if File.file?(teamPath)
			checkIdentical = FileUtils.identical?(fileName, teamPath)
			fileDiffArray << teamPath unless (checkIdentical)
		else
			puts "File not present in teamPath #{teamPath}"
		end
	end
end
puts fileDiffArray