# =================
#     Refactor
# =================

class PhoneNumber
  INVALID_NUMBER = '0' * 10

  def initialize(phone_number)
    @number = phone_number
  end

  def number
    return invalid_number if has_letters?

    phone_number = @number.gsub(/\D/, '')

    # TODO: Fix mulitple conditionals

    return INVALID_NUMBER if phone_number.length < 10 || phone_number.length > 11

    if phone_number[0] == '1' && phone_number.length == 11
      return phone_number[1..phone_number.length - 1]
    elsif phone_number.length >= 11 && phone_number[0] != '1'
      return INVALID_NUMBER
    end

    phone_number
  end

  def area_code
    number[0..2]
  end

  def to_s
    "(#{number[0..2]}) #{number[3..5]}-#{number[6..9]}"
  end

  private

  def invalid_number
    INVALID_NUMBER
  end

  def has_letters?
    @number.match?(/[a-zA-Z]/)
  end
end
