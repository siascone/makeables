import React from 'react';
import FeaturedProjectsIndexContainer from '../projects/featured_projects_index_container'



class Splash extends React.Component {
    constructor(props) {
        super(props)

        this.state = this.props.projects
    }

    componentDidMount() {
        this.props.fetchAllProjects();
    }

    render() {


        return (
            <div className='splash-main'>
                <div className='splash'>
                    <div className='splash-image'>
                        {/* <img src="https://smallbiztrends.com/wp-content/uploads/2018/12/shutterstock_669923785-1.png"/>  */}
                    </div>
                    <div className='image-text'>
                        <h1>YOURS FOR THE MAKING</h1>
                        <p>Makeables is a community for people who like to make things. 
                            Come explore, share and make your next project with us!
                        </p>
                    </div>
                </div>
                <br/>
                <div className="splash-about">
                    <div className="step-by-step">
                        <li>STEP-BY-STEP</li>
                        <p>We make it easy to learn how to make anything, one step at a 
                            time. From the stovetop to the workshop, you are sure to be 
                            inspired by the awesome projects that are shared everyday.
                        </p>
                    </div>
                    <div>
                        <li>MADE BY YOU</li>
                        <p>Instructables are created by you. No matter who you are, we 
                            all have secret skills to share. Come join our community of 
                            curious makers, innovators, teachers, and life long learners 
                            who love to share what they make.
                        </p>
                    </div>
                    <div>
                        <li>A HAPPY PLACE</li>
                        <p>Making things makes people happy. We can't prove it, but we 
                            know it to be true. Find your happy place, and join one of 
                            the friendliest online communities anywhere.
                        </p>
                    </div>
                </div>
                <br/>
                <div className="featured-projects">
                    <li><a className='explore' href='/?#/projects/'>EXPLORE PROJECTS</a></li>
                    {/* <div className='featured'> */}
                        <FeaturedProjectsIndexContainer />
                    {/* </div> */}
                </div>
                
            </div>

        )
    }
    
    
}
export default Splash;


