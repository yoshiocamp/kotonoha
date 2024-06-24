module ApplicationHelper
    def truncate_with_newline(text, length: 45, omission: '...')
      if text.include?("\n")
        first_line = text.split("\n").first
      truncated_first_line = first_line.truncate(length, omission: omission)
      truncated_first_line += "..." if first_line.length > length || text.split("\n").size > 1
      truncated_first_line
      else
        text.truncate(length, omission: omission)
      end
    end
  end