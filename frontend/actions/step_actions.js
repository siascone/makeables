import React from 'react';
import * as StepsApiUtil from '../util/steps_api_util';

export const RECEIVE_ALL_STEPS = 'RECEIVE_ALL_STEPS'
export const RECEIVE_STEP = 'RECEIVE_STEP'
export const REMOVE_STEP = 'REMOVE_STEP'
export const RECEIVE_ERRORS = 'RECEIVE_ERRORS'
export const CLEAR_ERRORS = 'CLEAR_ERRORS'

const receiveAllSteps = (steps) => ({
    type: RECEIVE_ALL_STEPS,
    steps
});
const receiveStep = (step) => {
    return {
        type: RECEIVE_STEP,
        step
    }
};
const removeStep = (stepId) => ({
    type: REMOVE_STEP,
    stepId
});
const receiveErrors = (errors) => {
    return {
        type: RECEIVE_ERRORS,
        errors
    }
};

export const clearErrors = () => ({
    tyep: CLEAR_ERRORS,
})

export const fetchAllSteps = (projectId) => dispatch => {
    return StepsApiUtil.fetchAllSteps(projectId)
        .then((steps) => dispatch(receiveAllSteps(steps)));
};

export const fetchStep = (stepId) => dispatch => {
    return StepsApiUtil.fetchStep(stepId)
        .then((step) => dispatch(receiveStep(step)));
};

export const createStep = (step) => dispatch => {
    return StepsApiUtil.createStep(step)
        .then((res) => {
            dispatch(receiveStep(res.step))
            return res.step;
        })
};

export const updateStep = (step, projectId) => dispatch => {
    return StepsApiUtil.updateStep(step, projectId)
        .then((step) => dispatch(receiveStep(step)));
};

export const deleteStep = (stepId) => dispatch => {
    return StepsApiUtil.deleteStep(stepId)
        .then((step) => {
            return (
                dispatch(removeStep(step.step.id))
            )
        });
};
