import { connect } from "react-redux"
import Splash from './splash'
import { fetchAllProjects } from "../../actions/project_actions"

const msp = (state) => {
    return {
        projects: state.entities.projects,
        users: state.entities.users,
    }


}

const mdp = dispatch => ({
    fetchAllProjects: (() => dispatch(fetchAllProjects()))
})

export default connect(msp, mdp)(Splash)