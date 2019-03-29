
var colorPalettes = require('nice-color-palettes/1000')
import 'imba-router'

import RaindropsPage from './components/raindrops/RaindropsPage.imba'
import './App.scss'


tag App

  def render
    <self>
      <RaindropsPage route='/'>


Imba.mount <App>
