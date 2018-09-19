function mysteryScoping1() {
  var x = 'out of block';
  if (true) {
    var x = 'in block';
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping2() {
  const x = 'out of block';
  if (true) {
    const x = 'in block';
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping3() {
  const x = 'out of block';
  if (true) {
    var x = 'in block';
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping4() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping5() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  let x = 'out of block again';
  console.log(x);
}

// console.log("1")
// mysteryScoping1()
// console.log("2")
// mysteryScoping2()
// console.log("3")
// mysteryScoping3()
// console.log("4")
// mysteryScoping4()
// console.log("5")
// mysteryScoping5()

function madLib(verb, adj, noun) {
  console.log(`We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}.`);
}
madLib('make', 'best', 'guac');

let isSubstring = (string, substr) => {
  return string.indexOf(substr) >= 0;
}

console.log(isSubstring("time to program", "time"));
console.log(isSubstring("Jump for joy", "joys"));

let fizzBuzz = (array) => {
  return array.filter( (x) => {
    return x % 3 == 0 || x % 5 == 0;
  })
}

console.log( fizzBuzz([1, 3, 5, 6, 7, 10, 6]) );

let isPrime = (n) => {
  if ( n == 2 ) {
    return true;
  } else if ( n == 1 || n == 0 || n % 2 == 0 ) {
    return false;
  } else {
    for ( let i = 3; i < n ; i+=2 ) {
      if ( n % i == 0 ) {
        return false
      }
    }
  }
  return true;
}

console.log(isPrime(2));
console.log(isPrime(10));
console.log(isPrime(15485863));
console.log(isPrime(3548563));

let firstNPrimes = (n) => {
  primes = [];
  let i = 2;
  while ( primes.length < n ) {
    if ( isPrime(i) ) {
      primes.push(i);
    }
    i++;
  }
  return primes;
}

console.log(firstNPrimes(0));
console.log(firstNPrimes(5));

let sumOfNPrimes = (n) => {
  return firstNPrimes(n).reduce( (acc, curr) => {
    return acc += curr
  }, 0);
}

console.log(sumOfNPrimes(0));
console.log(sumOfNPrimes(1));
console.log(sumOfNPrimes(4));
