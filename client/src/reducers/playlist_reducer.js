export default function playlistReducer(state = {run: false, user_id:[], music_id: []}, action) {
    switch(action.type) {
        case 'DISPLAY_LIST':
            return {...state, run:true};
        case 'FETCH_PLAYLIST':
            return {run: false, user_id: [...action.payload] };
            default:
                return state
    }
}