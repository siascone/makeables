import React from 'react';

class ProjectForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = this.props.project;
        this.state["photoFile"] = null;
        this.cName = false;
        this.handleSubmit = this.handleSubmit.bind(this);
        this.previewFile = this.previewFile.bind(this);
        this.click = this.click.bind(this);
    }

    update(field) {
        return e => this.setState({[field]: e.currentTarget.value});
    }
    

    handleSubmit(e) {
        e.preventDefault();
        const formData = new FormData();
        formData.append('project[title]', this.state.title);
        formData.append('project[description]', this.state.description)
        if (this.state.photoFile) {
            formData.append('project[project_photo]', this.state.photoFile);
        }
        if (this.props.formType === 'Publish Makeable') {
            this.props.createProject(formData);
        } else {
            this.props.updateProject(formData);
        }
        
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
    }

    click(e) {
        e.preventDefault();
        this.cName = !this.cName;
    }


    render() {
        let deleteButton;
        if (this.props.formType === 'Update Makeable') {
            deleteButton = 'show-delete-button';
        } else {
            deleteButton = 'hide-delete-button';
        }
        let inputs = this.cName ? "show-inputs" : "hide-inputs";

        return (
            <div className='project-main'>
                <div>
                    <form className='project-form'>
                        <div className='project-form-photo'>
                            <label>Click to Add an Image
                                <img src=""
                                    alt="Image Preview" 
                                    className='img_preview'
                                />
                                <input type="file"
                                    className='file-field'
                                    value={this.state.project_photo}
                                    onChange={this.previewFile}

                                />
                            </label>
                        </div>
                        <div className='project-form-input'>
                            {/* <button onClick={this.click} 
                                className='input-drop'>
                                Edit
                            </button>
                            <div className={inputs}>
                                <label>
                                    <input type="text"
                                        placeholder="Project Title"
                                        value={this.state.title}
                                        onChange={this.update('title')}
                                    />
                                </label>
                                <label>
                                    <input type='text'
                                        placeholder="Project Description"
                                        value={this.state.description}
                                        onChange={this.update('description')}
                                    />
                                </label>
                            </div> */}
                            <div className='project-submit-buttons'>
                                <button  
                                    onClick={this.handleSubmit}>
                                    {this.props.formType}
                                </button>
                                <button className={deleteButton} 
                                    onClick={() => this.props.deleteProject}>
                                    Delete Makeable
                                </button>
                            </div>
                        </div>
                        <div className='steps-container'>steps go here</div>
                    </form>
                </div>
            </div>
        )
    }
}

export default ProjectForm;