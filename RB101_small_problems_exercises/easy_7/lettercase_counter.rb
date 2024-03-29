


def letter_case_count(str)
  case_count = {lowercase: 0, uppercase: 0, neither: 0}

  str.chars.each do |val|
    if val.match(/[a-z]/)
      case_count[:lowercase] += 1
    elsif val.match(/[A-Z]/)
      case_count[:uppercase] += 1
    else
      case_count[:neither] += 1
    end
  end
  case_count
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
