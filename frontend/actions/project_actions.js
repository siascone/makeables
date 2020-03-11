import React from 'react';
import * as ProjectsApiUtil from '../util/projects_api_util';

export const RECEIVE_ALL_PROJECTS = 'RECEIVE_ALL_PROJECTS';
export const RECEIVE_PROJECT = 'RECEIVE_CURRENT_PROJECT';
export const REMOVE_PROJECT = 'REMOVE_PROJECT';
export const RECEIVE_ERRORS = 'RECEIVE_ERRORS';
export const CLEAR_ERRORS = 'CLEAR_ERRORS';

const receiveAllProjects = (projects) => ({
    type: RECEIVE_ALL_PROJECTS,
    projects
});
const receiveProject = (payload) => ({
    type: RECEIVE_PROJECT,
    payload
});
const removePorject = (projectId) => ({
    type: REMOVE_PROJECT,
    projectId
});
const receiveErrors = (errors) => ({
    type: RECEIVE_ERRORS,
});
export const clearErrors = () => ({
    type: CLEAR_ERRORS,
});

export const fetchAllProjects = () => dispatch => {
    return ProjectsApiUtil.fetchAllProjects()
        .then((projects) => dispatch(receiveAllProjects(projects)));
};

export const fetchProject = (projectId) => dispatch => {
    return ProjectsApiUtil.fetchProject(projectId)
        .then((payload) => dispatch(receiveProject(payload)));
};

export const createProject = (project) => dispatch => {
    return ProjectsApiUtil.createProject(project)
        .then((project) => dispatch(receiveProject(project)), (errors) => dispatch(receiveErrors(errors.responseJSON)));
};

export const updateProject = (project) => dispatch => {
    return ProjectsApiUtil.updateProject(project)
    .then((project) => dispatch(receivePorject(project)), (errors) => dispatch(receiveErrors(errors.responseJSON)));
};

export const deleteProject = (projectId) => dispatch => {
    return ProjectsApiUtil.deleteProject(projectId)
        .then((project) => dispatch(removePorject(project.id)), (errors) => dispatch(receiveErrors(errors.responseJSON)));
};

