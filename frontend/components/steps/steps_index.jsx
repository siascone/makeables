import React from 'react';
import StepsIndexItem from './steps_index_item';
import { updateStep } from '../../util/steps_api_util';

class StepsIndex extends React.Component {
    constructor(props) {
        super(props)

        // this.state = {steps: this.props.steps}
    }

    componentDidMount() {
        return this.props.fetchAllSteps(this.props.projectId);
    }

    componentDidUpdate(prevProps) {
        if (prevProps.steps !== this.props.steps) {
            // this.setState({steps: prevProps.steps})
            this.props.fetchAllSteps(this.props.projectId)
        }
    }

    render() {
        const { steps, projectId, deleteStep, history, updateStep } = this.props;
        if (this.props.steps.length <= 1) {
            return null;
        }

        return (

            <div className="step-index-item">
                {
                    steps.map((step, idx) => (
                        <StepsIndexItem
                            step={step}
                            projectId={projectId}
                            deleteStep={deleteStep}
                            updateStep={updateStep}
                            history={history}
                            // handler={handler}
                            key={idx}
                        />
                    ))
                }
            </div>
        )
    }
}

export default StepsIndex