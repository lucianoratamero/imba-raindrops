
import './Particle.scss'


export tag Particle
  prop context
  prop yPosition
  prop size

  def setup
    @width = Math.floor @data:size/6
    @xPosition = parseInt Math.random * window:innerWidth
    @animationDuration = Math.random * (3000 - 1200) + 1200

  def draw
    @context:strokeStyle = 'rgba(173, 216, 230, 0.52)'
    @context:lineWidth = @width
    @context.beginPath
    @context.moveTo @xPosition, @data:yPosition
    @context.lineTo @xPosition, @data:yPosition + @data:size
    @context.closePath
    @context.stroke

  def render
    <self>
      draw
