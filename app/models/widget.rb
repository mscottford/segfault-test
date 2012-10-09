class Widget < ActiveRecord::Base
  attr_accessor :check_rejection_reason

  state_machine :initial => :requested do
    around_transition :requested => :none do |gm, transition, blk|
      gm.check_rejection_reason = true
      blk.call
      gm.check_rejection_reason = false
    end

    after_transition any => :none do |gm, transition|
      gm.destroy
    end

    on :reject do
      transition :requested => :none
    end
  end
end
