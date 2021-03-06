import React from 'react';
import CommentsIndexItem from './comments_index_item';

class CommentsIndex extends React.Component {
    componentDidMount() {
        return this.props.fetchAllComments(this.props.projectId);
    }

    render() {
        const { comments, projectId, sessionId, deleteComment, updateComment } = this.props;

        if (this.props.comments.length <= 1) {
            return null;
        }
        return (
            <div className='comment-index-item'>
                {
                    comments.map((comment, idx) => (
                        <CommentsIndexItem
                            comment={comment}
                            projectId={projectId}
                            sessionId={sessionId}
                            deleteComment={deleteComment}
                            updateComment={updateComment}
                            key={idx}
                        />
                    ))
                }
            </div>
        )
    }
}

export default CommentsIndex