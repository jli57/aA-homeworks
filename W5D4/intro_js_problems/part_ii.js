let titleize = (arr, callback) => {
  return arr.map( x => callback(x) );
}

let printCallback = (name) => {
  console.log(`Mr. ${name} Jingleheimer Schmidt`)
}

titleize(["Mary", "Brian", "Leo"], printCallback);

function Elephant (name, height, array_tricks) {
  this.name = name;
  this.height = height;
  this.tricks = array_tricks || [] ;
  this.trumpet = () => {
    console.log(`${name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!'`);
  }
  this.grow = () => {
    this.height += 12;
  }
  this.addTrck = (trick) => {
    this.tricks.push(trick);
  }
  this.play = () => {
    let random_trick = this.tricks[Math.floor(Math.random()*this.tricks.length)];
    console.log(`${this.name} is ${random_trick}`);
  }
}

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];

Elephant.paradeHelper = (elephant) => {
  console.log(`${elephant.name} is trotting by!`)
}

herd[0].play();
Elephant.paradeHelper(micah);
