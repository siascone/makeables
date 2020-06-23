import React from 'react';
import { connect } from 'react-redux';
import CommentForm from './comment_form';
import {createComment, clearErrors } from '../../actions/comment_actions';
import {withRouter} from 'react-router-dom'

const mapStateToProps = (state, ownProps) => {
    return ({
        comment: {
            project_id: ownProps.match.params.id,
            user_id: state.session.id,
            errors: Object.values(state.errors.comments)
        }
    })
};

const mapDispatchToProps = dispatch => ({
    createComment: comment => dispatch(createComment(comment)),
    clearErrors: () => dispatch(clearErrors())
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(CommentForm));

