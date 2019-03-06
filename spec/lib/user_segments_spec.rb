require 'rails_helper'

describe UserSegments do
  let(:user1) { create(:user) }
  let(:user2) { create(:user) }
  let(:user3) { create(:user) }

  describe "#all_users" do
    it "returns all active users enabled" do
      active_user = create(:user)
      erased_user  = create(:user, erased_at: Time.current)

      expect(described_class.all_users).to include active_user
      expect(described_class.all_users).not_to include erased_user
    end
  end

  describe "#administrators" do
    it "returns all active administrators users" do
      active_user = create(:user)
      active_admin = create(:administrator).user
      erased_user = create(:user, erased_at: Time.current)

      expect(described_class.administrators).to include active_admin
      expect(described_class.administrators).not_to include active_user
      expect(described_class.administrators).not_to include erased_user
    end
  end

  describe "#proposal_authors" do
    it "returns users that have created a proposal" do
      proposal = create(:proposal, author: user1)

      proposal_authors = described_class.proposal_authors
      expect(proposal_authors).to include user1
      expect(proposal_authors).not_to include user2
    end

    it "does not return duplicated users" do
      proposal1 = create(:proposal, author: user1)
      proposal2 = create(:proposal, author: user1)

      proposal_authors = described_class.proposal_authors
      expect(proposal_authors).to contain_exactly(user1)
    end
  end

  describe "#investment_authors" do
    it "returns users that have created a budget investment" do
      investment = create(:budget_investment, author: user1)
      budget = create(:budget)
      investment.update(budget: budget)

      investment_authors = described_class.investment_authors
      expect(investment_authors).to include user1
      expect(investment_authors).not_to include user2
    end

    it "does not return duplicated users" do
      investment1 = create(:budget_investment, author: user1)
      investment2 = create(:budget_investment, author: user1)
      budget = create(:budget)
      investment1.update(budget: budget)
      investment2.update(budget: budget)

      investment_authors = described_class.investment_authors
      expect(investment_authors).to contain_exactly(user1)
    end
  end

  describe "#feasible_and_undecided_investment_authors" do
    it "returns authors of a feasible or an undecided budget investment" do
      user4 = create(:user)
      user5 = create(:user)
      user6 = create(:user)

      feasible_investment_finished = create(:budget_investment, :feasible, :finished, author: user1)
      undecided_investment_finished = create(:budget_investment, :undecided, :finished, author: user2)
      feasible_investment_unfinished = create(:budget_investment, :feasible, author: user3)
      undecided_investment_unfinished = create(:budget_investment, :undecided, author: user4)
      unfeasible_investment_unfinished = create(:budget_investment, :unfeasible, author: user5)
      unfeasible_investment_finished = create(:budget_investment, :unfeasible, :finished, author: user6)

      budget = create(:budget)
      feasible_investment_finished.update(budget: budget)
      undecided_investment_finished.update(budget: budget)
      feasible_investment_unfinished.update(budget: budget)
      undecided_investment_unfinished.update(budget: budget)
      unfeasible_investment_unfinished.update(budget: budget)
      unfeasible_investment_finished.update(budget: budget)

      investment_authors = described_class.feasible_and_undecided_investment_authors
      expect(investment_authors).to include user1
      expect(investment_authors).to include user2
      expect(investment_authors).to include user3
      expect(investment_authors).to include user4
      expect(investment_authors).to include user5
      expect(investment_authors).not_to include user6
    end

    it "does not return duplicated users" do
      feasible_investment = create(:budget_investment, :feasible, author: user1)
      undecided_investment = create(:budget_investment, :undecided, author: user1)
      budget = create(:budget)
      feasible_investment.update(budget: budget)
      undecided_investment.update(budget: budget)

      investment_authors = described_class.feasible_and_undecided_investment_authors
      expect(investment_authors).to contain_exactly(user1)
    end
  end

  describe "#selected_investment_authors" do
    it "returns authors of selected budget investments" do
      selected_investment = create(:budget_investment, :selected, author: user1)
      unselected_investment = create(:budget_investment, :unselected, author: user2)
      budget = create(:budget)
      selected_investment.update(budget: budget)
      unselected_investment.update(budget: budget)

      investment_authors = described_class.selected_investment_authors
      expect(investment_authors).to include user1
      expect(investment_authors).not_to include user2
    end

    it "does not return duplicated users" do
      selected_investment1 = create(:budget_investment, :selected, author: user1)
      selected_investment2 = create(:budget_investment, :selected, author: user1)
      budget = create(:budget)
      selected_investment1.update(budget: budget)
      selected_investment2.update(budget: budget)

      investment_authors = described_class.selected_investment_authors
      expect(investment_authors).to contain_exactly(user1)
    end
  end

  describe "#winner_investment_authors" do
    it "returns authors of winner budget investments" do
      winner_investment = create(:budget_investment, :winner, author: user1)
      selected_investment = create(:budget_investment, :selected, author: user2)
      budget = create(:budget)
      winner_investment.update(budget: budget)
      selected_investment.update(budget: budget)

      investment_authors = described_class.winner_investment_authors
      expect(investment_authors).to include user1
      expect(investment_authors).not_to include user2
    end

    it "does not return duplicated users" do
      winner_investment1 = create(:budget_investment, :winner, author: user1)
      winner_investment2 = create(:budget_investment, :winner, author: user1)
      budget = create(:budget)
      winner_investment1.update(budget: budget)
      winner_investment2.update(budget: budget)

      investment_authors = described_class.winner_investment_authors
      expect(investment_authors).to contain_exactly(user1)
    end
  end

  describe "#current_budget_investments" do
    it "only returns investments from the current budget" do
      investment1 = create(:budget_investment, author: create(:user))
      investment2 = create(:budget_investment, author: create(:user))
      budget = create(:budget)
      investment1.update(budget: budget)

      current_budget_investments = described_class.current_budget_investments
      expect(current_budget_investments).to include investment1
      expect(current_budget_investments).not_to include investment2
    end
  end

  describe "#not_supported_on_current_budget" do
    it "only returns users that haven't supported investments on current budget" do
      investment1 = create(:budget_investment)
      investment2 = create(:budget_investment)
      budget = create(:budget)
      investment1.vote_by(voter: user1, vote: 'yes')
      investment2.vote_by(voter: user2, vote: 'yes')
      investment1.update(budget: budget)
      investment2.update(budget: budget)

      not_supported_on_current_budget = described_class.not_supported_on_current_budget
      expect(not_supported_on_current_budget).to include user3
      expect(not_supported_on_current_budget).not_to include user1
      expect(not_supported_on_current_budget).not_to include user2
    end
  end

end
