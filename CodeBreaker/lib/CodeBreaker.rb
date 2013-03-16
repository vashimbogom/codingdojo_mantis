class CodeBreaker
  @@miNumero = "2713"
  
  def guess(number)
    x, _ = "", ""
    for i in (0...number.length) 
      (@@miNumero.include? number[i..i]) ? (@@miNumero[i..i] == number[i..i] ? x += "X" : _ += "_" ) : nil
    end
      res = ((x + _) == "XXXX") ? ("Fecilidades Ganaste! -> " + x + _) : ("Vuelve a intentarlo! -> " + x + _)
  end
end