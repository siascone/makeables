import React from 'react';
import { Link } from 'react-router-dom';

class ProjectShow extends React.Component {
    componentDidMount() {
        this.props.fetchProject(this.props.match.params.id);
    }

    render() {
        const {project, username} = this.props;
        
        if (!project) return null;
        return (
            <div className='project-show-main'>
                <div className='project-show-title-by'>
                    <h1>{project.title}</h1>
                    <h2>by {username} </h2>
                </div>
                <div className='project-show-image'>
                    <img src={project.photoUrl} alt=""/>
                </div>
                <div className='project-show-description'>
                    <p>{project.description}</p>
                </div>
                <div className='project-show-steps'>
                    ---steps will go here---
                </div>
            </div>
        )
    }
}

export default ProjectShow;