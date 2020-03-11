import {connect} from 'react-redux';
import {closeModal} from '../../actions/modal_actions';
import TitleModal from './title_modal';


const mapDispatchToProps = dispatch => ({
    closeModal: () => dispatch(closeModal())
})

export default connect(null, mapDispatchToProps)(TitleModal)