import React from 'react';
import ReactDOM from 'react-dom';
import MonumentList from './components/monument_list';

const monumentsContainer = document.getElementById('monuments');
if (monumentsContainer) {
  const monuments = JSON.parse(monumentsContainer.dataset.monuments);
  ReactDOM.render(
    <MonumentList monuments={monuments} />
    , monumentsContainer);
}
