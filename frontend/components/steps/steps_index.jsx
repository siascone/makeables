import React from 'react';
import StepsIndexItem from './steps_index_item';

class StepsIndex extends React.Component {
    componentDidMount() {
        this.props.fetchAllSteps(this.props.projectId);
    }

    render() {
        if (this.props.steps.length <= 1) {
            return null;
        }

        const { steps } = this.props;
        return (
            <div>
                test
                {
                    steps.map((step, idx) => (
                        <StepsIndexItem
                            step={step}
                            project={projects[step.project_id]}
                            key={idx}
                        />
                    ))
                }
            </div>
        )
    }
}

export default StepsIndex