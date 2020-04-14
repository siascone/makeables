import React from 'react';
import { Link, Redirect } from 'react-router-dom';
import StepsIndexContainer from '../steps/steps_index_container';


class ProjectShow extends React.Component {
    constructor(props) {
        super(props)

        this.remove = this.remove.bind(this);
    }

    componentDidMount() {
        this.props.fetchProject(this.props.match.params.id);
    }

    remove(e) {
        e.preventDefault();
        this.props.deleteProject(this.props.project.id)
            
                <Redirect to="/?#/projects/" />
    }

    render() {
        const {project, username, sessionId, userId} = this.props;
        let links
        if (sessionId === userId) {
            links = <div>
                <button onClick={this.remove}>Delete</button>
            </div>
        }
        
        if (!project) return null;
        return (
            <div className='project-show-main'>
                <div className='project-show-title-by'>
                    <h1>{project.title}</h1>
                    <h2>by {username} </h2>
                    <div>{links}</div>
                </div>
                <div className='project-show-image'>
                    <img src={project.photoUrl} alt=""/>
                </div>
                <div className='project-show-description'>
                    <p>{project.description}</p>
                </div>
                <div className='project-show-steps'>
                    <StepsIndexContainer />
                </div>
            </div>
        )
    }
}

export default ProjectShow;