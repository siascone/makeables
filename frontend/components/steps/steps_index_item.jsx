import React from 'react';
// import { debug } from 'webpack';
// import { Link } from 'react-router-dom';

const StepsIndexItem = props => {
    let id = props.step.id
    let numSteps = props.step.length
    if (props.step.project_id === props.projectId) {
        return (
            <div className='step-box'>
                <div className='step-item'>
                    <div className="heading-div">
                        <div className="heading">{props.step.heading}</div>
                    </div>
                    <div className='body'>{props.step.body}</div>
                </div>
                <br />
            </div>
        )
    } else {
        return null
    }
    
};

export default StepsIndexItem