class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)
    if operation == "+"
        "#{first_operand} #{operation} #{second_operand} = #{first_operand + second_operand}"
    elsif operation == "*"
       "#{first_operand} #{operation} #{second_operand} = #{first_operand * second_operand}"
    elsif operation == "/"
    begin
       "#{first_operand} #{operation} #{second_operand} = #{first_operand / second_operand}"
    rescue=> e
     "Division by zero is not allowed."
    end
      end
  end
end
