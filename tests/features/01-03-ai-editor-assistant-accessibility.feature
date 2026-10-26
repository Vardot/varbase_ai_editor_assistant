@varbase-ai-editor-assistant @ai @recipes @a11y @local @development @staging @production
Feature: Varbase AI Recipe - AI Editor Assistant - Accessible editing with the AI Assistant
  As a content editor who uses assistive technology
  I want the content form with the AI Assistant to work with a keyboard and a screen reader
  So that I can draft with AI like anyone else

  Scenario: Check the blog form gives every field a label and every link a name
    Given I am a logged in user with the "Content editor" user
     When I go to "/node/add/blog"
     Then every form field should have an accessible label
      And every link should have an accessible name
      And every ARIA role should be valid
