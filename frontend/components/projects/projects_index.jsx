import React from 'react';
import ProjectIndexItem from './project_index_item';

class ProjectsIndex extends React.Component {
    componentDidMount() {
        this.props.fetchAllProjects();
    }

    render() {
        const { projects } = this.props;
        return (
            <div className='project-index-main'>
                    {
                        projects.map((project, idx) => (
                            <ProjectIndexItem
                                project={project}
                                key={idx}
                                />
                        ))
                    }
                
            </div>
        )
    }
}

export default ProjectsIndex;