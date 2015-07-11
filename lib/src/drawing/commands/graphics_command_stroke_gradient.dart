part of stagexl.drawing;

class _GraphicsCommandStrokeGradient extends GraphicsCommandStroke {

  final GraphicsGradient gradient;

  _GraphicsCommandStrokeGradient(
      GraphicsGradient gradient, num lineWidth, String lineJoin, String lineCap) :
        super (lineWidth, lineJoin, lineCap),  gradient = gradient;

  @override
  void updateContext(GraphicsContext context) {
    context.strokeGradient(gradient, lineWidth, lineJoin, lineCap);
  }

  /*
  @override
  void drawCanvas(CanvasRenderingContext2D context) {
    context.strokeStyle = gradient.getCanvasGradient(context);
    context.lineWidth = lineWidth;
    context.lineJoin = lineJoin;
    context.lineCap = lineCap;
    context.stroke();
  }
  */
}
