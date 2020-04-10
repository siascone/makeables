import React from 'react';
// import { Link } from 'react-router-dom';

const StepsIndexItem = props => {
    return (
        <div>
            <div>
                <p>{props.step.extract.heading}</p>
                <p> - {props.step.extract.body}</p>
            </div>
            <br />
        </div>
    )
};

export default StepsIndexItem