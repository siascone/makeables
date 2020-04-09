import React from 'react';
import {connect} from 'react-redux';
import AddStep from './add_step'
import {createStep, editStep, deleteStep, clearErrors} from '../../actions/step_actions'

const mapStateToProps = state => {
    return ({
        state
    })
}

const mapDispatchToProps = dispatch => ({
    createStep: ,
    
})