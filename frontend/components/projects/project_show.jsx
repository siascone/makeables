import React from 'react';
import { Link } from 'react-router-dom';

class ProjectShow extends React.Component {
    componentDidMount() {
        this.props.fetchProject(this.props.match.params.id);
    }

    render() {
        const {project} = this.props;
        
        if (!project) return null;
        
        return (
            <div>
                <h1>{project.title}</h1>
                <br/>
                <img src={project.photoUrl} alt=""/>
                <br />
                <p>{project.description}</p>
                <br />
                <Link to='/projects'>Projects Index</Link>
            </div>
        )
    }
}

export default ProjectShow;