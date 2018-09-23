document.addEventListener("DOMContentLoaded", function(){
  const canvas = document.getElementById('mycanvas');

  canvas.width = 500;
  canvas.height = 500;
  canvas.style.border = "1px solid black";

  const ctx = canvas.getContext('2d');
  ctx.fillStyle = 'red';
  ctx.fillRect(0, 0, 100 ,100);

  ctx.fillStyle = 'black';
  ctx.fillRect(0, 0, 500, 500);

  ctx.lineWidth = 5;
  ctx.strokeStyle = 'blue'
  ctx.beginPath();
  ctx.moveTo(10, 10);
  ctx.lineTo(490, 10);
  ctx.lineTo(490, 490);
  ctx.lineTo(10, 490);
  ctx.lineTo(10, 10);
  ctx.stroke();


  ctx.fillStyle = 'gold';
  ctx.beginPath();
  ctx.arc(250, 250, 100,0, 2*Math.PI);
  ctx.fill();

  ctx.fillStyle = 'black';
  ctx.beginPath();
  ctx.moveTo(250, 250);
  ctx.lineTo(350, 300);
  ctx.lineTo(350, 200);
  ctx.lineTo(250, 250);
  ctx.fill();

  ctx.fillStyle = 'black';
  ctx.beginPath();
  ctx.arc(210, 210, 5,0, 2*Math.PI);
  ctx.fill();

  ctx.fillStyle = '#ff8da1';
  ctx.beginPath();
  ctx.moveTo(250, 150);
  ctx.lineTo(175, 125);
  ctx.lineTo(175, 175);
  ctx.lineTo(250, 150);
  ctx.fill();

  ctx.beginPath();
  ctx.moveTo(250, 150);
  ctx.lineTo(325, 125);
  ctx.lineTo(325, 175);
  ctx.lineTo(250, 150);
  ctx.fill();

  ctx.beginPath();
  ctx.fillStyle = 'orange';
  ctx.arc(400, 400, 50, Math.PI, 2*Math.PI);
  // ctx.moveTo(350,400);
  ctx.lineTo(450,475);
  ctx.lineTo(425,450);
  ctx.lineTo(400,475);
  ctx.lineTo(375,450);
  ctx.lineTo(350,475);
  ctx.fill();
  
  ctx.beginPath();
  ctx.fillStyle = 'white';
  ctx.arc(375, 390, 10, 0, 2*Math.PI);
  ctx.arc(425, 390, 10, 0, 2*Math.PI);
  ctx.fill();

  ctx.beginPath();
  ctx.fillStyle = 'black';
  ctx.arc(378, 387, 4, 0, 2*Math.PI);
  ctx.arc(428, 387, 4, 0, 2*Math.PI);
  ctx.fill();
});
