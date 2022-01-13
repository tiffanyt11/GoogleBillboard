public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public void setup()  
{            
    String digitsString = e.substring(0,2);
    double digits = 10;
    double answer=0;
    for(int x = 2; x < e.length()-10; x++){
      digitsString = e.substring(x, x+10);
      digits = Double.parseDouble(digitsString);
      System.out.println(digits);
      if(isPrime(digits)==true){
        answer = digits;
        break;
      }
    }
    System.out.println(answer);
}  
public void draw()  
{   
  //not needed for this assignment
}  
public boolean isPrime(double dNum)  
{   
    if (dNum<2){
    return false;
  }
  for (int i = 2; i <= Math.sqrt(dNum); i++){
    if (dNum%i == 0)
      return false;
  }
    return true;  
} 
