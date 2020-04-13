import React from 'react';
// import { debug } from 'webpack';
// import { Link } from 'react-router-dom';

const StepsIndexItem = props => {
    let id = props.step.extract.id
    let numSteps = props.step.length
    // debugger
    if (props.step.extract.project_id === props.projectId) {
        // debugger
        return (
            <div className='step-box'>
                <div className='step-item'>
                    <div className="heading">{props.step.extract.heading}</div>
                    <div className='body'>{props.step.extract.body}</div>
                </div>
                <br />
            </div>
        )
    } else {
        // debugger
        return null
    }
    
};

export default StepsIndexItem