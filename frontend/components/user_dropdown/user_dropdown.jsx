import React from 'react';
import {Redirect, withRouter} from 'react-router-dom';

class UserDropdwon extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            cName: true,
        };
        this.click = this.click.bind(this);
        this.handleModal = this.handleModal.bind(this);
    }

    handleModal(e) {
        e.preventDefault();
        // this.props.history.push('/projects/new');
        this.props.openModal();
    }

    click(e) {
        e.preventDefault();
        this.setState({cName: !this.state.cName});
    }



    render() {
        let cName = this.state.cName ? 'hide-user-dropdown' : 'show-user-dropdown';
        return (
            <div className='profile-icon'>
                <a onClick={this.click}>
                    <img className='user-menu-button' src="https://www.instructables.com/assets/img/default/user.TINY.png" width="28px" height="28px"/>
                </a>
                <div className={cName} onMouseLeave={this.click}>
                    <div className='links-logout'>
                        <div className='user-links'>
                            {/* <li>Profile</li> */}
                        </div>
                        <button className='logout-button' onClick={this.props.logout}>Log Out</button>
                    </div>
                    <div className='user-makeables'>
                            {/* <a>Makables <li className='project-count'>0</li></a> */}
                        <button onClick={this.handleModal} className='new-project'>New Makeable</button>
                    </div>
                </div>
            </div>
        )
    }
}

export default withRouter(UserDropdwon);
