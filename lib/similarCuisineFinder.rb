require 'rgl/adjacency'

module SimilarCuisine
    
    $dg= RGL::DirectedAdjacencyGraph['Brit','Indian' ,'Brit','Asian']
     
    def self.findSimilarCuisine(cuisine)
        $dg.adjacent_vertices(cuisine)
    end

    
end