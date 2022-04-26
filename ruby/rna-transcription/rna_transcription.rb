=begin
Write your code for the 'Rna Transcription' exercise in this file. Make the tests in
`rna_transcription_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/rna-transcription` directory.
=end

class Complement
  @transcribe = {
    'G'=> 'C',
    'C'=> 'G',
    'T'=> 'A',
    'A'=> 'U',
  }
  def self.of_dna(dna_strand)
    rna = []
    dna_strand.split('').each { |nucleotide| rna << @transcribe[nucleotide] }
      rna.join('')
  end
end