// declaration des objets
Camera camera ;
float rotationAngle; // Angle de rotation du cube
PVector cameraPosition; // Position de la caméra

void setup () {

  size(600, 600, P3D);
  smooth(4);
  camera = new Camera (this);
  rotationAngle = 0 ;
  cameraPosition = new PVector(0, 0, 10)  ;
  camera.setPosition(cameraPosition);
  camera.setFov(-6); // Modifier le champ de vision
}

void draw () {

  background(0);
  // Lumière ponctuelle
  pointLight(255, 255, 255, 0, -2, 2);

  // dessiner le cube
  fill(255, 0, 0);
  stroke(255, 255, 0);
  strokeWeight(3) ;

  // Rotation du cube autour de l'axe X
  rotateX(PI/3.0+rotationAngle);
  rotationAngle-=0.009;
  box(1) ;
}
