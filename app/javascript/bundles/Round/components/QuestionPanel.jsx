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
        const {question} = this.state;
        const xCoord = question.x_coord;
        const yCoord = question.y_coord;
        const coordClassNamesX = ["xOne", "xTwo", "xThree", "xFour", "xFive", "xSix"]
        const coordClassNamesY = ["yOne", "yTwo", "yThree", "yFour", "yFive"]
        const coordClass = coordClassNamesX[xCoord] + " " + coordClassNamesY[yCoord]
        return (
            <h1 className={"question-display" + " " + coordClass}>
                <div className="price-display">
                    ${this.state.question.value}
                </div>
            </h1>
        );
    }
}
