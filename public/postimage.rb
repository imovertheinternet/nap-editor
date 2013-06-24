#url
#postdata: originalName
post "/save" do
    #original photo name is postdata
    orig_name = params[:postdata]
    new_name = orig_name + " (edited with Aviary)"
    # Retrieve a file object from the image URL
    image_from_web  = open(params[:url]) {|f| f.read }
    # get file name from URL
    file_name = params[:url].split("/").pop()
    # Write the file to the local filesystem
	Dir.mkdir(ENV["TMPDIR"]) unless (File.exists?(ENV["TMPDIR"]) && File.directory?(ENV["TMPDIR"]))
    Dir.chdir("TMPDIR")
    File.open(file_name, 'w') {|f| f.write(image_from_web) }
    Dir.chdir("../")

end
