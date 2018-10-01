const initialState = {
  city: "Please Select",
  jobs: []
};

const reducer = (state = initialState, action) => {
  // return state; // remove this and fill out the body of the reducer function
  switch(action.type) {
    case "SWITCH_LOCATION":
      return { jobs: action.jobs, city: action.city };
    default:
      return state;
  }

};

export default reducer;
