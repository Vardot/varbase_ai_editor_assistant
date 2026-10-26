@varbase-ai-editor-assistant @ai @recipes @local @development @staging @production
Feature: Varbase AI Recipe - AI Editor Assistant - The AI Assistant in the rich editor
  As a content editor
  I want an AI Assistant button in the rich editor of my content
  So that I can draft, rewrite, fix and summarize text without leaving the page

  Scenario Outline: Check the "<user>" user has one AI Assistant button with its writing tools
    Given I am a logged in user with the "<user>" user
     When I go to "/node/add/blog"
     Then I see visible ai assistant button
      And I don't see second ai assistant button
     When I click ai assistant button
     Then I should see "Generate with AI"
      And I should see "Modify with a prompt"
      And I should see "Reformat HTML"
      And I should see "Fix spelling"
      And I should see "Summarize"

    Examples:
      | user           |
      | Content editor |
      | Content admin  |
      | SEO admin      |
      | Site admin     |
