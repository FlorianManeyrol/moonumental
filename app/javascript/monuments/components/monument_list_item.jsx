import React, { Component } from 'react';

export default class MonumentListItem extends Component {
  render() {
    return (
      <div className="monument">
        <div className="monument-upvote">TODO</div>
        <div className="monument-body">
          <h3>
            <a href={this.props.monument.url} target="_blank">{this.props.monument.name}</a>
          </h3>
          <p>{this.props.monument.tagline}</p>
        </div>
        <div className="monument-controls">
          <img src={this.props.monument.user.avatar_url} className="avatar" />
        </div>
      </div>
    );
  }
}
