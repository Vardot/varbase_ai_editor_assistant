@varbase-ai-editor-assistant @ai @recipes @local @development
Feature: Varbase AI Recipe - AI Editor Assistant - Draft text with AI and keep it
  As a content editor
  I want to ask the AI Assistant for text, review it and put it into my content
  So that I start from a draft instead of a blank page

  Scenario: Verify an editor drafts a blog post with the AI Assistant and saves it
    CI has no real RAG or vector database hosting: it uses only what the pipeline has and the free amazee.ai
    trial from Drupal CMS AI (thanks to amazee.ai). A short answer comes back within 10 seconds.
    Given I am a logged in user with the "Content editor" user
     When I go to "/node/add/blog"
      And I fill in "Title" with "Drafted with the AI Assistant"
      And I fill in "Description" with "A blog post drafted with the AI Assistant."
      And I click ai assistant button
      And I click "Generate with AI"
     Then I should see "AI Assistant - Generate with AI"
     When I fill in "What would you like to ask or get ideas for?" with "Reply with exactly this sentence and nothing else: Varbase drafts with AI."
      And I press "Generate"
      And I wait max of 10 seconds
     Then I see visible ai draft
     When I press "Save changes to editor"
      And I press "Save"
     Then I should see "Drafted with the AI Assistant"
      And I should see "Varbase drafts with AI"
