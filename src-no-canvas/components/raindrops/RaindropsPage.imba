
import Particle from './Particle.imba'
import { range } from '../utils'


export tag RaindropsPage

  def build
    let baseNumberofParticles = (window:innerWidth - window:innerWidth/3) - window:innerWidth/4
    @particlesRange = range parseInt baseNumberofParticles * Math.random

  def render
    <self style='height: 100%;'>
      for number in @particlesRange
        <Particle>
