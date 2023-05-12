// Run this example by adding <%= javascript_pack_tag 'hello_react' %> to the head of your layout file,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.

import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'
import Button from 'react-bootstrap/Button';
import { createRoot } from 'react-dom/client';
import axios from "axios";



const Hello = props => (
  <div><h5>Jobs</h5>
 
 </div>

)
const container = document.getElementById('divid');
const root = createRoot(container); // createRoot(container!) if you use TypeScript
root.render(<Hello/>);


class JobsContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      jobs: [],
    };
  }

  loadJobs() {
    axios
      .get("/jobs/10")
      .then((res) => {
        this.setState({ jobs: res.data });
        alert(res.data)
      })
      .catch((error) => console.log(error));
  }

 componentDidMount() {
    this.loadjobs();
  }

  render() {

     return(
      

    
  <p>
    <strong> Summmary: </strong>
    <label className="itemDisplay"> {@job.summmary} <label>

  </p> 

  
)
  }


