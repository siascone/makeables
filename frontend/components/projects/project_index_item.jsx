import React from 'react';
import { Link } from 'react-router-dom';

const ProjectIndexItem = props => (
    <div>
        <br/>
        <li>
            <Link to={`/projects/${props.project.id}`}>{props.project.title}</Link>
            <br/>
            <img src={props.project.photoUrl} alt=""/>
            <br/>
            {props.project.description}
            {/* <Link to={`/projects/${props.project.id}/edit`}>Edit</Link> */}
            {/* <br/> */}
            {/* <button onClick={() => props.deleteProject(props.projects.id)}>Delete Project</button> */}
        </li>
        <br/>
    </div>
);

export default ProjectIndexItem;
