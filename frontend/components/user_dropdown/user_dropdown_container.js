import {connect} from 'react-redux';
import { logout } from '../../actions/session_actions';
import UserDropdown from './user_dropdown';
import { openModal } from '../../actions/modal_actions';


const mapDispatchToProps = dispatch => ({
    logout: () => dispatch(logout()),
    openModal: () => dispatch(openModal("make_project"))
});

export default connect(null, mapDispatchToProps)(UserDropdown);