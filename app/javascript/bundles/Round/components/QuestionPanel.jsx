import PropTypes from 'prop-types';
import React from 'react';

export default class QuestionPanel extends React.Component {
    static propTypes = {

    };

    /**
     * @param props - Comes from your rails view.
     */
    constructor(props) {
        super(props);
        // How to set initial state in ES6 class syntax
        // https://reactjs.org/docs/state-and-lifecycle.html#adding-local-state-to-a-class
        this.state = {
            question: this.props.question
        }
    }

    render() {
        return (
            <h3>
                ${this.state.question.value}
            </h3>
        );
    }
}
