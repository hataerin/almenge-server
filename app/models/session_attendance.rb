class SessionAttendance < ApplicationRecord
  belongs_to :user
  after_save :update_penalty

  def check_attendance
    self.session_attendance
  end

  def update_penalty
    # 출석을 안하면 return nil
    unless check_attendance
      return nil
    end
    # 지각을 안하면 late == 0 이면 return nil
    if late.zero?
      return nil
    end

    if(late <= 10)
      penalty = late * 500
    else
      penalty = 5000
    end

    target_user = User.find_by(id: user_id)
    # total을 계산해주기 위해 지금까지 쌓은 유저의 벌금 그리고 이번 세션의 벌금을 더해줌
    total_penalty = target_user.penalty + penalty
    # 따라서 이번주 penalty는 penalty 누적 penaly는 total penalty
    target_user.update(penalty: total_penalty)
  end

  def update_absence
    if (check_attendance != nil or check_attendance != false)
      session_absence = 1
      total_session_absence = target_user.session_absence + session_absence
      target_user.update(session_absence: total_session_absence)
    end
  end


end


