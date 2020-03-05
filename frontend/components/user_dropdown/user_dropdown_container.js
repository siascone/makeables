import {connect} from 'react-redux';
import { logout } from '../../actions/session_actions';
import UserDropdown from './user_dropdown';




const mapDispatchToProps = dispatch => ({
    logout: () => dispatch(logout())
});

export default connect(null, mapDispatchToProps)(UserDropdown);