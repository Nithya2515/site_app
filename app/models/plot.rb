class Plot < ApplicationRecord
  has_closure_tree
  has_many :observations
end
