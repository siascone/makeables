import React from 'react';
import { Link } from 'react-router-dom';

const ProjectIndexItem = props => {
    return (
        <div className='project-index-individual'>
            <div className='project-index-image'>
                <img src={props.project.photoUrl} alt=""/>
            </div>
            <div className='project-index-details'>
                <Link to={`/projects/${props.project.id}`}>{props.project.title}</Link>
                <p>by: {props.user.username}</p>
            </div>
        </div>
    )
};

export default ProjectIndexItem;
