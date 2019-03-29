
const anime = require('animejs/lib/anime.js')

import './Particle.scss'


export tag Particle

  def build
    @size = Math.ceil Math.random() * 10
    @width = Math.ceil @size/6
    @xPosition = Math.random * window:innerWidth
    @animationDuration = Math.random * (3000 - 1200) + 1200

  def mount
    let translateY = "100vh"
    anime({
      targets: self:_dom,
      translateY: translateY,
      loop: true,
      easing: 'easeOutSine',
      duration: @animationDuration,
    })

  def render
    <self style="
      height: {@size}px;
      border-left: {@width}px solid lightblue;
      border-right: {@width}px solid lightblue;
      left: {@xPosition}px;
    ">
