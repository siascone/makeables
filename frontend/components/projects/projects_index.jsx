import React from 'react';
import ProjectIndexItem from './project_index_item';

class ProjectsIndex extends React.Component {
    constructor(props) {
        super(props)

        this.toTop = this.toTop.bind(this)
    }


    componentDidMount() {
        this.props.fetchAllProjects();
    }

    toTop() {
        $('html, body').scrollTop(0)
    }

    render() {
        if (this.props.projects.length <= 1) {
            return null;
        }
        const { projects, users, history} = this.props;
        return (
            <div className='project-index-main'>
                    {
                        projects.map((project, idx) => (
                            <ProjectIndexItem
                                project={project}
                                user={users[project.user_id]}
                                history={history}
                                toTop={this.toTop}
                                key={idx}
                                />
                        ))
                    }
                
            </div>
        )
    }
}

export default ProjectsIndex;