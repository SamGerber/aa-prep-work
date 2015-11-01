# Problem Statement
# Let us say you are trying to recruit team-members for your new startup!
# Given a candidate, you need an expression that will tell you whether they
# fit into certain types. This is how a candidate object would look:
#
# candidate.years_of_experience = 4
#   candidate.github_points = 293
#   candidate.languages_worked_with = ['C', 'Ruby', 'Python', 'Clojure']
#   candidate.applied_recently? = false
#   candidate.age = 26
# We are looking to hire experienced Ruby programmers. Our ideal candidate
# has 2 or more years of experience, but some programmers become really good
# even before that. We'll consider their Github points (a nice indicator of
# a good programmer), and even if they are not experienced, candidates with
# 500 Github points or more can apply. And there is one more catch: Ruby being
# a cool and awesome language, a lot of smart youngsters are very good at it.
# We love those kids, but for this particular job we'd rather have them study
# at school than work. Let us filter out candidates who are younger than 15.
# Also we don't want to consider candidates who applied recently for this
# opening.
#
# If you haven't solved these types of expressions before, try getting one
# condition right at a time. For each condition you get correct, some tests
# will start passing. As your expression matures to take care of all the
# criteria, all the tests will pass and you'll have a green flag. Now, march on!
#
# https://rubymonk.com/learning/books/1-ruby-primer/problems/50-hiring_programmers_ruby_boolean_expressions

is_an_experienced_programmer = (
  (
    candidate.years_of_experience >= 2 ||
    candidate.github_points >= 500)
  ) &&
  candidate.languages_worked_with.include?("Ruby") &&
  !(candidate.age < 15) &&
  !candidate.applied_recently?
