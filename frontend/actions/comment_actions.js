import React from 'react';
import * as CommentsApiUtil from '../util/comments_api_util';

export const RECEIVE_ALL_COMMENTS = 'RECEIVE_ALL_COMMENTS';
export const RECEIVE_COMMENT = 'RECEIVE_COMMENT';
export const REMOVE_COMMENT = 'REMOVE_COMMENT';
export const RECEIVE_ERRORS = 'RECEIVE_ERRORS';
export const CLEAR_ERRORS = 'CLEAR_ERRORS';

const receiveAllComments = (comments) => ({
    type: RECEIVE_ALL_COMMENTS,
    comments
});
const reciveComment = (comment) => {
    return {
        type: RECEIVE_COMMENT,
        comment
    }
};
const removeComment = (commentId) => ({
    type: REMOVE_COMMENT,
    commentId
});
const receiveErrors = (errors) => ({
    type: RECEIVE_ERRORS,
    errors
});
export const clearErrors = () => ({
    type: CLEAR_ERRORS
});

export const fetchAllComments = (projectId) => dispatch => {
    return CommentsApiUtil.fetchAllComments(projectId)
        .then((comments) => dispatch(receiveAllComments(comments)));
};

export const fetchComment = (commentId) => dispatch => {
    return CommentsApiUtil.fetchComment(commentId)
        .then((comment) => dispatch(reciveComment(comment)));
};

export const createComment = (comment) => dispatch => {
    return CommentsApiUtil.createComment(comment)
        .then(res => {
            dispatch(reciveComment(res))
            return res.comment
        }, (errors) => {
            dispatch(receiveErrors(errors.responseJSON))
        });
};

export const updateComment = (comment) => dispatch => {
    return CommentsApiUtil.updateComment(comment)
        .then((res) => {
            dispatch(reciveComment(res))
            return res.comment
        }, (errors) => {
            dispatch(receiveErrors(errors.responseJSON));
        });
};

export const deleteComment = (commentId) => dispatch => {
    return CommentsApiUtil.deleteComment(commentId)
        .then((comment) = dispatch(removeComment(comment.id)));
};