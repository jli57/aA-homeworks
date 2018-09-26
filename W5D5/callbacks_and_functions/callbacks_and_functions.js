// // Simple Timeout
// window.setTimeout(() => alert('HAMMERTIME') , 5000);
//
// // Timeout Plus Closure
// let hammerTime = (time) => {
//   window.setTimeout(() => alert(`${time} is hammertime!`), time)
// }

// Some tea? Some biscuits?
//
// const readline = require('readline');
//
// const reader = readline.createInterface({
//   input: process.stdin,
//   output: process.stdout
// });

function teaAndBiscuits () {
  let first, second;

  let askQuestion = (item) => {
    return `Would you like some ${item}?\n`
  };

  let askTeaAskBiscuits = (callback) => {
    reader.question(askQuestion('tea'), (res1) => {
      reader.question(askQuestion('biscuits'), (res2) => {
        first = res1;
        second = res2;
        callback();
      })
    });
  }

  let finishFn = () => {
    const firstRes = (first === 'yes') ? 'do' : 'don\'t';
    const secondRes = (second === 'yes') ? 'do' : 'don\'t';
    console.log(`So you ${firstRes} want tea and you ${secondRes} want biscuits.`);
    reader.close();
  }

  askTeaAskBiscuits( finishFn );
}

// teaAndBiscuits();

// Ways to Call a Function

function Cat () {
  this.name = 'Markov';
  this.age = 3;
}

function Dog () {
  this.name = 'Noodles';
  this.age = 4;
}

Dog.prototype.chase = function (cat) {
  console.log(`My name is ${this.name} and I'm chasing ${cat.name}! Woof!`)
};

const Markov = new Cat ();
const Noodles = new Dog ();

// Noodles.chase(Markov);
// Noodles.chase.call(Markov, Noodles);
// Noodles.chase.apply(Noodles, [Markov]);


function Test() {
  this.name = 'Test';
}

const t = new Test ();
console.log(t.name);
