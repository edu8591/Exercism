class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)
    raise ArgumentError if first_operand.class != Integer || second_operand.class != Integer

    raise UnsupportedOperation unless ALLOWED_OPERATIONS.include? operation

    begin
      desired_calculation = "#{first_operand} #{operation} #{second_operand}"
      operation_result = first_operand.public_send operation, second_operand
      "#{desired_calculation} = #{operation_result}"
    rescue ZeroDivisionError
      'Division by zero is not allowed.'
    end
  end
class UnsupportedOperation < StandardError
end

end
