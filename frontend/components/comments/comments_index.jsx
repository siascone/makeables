import React from 'react';
import CommentIndexItem from './comment_index_item';


class CommentsIndex extends React.Component {
    componentDidMount() {
        return this.props.fetchAllComments(this.props.projectId);
    }

    render() {
        if (this.props.comments.length <= 1) {
            return null;
        }

        const { comments, projectId } = this.props;
        return (
            <div className='comment-index-item'>
                {
                    comments.map((comment, idx) => (
                        <CommentIndexItem
                            comment={comment}
                            projectId={projectId}
                            key={idx}
                        />
                    ))
                }
            </div>
        )
    }
}

export default CommentsIndex