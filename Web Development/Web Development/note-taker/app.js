const notes = require("./notes.js");
const yargs = require("yargs");
const titleOption = {
    describe: "Title of note",
    alias: "t",
    demandOption: true
  }
const argv = yargs
.command("add", "Adds a new note", {
  title: titleOption,
  body: {
    describe: "Body of note",
    alias: "b",
    demandOption: true
  }
})
.command("list", "Lists the note")
.command("remove", "Removes a note", {
  title: titleOption
})
.command("read", "Reads note", {
  title: titleOption
})
.argv;

const command = argv._[0];
if (command === "add") {
  const title = argv.title;
  const body = argv.body;
  const noteAdded = notes.addNote(title, body);
  if (noteAdded) {
    console.log("Your note was added");
  } else {
    console.log("Choose a different title");
  }
} else if (command === "list") {
  notes.listNote()
} else if (command === "read") {
  notes.readNote();
} else if (command === "remove") {
  notes.removeNote();
}
