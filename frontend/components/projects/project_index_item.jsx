import React from 'react';
import { Link } from 'react-router-dom';

const ProjectIndexItem = props => {
        let image
        if (props.project.photoUrl) {
            image = <img src={props.project.photoUrl} alt="" />
        } else {
            image = <p>Image not Rendered</p>
        }
    return (
        <div className='project-index-individual'>
            <div className='project-index-image'>
                {image}
            </div>
            <div className='project-index-details'>
                <Link to={`/projects/${props.project.id}`}>{props.project.title}</Link>
                <p>by: {props.user.username}</p>
            </div>
        </div>
    )
};

export default ProjectIndexItem;
