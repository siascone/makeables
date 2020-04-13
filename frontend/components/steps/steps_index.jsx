import React from 'react';
import StepsIndexItem from './steps_index_item';

class StepsIndex extends React.Component {
    componentDidMount() {
        return this.props.fetchAllSteps(this.props.projectId);
    }

    render() {
        const { steps, projectId } = this.props;

        if (this.props.steps.length <= 1) {
            return null;
        }

        return (

            <div>
                {
                    steps.map((step, idx) => (
                        <StepsIndexItem
                            step={step}
                            projectId={projectId}
                            key={idx}
                        />
                    ))
                }
            </div>
        )
    }
}

export default StepsIndex