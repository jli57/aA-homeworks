import React from 'react';
import GiphysIndex from './giphys_index';

class GiphysSearch extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      searchTerm: ""
    };
  }

  handleChange(e) {
    e.preventDefault();
    const searchTerm = e.target.value;
    this.setState({searchTerm});
  }

  handleSubmit(e) {
    e.preventDefault();
    const searchTerm = this.state.searchTerm.split(" ").join("+");
    this.props.fetchSearchGiphys(searchTerm);
  }

  render() {
    return (
    <div>
      <form >
        <input onChange={this.handleChange.bind(this)} value={this.state.searchTerm}></input>
        <input onClick={this.handleSubmit.bind(this)} type="submit"  value="Search Giphys"></input>
      </form>
      <GiphysIndex giphys={this.props.giphys} />
    </div>
    )
  }
}

export default GiphysSearch;
