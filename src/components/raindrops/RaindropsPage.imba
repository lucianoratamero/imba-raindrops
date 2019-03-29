
import Particle from './Particle.imba'
import { range } from '../utils'


export tag RaindropsPage < canvas
  prop framesPerSecond default: 60
  prop currentNodes default: []

  def build
    let baseNumberofParticles = window:innerWidth
    let particlesRange = range parseInt baseNumberofParticles * Math.random

    for number in particlesRange
      @currentNodes.unshift setupNode

    window.addEventListener('resize', &, false) do |evt|
      onresize evt

  def onresize event
    @currentNodes = []
    build

  def setupNode
    let size = Math.ceil Math.random() * 20
    let delay = Math.random * 100 * size
    { yPosition: -delay, size: size }

  def mount
    schedule(interval: 1000 / @framesPerSecond)

  def context type = '2d'
    dom.getContext type

  def tick
    context.clearRect 0, 0, window:innerWidth, window:innerHeight

    for node, i in @currentNodes
      if node:yPosition < window:innerHeight
        node:yPosition = node:yPosition + node:size * 1.2
      else
        @currentNodes[i] = setupNode

    render

  def render
    <self width=window:innerWidth height=window:innerHeight>
      for node in @currentNodes
        <Particle[node] context=context>
