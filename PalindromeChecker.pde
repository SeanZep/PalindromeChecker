public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String sWord = justLetters(word);
  if(sWord.equalsIgnoreCase(reverse(word)))
    return true;
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i=str.length()-1; i>=0; i--){
      if(!str.substring(i, i+1).equals(" ") && Character.isLetter(str.charAt(i)))
       sNew = sNew + str.substring(i, i+1);
    }
    return sNew;

}
public String justLetters(String str){
  String result = new String();
  for(int i=0; i<=str.length()-1; i++){
    if(!str.substring(i, i+1).equals(" ") && Character.isLetter(str.charAt(i)))
      result = result + str.substring(i, i+1);
  }
  return result;
}


