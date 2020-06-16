import React from 'react';
import {connect} from 'react-redux';
import CommentsIndex from './comments_index';
import { fetchAllComments } from '../../actions/comment_actions';
import { withRouter } from 'react-router-dom'

const mapStateToProps = (state, ownProps) => {
    let project = state.entities.projects[ownProps.match.params.id]

    if (project === undefined) {
        return {
            comments: Object.values(state.entities.comments)
        }
    } else {
        return {
            comments: Object.values(state.entities.comments),
            projectId: state.entities.projects[ownProps.match.params.id].id
        }
    }

};

const mapDispatchToProps = dispatch => ({
    fetchAllComments: ((projectId) => dispatch(fetchAllComments(projectId)))
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(CommentsIndex));