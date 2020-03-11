import {connect} from 'react-redux';
import {closeModal} from '../../actions/modal_actions';
import TitleModal from './title_modal';

const mapStateToProps = state => {
    return({
        project: {
            title: '',
            description: '',
        },
        formType: "Publish Makeable"
    });
};

const mapDispatchToProps = dispatch => ({
    closeModal: () => dispatch(closeModal())
})

export default connect(mapStateToProps, mapDispatchToProps)(TitleModal)