import React from 'react';
import { connect } from 'react-redux';
import CommentForm from './comment_form';
import {createComment, clearErrors } from '../../actions/comment_actions';

const mapStateToProps = state => {
    return ({
        comment: {
            body: ''
        },
        errors: Object.values(state.errors.comment)
    })
};

const mapDispatchToProps = dispatch => ({
    createComment: comment => dispatch(createComment(comment)),
    clearErrors: () => dispatch(clearErrors())
});

export default connect(mapStateToProps, mapDispatchToProps)(CommentForm);

