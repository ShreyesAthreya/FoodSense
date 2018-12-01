require 'minitest/autorun'
require 'similarCuisineFinder'

class SimilarCuisineFinderTest < Minitest::Test
    
    def similarity_of_dishess
        
        assert_equal(['Indian','Asian'],SimilarCuisine.findSimilarCuisine('Brit'))
    end
end