# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password

  # returns a score based on how close
  # a response (resp) was to the correct 
  # answer
  def score(resp, answer)
    a = answer.downcase
    r = resp.downcase
    s = 0

    for i in (0..a.length) do 
      break if i > r.length
      s += 1 if a[i].eql?(r[i])
      logger.info "#{a[i]} ==? #{r[i]}. S: #{s}"
    end
    s
  end

  def update_scores(r, a)
    s = score(r, a)
    t = session['total_score']
    t = 0 if t.eql?(nil)
    session['score'] = s
    session['total_score'] = t + s
  end
end
