import React from 'react';

const Comments = ({ comments }) =>{
    const comment = comments.map(t => <p key={t.id}>{t.comment} </p> )
    return (
        <div className="comments">
            {comment}
        </div>
    );
};

export default Comments;