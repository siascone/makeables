import React from 'react';
import AddStepContainer from '../steps/add_step_container';
import StepsIndexContainer from '../steps/steps_index_container';


class ProjectForm extends React.Component {
    constructor(props) {
        super(props);

        this.state = this.props.project
        this.state["photoFile"] = null;
        this.cName = false;
        this.projectImage = false;
    
        this.handleSubmit = this.handleSubmit.bind(this);
        this.previewFile = this.previewFile.bind(this);
        this.click = this.click.bind(this);
        this.renderErrors = this.renderErrors.bind(this);
        this.return = this.return.bind(this)
    }

    update(field) {
        return e => {
            this.setState({[field]: e.currentTarget.value});
        }
    }
    
    handleSubmit(e) {
        e.preventDefault();
        let projectId = this.state.id
        const formData = new FormData();
        formData.append('project[description]', this.state.description)
        if (this.state.photoFile) {
            formData.append('project[project_photo]', this.state.photoFile)
        }
        debugger
        this.props.updateProject(formData, projectId)
            .then((project) => {
                this.props.history.push(`/projects/${projectId}`)
            });
    }

    return(e) {
        e.preventDefault()
        this.props.history.push(`/projects/${projectId}`)
    }

    previewFile(e) {
        const file = e.currentTarget.files[0];
        const preview = document.querySelector('.img_preview');
        const reader = new FileReader();
        reader.onloadend = () => {
            preview.src = reader.result;
            this.setState({photoFile: file, photoUrl: reader.result});
        };
        if (file) {
            reader.readAsDataURL(file);
        } else {
            this.setState({ photoUrl: "", photoFile: null });
        }
        this.projectImage = true;
    }

    click(e) {
        e.preventDefault();
        this.cName = !this.cName;
    }

    renderErrors() {
        if (this.props.errors.length > 0) {
            return (
                <div className='project-errors'>
                    {this.props.errors.map((error, i) => (
                        <li key={`error ${i}`}>{error}</li>
                    ))}
                </div>
            )
        } else {
            return null
        }
    }

    componentWillUnmount() {
        this.props.clearErrors()
    }

    render() {
        let image = 'hide-project-image';
        let photoMessage
        if (this.projectImage === true) {
            image = 'show-project-image';
            photoMessage = "✚ Click to Change Photo"
        } else {
            photoMessage = "✚ Click to Add a Photo"
        }


        let label
        let input
        if (this.props.project.photoUrl) {
            label = <img className="file-field-image" src={this.props.project.photoUrl} alt=""/>
            input = <div className='file-field-no-input'></div>
        } else {
            label = <label className="file-field-label">
                        {photoMessage}
                    </label>
            input = <input type="file"
                        className='file-field'
                        onChange={this.previewFile}
                    />
        }

       
        return (
            <div className='project-main'>
                <div className='project-title'>{this.props.project.title}</div>
                <div className='image-input'>
                    <div className='image-box'>
                        <div className={image}>
                            <img src="" className='img_preview' />
                        </div>
                        {label}
                        {input}
                    </div>
                </div>
                
                <div className="project-description">
                    <div>Project Description</div>
                    <textarea
                        placeholder={this.props.project.description}
                        onChange={this.update('description')}
                    ></textarea>
                </div>
                
                {this.renderErrors()}
                <div className='steps-box'>
                    <div className='steps'>
                        <StepsIndexContainer />
                        <div className="add-step-container-box">
                            <AddStepContainer />
                        </div>
                    </div>
                </div>

                <div className='project-nav'>
                    <div className="edit-buttons">
                        <button
                            className='return'
                            onClick={this.handleSubmit}>
                            Return
                        </button>
                    </div>
                    <div className="edit-buttons">
                        <button
                            className='project-button'
                            onClick={this.handleSubmit}>
                            Submit
                        </button>
                    </div>
                </div>
            </div>
        )
    }
}

export default ProjectForm;
