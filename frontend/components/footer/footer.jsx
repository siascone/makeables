import React from 'react';

class Footer extends React.Component {
    render() {
        return (
            <div className="footer">
                <div className='footer-row1'>
                    <div className='find-us'>
                        <img src="https://www.instructables.com/assets/img/instructables-logo-v2.png" alt="" />
                        <a>Find Us</a>
                    </div>
                    <div className='categories'>
                        <ul>
                            <a>Circuts</a>
                            <a>Workshop</a>
                            <a>Craft</a>
                            <a>Cooking</a>
                            <a>Living</a>
                            <a>Outside</a>
                            <a>Teachers</a>
                        </ul>
                    </div>
                    <div className='about-us'>
                        <ul>
                            <a>Who We Are</a>
                            <a>Why Publish</a>
                            <a>Jobs</a>
                        </ul>
                    </div>
                    <div className='resources'>
                        <ul>
                            <a>Sitemap</a>
                            <a>Help</a>
                            <a>Contact</a>
                        </ul>
                    </div>
                </div>
                <div className='footer-row1'>
                    <a>Terms of Service</a>
                    <a>Privacy Statement</a>
                    <a>Privacy Settings</a>
                    <a>Legal Notices and Trademarks</a>
                </div>
            </div>
        )
    }
}

export default Footer;