import React from 'react';
import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom'
import Step from './add_step';
import { createStep, clearErrors } from '../../actions/step_actions';

const msp = (state, ownProps) => {
    return {
        project_id: ownProps.match.params.id,
        errors: Object.values(state.errors.steps)
    }
};

const mdp = dispatch => ({
    createStep: step => dispatch(createStep(step)),
    clearErrors: () => dispatch(clearErrors()),
});

export default withRouter(connect(msp, mdp)(Step))