import React from 'react';
import {connect} from 'react-redux';
import CommentsIndex from './comments_index';
import { fecthAllComments } from '../../actions/comment_actions';

const mapStateToProps = (state) => {
    return {
        comments: Object.values(state.entities.comments),
        users: state.entities.uers
    }
};

const mapDispatchToProps = dispatch => ({
    fecthAllComments: (() => dispatch(fecthAllComments()))
});

export default connect(mapStateToProps, mapDispatchToProps)(CommentsIndex);