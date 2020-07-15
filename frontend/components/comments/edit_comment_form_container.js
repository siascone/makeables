import React from 'react';
import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import CommentForm from './comment_form';
import { updateComment, fetchComment, clearErrors, deleteComment } from '../../actions/comment_actions';

const mapStateToProps = (state, ownProps) => {
    return ({
        comment: state.entities.comments,
        errors: Object.values(state.errors.comment),
        formType: "Edit Comment",
        history: ownProps.history
    });
};

const mapDispatchToProps = dispatch => ({
    fetchComment: commentId => dispatch(fetchComment(commentId)),
    updateComment: comment => dispatch(updateComment(comment)),
    deleteComment: comment => dispatch(deleteComment(comment.id)),
    clearErrors: () => dispatch(clearErrors())
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(CommentForm));

// make a modal for editing/ or perhaps have text turn into text box with submit button.
// consider adding photos to comments so that people can show their version of projects.