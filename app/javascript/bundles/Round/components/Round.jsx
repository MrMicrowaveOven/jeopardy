import PropTypes from 'prop-types';
import QuestionPanel from './QuestionPanel';
import React from 'react';

export default class Round extends React.Component {
  static propTypes = {

  };

  /**
   * @param props - Comes from your rails view.
   */
  constructor(props) {
    super(props);
    this.state = { questions: this.props.questions }
    // How to set initial state in ES6 class syntax
    // https://reactjs.org/docs/state-and-lifecycle.html#adding-local-state-to-a-class
  }

  render() {
    return (
      <div>
          {this.state.questions.map(question => (
            <QuestionPanel question={question}/>
          ))}
      </div>
    );
  }
}
