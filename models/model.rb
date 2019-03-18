require 'net/http'
require 'json'
require 'pp'
# url = 'https://opentdb.com/api.php?amount=1&category=9&difficulty=hard&type=multiple'
# uri = URI(url)
# response = Net::HTTP.get(uri)
# result = JSON.parse(response)
# pp result["results"][0]["question"]

class Trivia
    attr_reader :question,:correct_answer,:incorrect_answers
    def initialize(question, correct_answer, incorrect_answers)
        url = 'https://opentdb.com/api.php?amount=1&category=9&difficulty=hard&type=multiple'
        uri = URI(url)
        response = Net::HTTP.get(uri)
        result = JSON.parse(response)
        # pp result["results"][0]["question"]
        @question = question = result["results"][0]["question"]
        @correct_answer = correct_answer = result["results"][0]["correct_answer"]
        @incorrect_answers = incorrect_answers = result["results"][0]["incorrect_answers"]
    end
    def answers(correct_answer,incorrect_answer1,incorrect_answer2,incorrect_answer3)
        
        correct_answer = result["results"][0]["correct_answer"]
        
        incorrect_answer1 = result["results"][0]["incorrect_answers"][1]
        incorrect_answer2=result["results"][0]["incorrect_answers"][2]
        incorrect_answer3=result["results"][0]["incorrect_answers"][0]
    end
end