class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)
    print_calculation(first_operand, second_operand, operation)
  end

  def self.print_calculation(first_operand, second_operand, operation)
    begin
      desired_calculation = "#{first_operand} #{operation} #{second_operand}"
      operation_result = first_operand.public_send operation, second_operand
      "#{desired_calculation} = #{operation_result}"

    rescue => e
      puts e.class.name
    end
  end
  private_class_method :print_calculation
end

puts SimpleCalculator.calculate(2, 3, nil)
