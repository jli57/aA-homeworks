import React from 'react';

class Calculator extends React.Component{
  constructor(props){
    super(props);
    this.state = { result: 0, num1: "", num2: ""};
    this.setNum1 = this.setNum1.bind(this);
    this.setNum2 = this.setNum2.bind(this);
    this.operate = this.operate.bind(this);
  }

  //your code here
  setNum1(e) {
    e.preventDefault();
    const num1 = parseInt(e.target.value) || "";
    this.setState({num1});
  }
  setNum2(e) {
    e.preventDefault();
    const num2 = parseInt(e.target.value) || "";
    this.setState({num2});
  }

  operate(e) {
    console.log(this.state);
    e.preventDefault();
    let {result, num1, num2} = this.state;
    switch( e.target.id ) {
      case "add":
        result = num1 + num2;
        break;
      case "minus":
        result = num1 - num2;
        break;
      case "multiply":
        result = num1 * num2;
        break;
      case "divide":
        result = num1 / num2;
        break;
      case "clear":
        result = 0;
        break;
      default:
        break;
    }
    [num1, num2] = ["", ""];
    this.setState({result, num1, num2});
  }

  render(){
    return (
      <div>
        <h1>{ this.state.result }</h1>
        <input type="text" onChange={ this.setNum1 } value={ this.state.num1 }></input>
        <input type="text" onChange={ this.setNum2 } value={ this.state.num2 }></input>
        <br />
        <button id="add" onClick={ this.operate }>+</button>
        <button id="minus" onClick={ this.operate }>-</button>
        <button id="multiply" onClick={ this.operate }>*</button>
        <button id="divide" onClick={ this.operate }>/</button>
        <button id="clear" onClick={ this.operate }>Clear</button>
      </div>
    );
  }
}

export default Calculator;
