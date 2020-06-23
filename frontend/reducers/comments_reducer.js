import { 
    RECEIVE_ALL_COMMENTS, 
    RECEIVE_COMMENT, 
    REMOVE_COMMENT 
} from '../actions/comment_actions';

const commentsReducer = (state = {}, action) => {
    Object.freeze(state);
    let newState = Object.assign({}, state);
    // debugger
    switch (action.type) {
        case RECEIVE_ALL_COMMENTS:
            return action.comments.comments;
        case RECEIVE_COMMENT:
            newState[action.comment.comment.id] = action.comment.comment;
            return newState
        case REMOVE_COMMENT:
            delete newState[action.commentId];
            return newState
        default:
            return state;
    }
};

export default commentsReducer;