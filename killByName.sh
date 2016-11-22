kill -9 $(ps -A | grep the_program_name_or_pattern | awk '{print $1}')
