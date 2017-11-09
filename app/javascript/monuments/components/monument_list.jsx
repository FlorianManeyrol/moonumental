import React, { Component } from 'react';
import MonumentListItem from './monument_list_item';

export default class MonumentList extends Component {
  render() {
    return (
      <div>
        {this.props.monuments.map((monument) => {
          return <MonumentListItem monument={monument} key={monument.id} />;
        })}
      </div>);
  }
}
