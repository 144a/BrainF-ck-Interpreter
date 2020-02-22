import java.io.*; 
import java.util.*;

String input = "+++++[>++<-]>.";
int[] cells = new int[4];

// Cell Header
int header = 0;

// Loop Stack
Stack<Integer> loopStack = new Stack<Integer>();

for(int i = 0; i < input.length(); i++) 
{  
  
  switch(input.substring(i, i + 1)) 
  {
    // Increment Value at Header
    case "+":
            cells[header]++;
            break;
    // Decrement Value at Header
    case "-":
            cells[header]--;
            break;
    // Decrement Cell Header
    case "<":  
            header--;
            break;
    // Increment Cell Header
    case ">": 
            header++;
            break;
    // Loop Begin
    case "[": 
            loopStack.push(i);
            break;
    // Loop End/Callback
    case "]": 
            if(cells[header] != 0) 
            {
              i = loopStack.peek();
            } else {
              loopStack.pop();
            }
            break;
    case ",": 
            // WELLLLLLL, IF I COULD JUST INPUT SOMETHING THAT WOULD BE GREAT
            // THANKS PROCESSING
            // *Cough* TAKE USER INPUT *Cough*
            
            break;
    // Display 
    case ".": 
            print((char)(cells[header]));
            break;
    default: break;
  }  
}
