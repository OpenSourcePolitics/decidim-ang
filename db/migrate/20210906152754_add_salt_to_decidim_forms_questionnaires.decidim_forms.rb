# frozen_string_literal: true
# This migration comes from decidim_forms (originally 20201110152921)

class AddSaltToDecidimFormsQuestionnaires < ActiveRecord::Migration[5.2]
  class Questionnaire < ApplicationRecord
    self.table_name = :decidim_forms_questionnaires
  end

  def change
    unless ActiveRecord::Base.connection.column_exists?(:decidim_forms_questionnaires, :salt)
      add_column :decidim_forms_questionnaires, :salt, :string
    end

    Questionnaire.find_each do |questionnaire|
      questionnaire.salt = Decidim::Tokenizer.random_salt
      questionnaire.save!
    end
  end
end
