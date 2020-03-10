import React from 'react';
import ProjectIndexItem from './project_index_item';

class ProjectsIndex extends React.Component {
    componentDidMount() {
        this.props.fetchAllProjects();
    }

    render() {
        const { projects } = this.props;
        return (
            <div>
                <h1>Projects</h1>
                <ul>
                    {
                        projects.map((project, idx) => (
                            <ProjectIndexItem
                                project={project}
                                key={idx}
                                />
                        ))
                    }
                </ul>
            </div>
        )
    }
}

export default ProjectsIndex;