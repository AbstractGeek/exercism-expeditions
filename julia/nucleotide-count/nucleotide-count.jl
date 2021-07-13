"""
    count_nucleotides(strand)

The frequency of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""
function count_nucleotides(strand)
    counts = Dict('A' => 0, 'C' => 0, 'G' => 0, 'T' => 0)
    for nuc in strand
        if nuc == 'A' || nuc == 'C' || nuc == 'G' || nuc == 'T'
            counts[nuc] += 1
        else
            throw(DomainError(nuc, "Invalid nucleotide"))
        end
    end
    return counts
end
