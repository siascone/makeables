import React from 'react';
import * as ProjectsApiUtil from '../util/projects_api_util';

export const RECEIVE_ALL_PROJECTS = 'RECEIVE_ALL_PROJECTS';
export const RECEIVE_USER_PROJECTS = 'RECEIVE_USER_PROJECTS';
export const RECEIVE_PROJECT = 'RECEIVE_CURRENT_PROJECT';
export const REMOVE_PROJECT = 'REMOVE_PROJECT';
export const RECEIVE_ERRORS = 'RECEIVE_ERRORS';
export const CLEAR_ERRORS = 'CLEAR_ERRORS';

const receiveAllProjects = (payload) => ({
    type: RECEIVE_ALL_PROJECTS,
    payload
});
const receiveProject = (payload) => {
    return {
        type: RECEIVE_PROJECT,
        payload
    }
};
const removeProject = (projectId) => ({
    type: REMOVE_PROJECT,
    projectId
});
const receiveErrors = (errors) => {
    return {
        type: RECEIVE_ERRORS,
        errors
    }
};
export const clearErrors = () => ({
    type: CLEAR_ERRORS,
});

export const fetchAllProjects = () => dispatch => {
    return ProjectsApiUtil.fetchAllProjects()
        .then((payload) => dispatch(receiveAllProjects(payload)));
};

export const fetchProject = (projectId) => dispatch => {
    return ProjectsApiUtil.fetchProject(projectId)
        .then((payload) => dispatch(receiveProject(payload)));
};

export const createProject = (project) => dispatch => {
    return ProjectsApiUtil.createProject(project)
    .then(res => {
            dispatch(receiveProject(res))
            return res.project
        }, (errors) => {
            dispatch(receiveErrors(errors.responseJSON))
        });
};

export const updateProject = (project, projectId) => dispatch => {
    return ProjectsApiUtil.updateProject(project, projectId)
    .then((res) => {
        dispatch(receiveProject(res))
        return res.project
    }, (errors) => {
        dispatch(receiveErrors(errors.responseJSON));
    });
};

export const deleteProject = (projectId) => dispatch => {
    return ProjectsApiUtil.deleteProject(projectId)
        .then((project) => {
            return (
                dispatch(removeProject(project.project.id))
            )
        });
};

