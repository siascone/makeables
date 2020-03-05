import React from 'react';

class SessionForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            username: "",
            password: ""
        };
        this.handleSubmit = this.handleSubmit.bind(this);
        this.update = this.update.bind(this);
    }

    update(type) {
        return (e) => this.setState({
            [type]: e.currentTarget.value
        });
    }

    handleSubmit(e) {
        e.preventDefault();
        const user = Object.assign({}, this.state);
        this.props.processForm(user)
            .then(() => this.props.history.push('/'));
    }

    renderErrors() {
        return (
            <ul className='errors'>
                {this.props.errors.map((error, i) => (
                    <li key={`error ${i}`}>{error}</li>
                ))}
            </ul>
        );
    }

    render() {
        let message;
        if (this.props.formType === 'Login') {
            message = <div>
                        New to Makeables? {this.props.link}
                      </div>
        } else {
            message = <div>
                        Already a maker? {this.props.link}
                      </div>
        }
        return (
            <div className='wrapper-login'>
                <form className='login-form'>
                    <div className='input-fields'>
                        <label id='username'>
                            <input
                                type="text"
                                placeholder='username'
                                value={this.state.username}
                                onChange={this.update('username')}
                            />
                        </label>
                        <br />
                        <label id='password'>
                            <input
                                type="password"
                                placeholder='password'
                                value={this.state.password}
                                onChange={this.update('password')}
                            />
                        </label>
                    </div>
                    <br/>
                    <button className='login-submit' onClick={this.handleSubmit}>
                        {this.props.formType}
                    </button>
                    <br/>
                    <button className='demo' onClick={this.props.loginDemoUser}>Demo Login</button>
                    <br/>
                    {message}
                    {/* {this.props.formType} or {this.props.link} */}
                </form>
                {this.renderErrors()}
            </div>
        );
    }
}

export default SessionForm;