Create a note taking app using Nodejs. Your program should use the command
line as its interface and meet the following requirements:

Commands

add

- The add command should add a new note into your list of notes. You should
 call the add function by typing the following into the terminal:

    node app.js add --title="new note" --body="This is my note"

- If the note was added successfully, print out to the user: "Note added".
 If the note title already exists, print "Note already exists".
 If they didn't provide a title and/or a body, then print "Incorrect note format.
  Please provide both a title and a body for your note."

list

- The list command should list all of the titles and bodies of the notes you already have.
For example:

    node app.js list

    Title                    Body

    First note            This is my first note.

    Groceries            Milk, eggs, flour

    another note       I love writing notes!!!

read

- The read command should retrieve a note by its title and display both the note's title and body.

    node app.js read --title="Groceries"

    Groceries         Milk, eggs, flour

- If a note by that name does not exist, then print "A note with this title does not exist".

remove

- The remove command should remove a note by its title.

    node app.js remove --title="Groceries"

- If the note is found and removed, then print "Note removed".
If a note with that title does not exist,
 then print "A note with this title does not exist".
