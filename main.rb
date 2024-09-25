def priority(op)
    
    if op == '+' || op == '-'
        return 1
    elsif op == '*' || op == '/'
        return 2
    else
        return 0
    end
end

def postfix(expr)
    output = "" 
    op = [] 
  
    for idx in 0...expr.length
        symbol = expr[idx]

        if symbol >= '0' && symbol <= '9'
            output += symbol
        
        elsif symbol == '('
            op.push(symbol)
        
        elsif symbol == ')'

            while op.length > 0 && op[-1] != '('
                output += op.pop 
            end
            op.pop 
        
        else
            while op.length > 0 && priority(symbol) <= priority(op[-1])
                output += op.pop
            end
            op.push(symbol)
        end
    end
  

    while op.length > 0
        output += op.pop
    end
  
    return output
end
  
expr = "(1-2)+11"
puts "Input: " + expr
puts "Output: " + postfix(expr)
