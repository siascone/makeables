import React from 'react';

// const CommentIndexItem = props => {

//     // function deleteCom(e) {
//     //     e.preventDefault();
//     //     props.deleteComment(props.comment.id)
//     // }

//     let delCom
//     if (props.comment.user_id === props.sessionId) {
//         delCom = <button 
//                     // onClick={deleteCom()}
//                     >
//                     Delete
//                 </button>
//     }

//     if (props.comment.project_id === props.projectId) {
//         return (
//             <div className='comment-box'>
//                 <div className='comment-item'>
//                     <p>Comment by: {props.comment.username}</p>
//                     <p>{props.comment.body}</p>
//                     {delCom}
//                 </div>
//             </div>
//         )

//     } else {
//         return null
//     }
// };

class CommentIndexItem extends React.Component {
    constructor(props) {
        super(props)

        this.state = this.props.comment

        this.deleteCom = this.deleteCom.bind(this)
    }

    deleteCom(e) {
        e.preventDefault();
        this.props.deleteComment(this.props.comment.id)
    }

    render() {

        let delCom
        if (this.props.comment.user_id === this.props.sessionId) {
            delCom = <button
                        onClick={this.deleteCom}
                    >
                    Delete
                    </button>
        }
        if (this.props.comment.project_id === this.props.projectId) {
            return (
                <div className='comment-box'>
                    <div className='comment-item'>
                        <p>Comment by: {this.props.comment.username}</p>
                        <p>{this.props.comment.body}</p>
                        {delCom}
                    </div>
                </div>
            )

        } else {
            return null
        }
    }

}

export default CommentIndexItem;