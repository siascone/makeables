import React from 'react';

class Footer extends React.Component {
    render() {
        return (
            <div className="footer">
                <div className='footer-row1'>
                    <div className='icon'>
                        <img src="https://www.instructables.com/assets/img/instructables-logo-v2.png" alt="" />
                        {/* <a>Find Us</a> */}
                    </div>
                    <div className='contact'>
                        <h3>Spencer Iascone</h3>
                        <li>spencer.iascone@gmail.com</li>
                        <li><a href='http://spenceriascone.com/'>spenceriascone.com</a></li>
                    </div>
                    <div className='links'>
                        <h3>My Sites</h3>
                        <a href='https://github.com/siascone'><i className="fab fa-github"></i>GitHub</a>
                        <a href='https://www.linkedin.com/in/spencer-iascone-56b28b62'><i className="fab fa-linkedin"></i>LinkedIn</a>
                        <a href="https://angel.co/u/spencer-iascone"><i className="fab fa-angellist"></i>AngelList</a>
                    </div>
                </div>
                {/* <div className='footer-row1'>
                </div> */}
            </div>
        )
    }
}

export default Footer;