# README

This simple Kittens application was built to practice creating an API. It has a single table, Kittens, and the user can perform CRUD actions on the Kitten model.

This project was generated using Rails Scaffold, so the default controller actions and view files, complete with json.jbuilders were in place. 

RestClient was used to make a request to the server for a JSON file for the index page, and for the show page of a specific instance of the Kitten model, using :id. 

If I was to build this from scratch, and not rely on the default scaffold code to generate JSON output, I would do the following... 

**Kittens Controller**
Add code to provide both HTML and JSON responses to the #index and #show actions. For example:



```def index
  @kittens = Kitten.all

  respond_to do |format|
    format.html
    format.json { render :json => @kittens }
  end
end```



**Kitten Model**
Add code to the Kitten model to specify which attributes to include in the JSON file.



```def as_json(options={})
  {:name => self.name, 
   :age => self.age,
   :cuteness => self.cuteness, 
   :softness => self.softness }
end```




