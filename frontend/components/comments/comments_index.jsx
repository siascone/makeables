import React from 'react';
import CommentIndexItem from './comment_index_item';

class CommentsIndex extends React.Component {
    componentDidMount() {
        // update comments to be nested with projects like steps are
        this.props.fetchAllComments(this.props.projectId);
    }

    render() {
        if (this.props.comments.length <= 0) {
            return null;
        }

        const { comments, users } = this.props;
        return (
            <div className='comment-index-main'>
                {
                    comments.map((comment, idx) => (
                        <CommentIndexItem
                            comment={comment}
                            user={users[comment.user_id]}
                            key={idx}
                        />
                    ))
                }
            </div>
        )
    }
}

export default CommentsIndex