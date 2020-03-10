import React from 'react';
import {Redirect, withRouter} from 'react-router-dom';

class UserDropdwon extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            cName: true,
        };
        this.click = this.click.bind(this);
        this.newProject = this.newProject.bind(this);
    }

    newProject(e) {
        e.preventDefault();
        // debugger
        
        this.setState({ cName: !this.state.cName }, 
            () => {
                // debugger
                this.props.history.push('/projects/new');
            });
    }

    click(e) {
        e.preventDefault();
        this.setState({cName: !this.state.cName});
    }

    render() {
        let cName = this.state.cName ? 'hide-user-dropdown' : 'show-user-dropdown';
        return (
            <div className='profile-icon'>
                <a  onClick={this.click}>
                    <img className='user-menu-button' src="https://www.instructables.com/assets/img/default/user.TINY.png" width="28px" height="28px"/>
                </a>
                <div className={cName}>
                    <div className='links-logout'>
                        <div className='user-links'>
                            <li>Profile</li>
                        </div>
                        <button className='logout-button' onClick={this.props.logout}>Log Out</button>
                    </div>
                    <div className='user-makables'>
                            <a>Makables <li className='project-count'>0</li></a>
                        <button onClick={this.newProject} className='new-project'>New Makeable</button>
                    </div>
                </div>
            </div>
        )
    }
}

export default withRouter(UserDropdwon);