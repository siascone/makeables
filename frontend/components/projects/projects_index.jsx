import React from 'react';
import ProjectIndexItem from './project_index_item';

class ProjectsIndex extends React.Component {
    componentDidMount() {
        this.props.fetchAllProjects();
    }

    render() {
        if (this.props.projects.length <= 1) {
            return null;
        }
        const { projects, users } = this.props;
        return (
            <div className='project-index-main'>
                    {
                        projects.map((project, idx) => (
                            <ProjectIndexItem
                                project={project}
                                user={users[project.user_id]}
                                key={idx}
                                />
                        ))
                    }
                
            </div>
        )
    }
}

export default ProjectsIndex;