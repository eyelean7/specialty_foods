# Story Time

### Core Functionality
- [x] Story Class: title (has many sentences)
- [x] Sentence Class: content, author (belongs to story, belongs to image)
- [x] Image Class: link (has many sentences)
- [x] CRUD for stories
- [x] CRUD for sentences
- [x] Roll dice for random image
- [] Validation for sentence
- [] Scopes
- [] Integration tests


### Further Exploration
- [] Custom CSS styling
- [] User Class
- [] Login functionality
- [] Searches

### Notes
* To randomly select an image from app/assets/images:
  * Dir.new(Rails.root.to_s + "/app/assets/images").to_a.select{|f|    f.downcase.match(/\.jpg|\.jpeg|\.png/) }.sample
* To pass image path in params:
  * <%= hidden_field_tag 'image', @image %>
