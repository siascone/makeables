import React from 'react';

class UserDropdwon extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            cName: true,
        };
        this.click = this.click.bind(this);
    }

    click(e) {
        e.preventDefault();
        this.setState({cName: !this.state.cName});
    }

    render() {
        let cName = this.state.cName ? 'hide-user-dropdown' : 'show-user-dropdown';
        return (
            <div>
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
                        
                        <button className='new-project'>New Makeable</button>
                    </div>
                </div>
            </div>
        )
    }
}

export default UserDropdwon;