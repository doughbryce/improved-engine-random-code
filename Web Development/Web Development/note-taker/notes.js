const fs = require('fs');
// Functions - add
const fetchNotes = () => {
  try {
    const notesString = fs.readFileSync("notes-data.json");
    return JSON.parse(notesString);
  } catch (e) {
    return [];
  }
}
const saveNotes = (notes) => {
  fs.writeFileSync("notes-data.json", JSON.stringify(notes));
}
const addNote = (title, body) => {
  const note = {
    title,
    body
  }
  const notes = fetchNotes();
  if (notes.every(n => n.title != note.title)) {
    notes.push(note);
    saveNotes(notes)
    return true;
  } else {
    return false;
  }
}
// Functions - list
const listNote = () => {
  const allNotes = fetchNotes();
  const titles = Object.values(allNotes);
  titles.map(x => {
    displayNote(x);
  })
}
const displayNote = (notesObj) => {
    console.log("-----------");
    console.log('Title: ' + notesObj.title);
    console.log('Body: ' + notesObj.body);
}
// Functions - read
const readNote = () => {
  const name = process.argv[4];
  const notes = fetchNotes();
  notes.map(x => {
    if (x.title === name) {
      displayNote(x);
    }
  })
}
// Function - remove
const removeNote = () => {
  const name = process.argv[4];
  const notes = fetchNotes();
  // console.log(notes);
  notes.map(x => {
    const index = notes.indexOf(x);
    if (x.title === name) {
      // Broken | cannot figure out why | fails silently
      notes.splice(index, 1);
    }
  })
}
module.exports = {
  addNote,
  listNote,
  removeNote,
  readNote
}
