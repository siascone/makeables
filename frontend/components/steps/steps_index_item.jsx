import React from 'react';
// import { Link } from 'react-router-dom';

const StepsIndexItem = props => {
    return (
        <div>
            <div>
                <p>{props.heading}</p>
                <p>{props.body}</p>
            </div>
        </div>
    )
};

export default StepsIndexItem