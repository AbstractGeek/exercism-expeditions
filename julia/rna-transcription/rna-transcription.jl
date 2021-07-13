function to_rna(dna)
    complement = Dict('G' => 'C', 'C' => 'G',  'T' => 'A', 'A' => 'U')
    rna = []
    for nuc in dna
        if haskey(complement, nuc)
            append!(rna, complement[nuc])
        else
            throw(ErrorException("Invalid nucleotide"))
        end
    end
    return join(rna)
end
