void front(){
  background(255);
    textFont(myFont);
    fill(#AA1B1B);
    text("Donald Trump‘s Presidential Announcement Speech", width/2, 50);
    text("June 16, 2015", width/2, 100);
    textSize(20);
    fill(#6C6A6A);
    text("Click on the grumpy looking man to see what he is talking about", width/2, 650);
    float w = 329;
    float h = 422;
    float wMap = map(w, 0, 270, 0, 200);
    float hMap = map(h, 0, 370, 0, 300);
    image(trump, width/2, (height/2)+100, wMap, hMap);
    //better use scale()
}
