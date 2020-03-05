import React from 'react';

const HomePage = () => (
    <div className='home'>
        <div className='home-image'>
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQMymckr0FOcHKQ_cSKcctL6cI5UW7T6eJehJKToC76Bkc0KmFc" alt="" />
        </div>
        <br/>
        <div>
            <p>Some text over pictrue</p>
        </div>
        <br/>
        <div>
            <p>step by step blerb</p>
            <p>made by you blerb</p>
            <p>a happy place blerb - flexwrap these 3 p's</p>
        </div>
        <br/>
        <div>
            <label>Explore projects</label>
            <div>
                <a><li>Here is a project</li></a>
                <a><li>Here is a project</li></a>
                <a><li>Here is a project</li></a>
                <a><li>Here is a project</li></a>
                <a><li>Here is a project</li></a>
                <a><li>Here is a project</li></a>
                <a><li>we are to be flexwrapped</li></a>
            </div>
        </div>
        
    </div>
)

export default HomePage;