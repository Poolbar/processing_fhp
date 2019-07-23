//very simple audio recorder 
//carina christler
//LIBRARY MINIM
/**
 * To use this sketch you need to have something plugged into the line-in on your computer, 
 * or else be working on a laptop with an active built-in microphone. 
 * there is already an audio file for testing in the data folder
 *
 * Press 'r' to toggle recording on and off and the press 's' to save to disk. 
 * The recorded file will be placed in the sketch folder of the sketch.
 */

import ddf.minim.*;

Minim minim;
AudioInput in;
AudioRecorder recorder;
AudioPlayer groove;

void setup()
{
  size(512, 400, P3D);
  smooth();
  minim = new Minim(this);
  in = minim.getLineIn();
  recorder = minim.createRecorder(in, "myrecording.wav");
  groove = minim.loadFile("01 - Groove Holmes.mp3", 1024);
  groove.loop();
  textFont(createFont("Helvetica", 12));
}

void draw() {
  background(0); 
  fill(250);
  textSize(15);
  text("Press 'r' to toggle recording on and off and press 's' to save to disk.", 10, 20);

  if (recorder.isRecording()) {
    fill(#45AEED);
    textSize(12);
    text("Currently recording...", 10, 50);
  } else {
    fill(#E37E20);
    textSize(12);
    text("Not recording.", 10, 50);
  }
  if (key == 's') {
    fill(#40FC08);
    textSize(12);
    text("Done saving", 10, 70);
  }
   // draw the waveforms
  // the values returned by left.get() and right.get() will be between -1 and 1,
  // so we need to scale them up to see the waveform
  // note that if the file is MONO, left.get() and right.get() will return the same value
  stroke( 230 );
  for (int i = 0; i < groove.bufferSize() - 1; i++){
    float x1 = map( i, 0, groove.bufferSize(), 0, width );
    float x2 = map( i+1, 0, groove.bufferSize(), 0, width );
    line( x1, 120 + groove.left.get(i)*50, x2, 120 + groove.left.get(i+1)*50 );
    line( x1, 220 + groove.right.get(i)*50, x2, 220 + groove.right.get(i+1)*50 );
  }
  noStroke();
  fill(255,100);

  // the value returned by the level method is the RMS (root-mean-square) 
  // value of the current buffer of audio.
  // see: http://en.wikipedia.org/wiki/Root_mean_square
  rect( 0, 325, groove.left.level()*width, 30 );
  text("left",20,345);
  rect( 0, 360, groove.right.level()*width, 30 );
  text("right",20,380);
}

void keyReleased() {
  if (key == 'r') {
    // to indicate that you want to start or stop capturing audio data, you must call
    // beginRecord() and endRecord() on the AudioRecorder object. You can start and stop
    // as many times as you like, the audio data will be appended to the end of the buffer 
    // (in the case of buffered recording) or to the end of the file (in the case of streamed recording). 
    if (recorder.isRecording()) {
      recorder.endRecord();
    } else {
      recorder.beginRecord();
    }
  }
  if (key == 's') {
    // we've filled the file out buffer, 
    // now write it to the file we specified in createRecorder
    // in the case of buffered recording, if the buffer is large, 
    // this will appear to freeze the sketch for sometime
    // in the case of streamed recording, 
    // it will not freeze as the data is already in the file and all that is being done
    // is closing the file.
    // the method returns the recorded audio as an AudioRecording, 
    // see the example  AudioRecorder >> RecordAndPlayback for more about that
    recorder.save();

    println("Done saving.");
  }
}
