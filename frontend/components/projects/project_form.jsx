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

        this.props.updateProject(formData, projectId)
            .then((project) => {
                this.props.history.push(`/projects/${projectId}`)
            });
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
        if (this.projectImage === true) {
            image = 'show-project-image';
        }

        return (
            <div className='project-main'>
                <div>{this.props.project.title}</div>
                <div className='image-input'>
                    <div className='image-box'>
                        <div className={image}>
                            <img src=""
                                className='img_preview'
                            />
                        </div>
                        <label className="file-field-label">
                            ✚ Click to Add a Photo
                        </label>
                        <input type="file"
                            className='file-field'
                            // value={this.state.project_photo}
                            onChange={this.previewFile}
                        />
                    </div>
                </div>
                <div className="project-description">
                    <label>Project Description</label>
                    <input type='textbox'
                        placeholder={this.props.project.description}
                        onChange={this.update('description')}
                    ></input>
                </div>
                <div className='project-nav'>
                    <div></div>
                    <button
                        className='project-button'
                        onClick={this.handleSubmit}>
                        Publish
                    </button>
                </div>
                
                <div className='steps-box'>
                    {this.renderErrors()}
                    <div className='steps'>
                        <StepsIndexContainer />
                        <div>
                            <AddStepContainer />
                        </div>
                    </div>
                </div>
            </div>
        )
    }
}

export default ProjectForm;
