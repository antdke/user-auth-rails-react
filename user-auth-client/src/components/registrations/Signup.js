// TODO: Refactor this component and Login.js using HOC
import React, { Component } from 'react';
import axios from 'axios';
import { Link } from 'react-router-dom';

class Signup extends Component {
  constructor(props) {
    super(props);
    this.state = {
      username: '',
      email: '',
      password: '',
      password_confirmation: '',
      errors: '',
    };
  }

  handleChange = event => {
    const { name, event } = event.target;
    this.setState({
      [name]: value,
    });
  };

  handleChange = event => {
    event.preventDefault;
  };

  render() {
    const { username, email, password, password_confirmation } = this.state;

    return (
      <div>
        <h1>Log In</h1>

        <form onSubmit={this.handleSubmit}>
          <input
            placeholder="username"
            type="text"
            name="username"
            value={username}
            onChange={this.handleChange}
          />
          <input
            placeholder="email"
            type="text"
            name="email"
            value={email}
            onChange={this.handleChange}
          />
          <input
            placeholder="password"
            type="password"
            name="password"
            value={password}
            onChange={this.handleChange}
          />

          <input
            placeholder="password confirmation"
            type="password"
            name="password_confirmation"
            value={password_confirmation}
            onChange={this.handleChange}
          />

          <button placeholder="submit" type="submit">
            Sign Up
          </button>

          <div>
            Already have an account? <Link to="/login">Log In</Link>
          </div>
        </form>
      </div>
    );
  }
}

export default Login;
