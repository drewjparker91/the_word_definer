# _The Word Definer_

_2 October 2020_

#### _Ruby Independent Project #2 (for Epicodus)_

#### By _**Drew Parker**_

## Description

_Make an application that contains a Word class. The homepage of the app should list all words. When a word is clicked, it should lead to a page with the word's definitions. Children should be able to add a word, and when viewing a word, be able to add, update or delete one or more definitions. This week you should deploy your application to Heroku so the kids can try it out!_

## Specifications
| Spec     | Behavior | Input    | Output   |
| -------- | -------- | -------- | -------- |
| 1 | Word.all returns an empty array when there are no words | no input | [] |
| 2 | #save saves a word | word=Word.new, word.save | [word] |
| 3 | Word.clear clears a word | Word.clear | [] |
| 4 | #find finds a word by id | word=Word.new, word2=Word.new, Word.find(2) | [word2] | 
| 5 | #== words are the same if they have the same attributes as another word| word="hello", word2="hello | word1 = word2 |
| 6 | #update_title updates a word | word=Hello, word.update_title("World") | word = "World" |
| 7 | #delete deletes a word by id | word1="Hello" & word2="World". word2.delete.  | word1 |
| 8 | Definition.all returns an empty array when there are no words | no input | [] |
| 9 | #save saves a definition |  definition=definition.new, definition.save | [definition] |
| 10 | Definition.clear clears a word | defintion="Word", definition.clear | [] |
| 11 | #find finds a definition by id | def=Definition.new, def2=Definition.new, Definition.find(2) | def2 |
| 12 |  #== definitions are the same if they have the same attributes as another definition | def="World", def2="World" | def1=def2 |
| 13 | #update_body updates a definition | def="World", def.update_body("Word") | def="Word" |
| 14 | #delete deletes a definition by id | def1="Hello" def2="World. def2.delete. | def1 |


## Setup/Installation Requirements

To Extend This Project:
* Clone this repository: https://github.com/drewjparker91/AnagramsAndAntigrams.git.
* Run "bundle" in the terminal to bundle the ruby gems
* Run "ruby app.rb" in the terminal
* the following URL will take you to the app: https://stark-lake-72503.herokuapp.com/

## Known Bugs
_There are no known bugs at this time._

## Technologies Used

* Ruby
* Ruby Gems: rspec, pry 
* Stack Overflow
* ruby-lang.org/en/documentation
* Heroku

### License

Copyright (c) 2020 **_Drew Parker_**

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.