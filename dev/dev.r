library("swirl")
library("swirlify")


demo_lesson()

# initialize a course -- use this w/o course_name defined before
swirlify(course_name="r_clean_or_dirty", lesson_name="haihai_r")

# add a new lesson to course -- use this when course exists
swirlify(course_name="r_clean_or_dirty", lesson_name="second lesson")

# ...

# within a course, can add questions via:
# 
#   executing commands:
#   
    wq_message()          # just display something ("text")
    wq_command()          # ask for expression or val ("cmd_question")
    wq_figure()           # show a figure(?) ("figure")
    wq_multiple()         # ask for answer to a mc question ("mult_question")
    wq_numerical()        # ask for a value ("exact_question")
    wq_script()           # ask for a code chunk, to be tested ("script")
    wq_text()             # ask for some text, to be tested ("text_question")
    wq_video()            # show link to a video ("video")
#
#   or adding text to the lesson.yaml file, eg:
#   
  # - Class: mult_question
  #   Output: ask the multiple choice question here
  #   AnswerChoices: ANS;2;3
  #   CorrectAnswer: ANS
  #   AnswerTests: omnitest(correctVal= 'ANS')
  #   Hint: hint
  # 
  # - Class: script
  #   Output: explain what the user must do here
  #   AnswerTests: custom_test_name()
  #   Hint: hint
  #   Script: script-name.R
#


