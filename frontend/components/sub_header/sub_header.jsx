import React from 'react';
import Link from 'react-router-dom';

class SubHeader extends React.Component {

    render() {
        return (
            <div className='search'>
                <div className='search-menu'>
                    <a href="/"><img id="robot-icon" src="https://www.instructables.com/assets/img/instructables-logo-v2.png" alt="" /></a>
                    <h1 id='make'>Makeables</h1>
                    <button className='projects'>Projects</button>
                </div>
                <input type="text" id="search-field" placeholder="Let's make something..."/>
            </div>

        )
    }
}

export default SubHeader;
