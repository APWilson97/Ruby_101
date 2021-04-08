# input: string
# output: boolean
# rules:
# two letters per block, can only use one letter from each block once
# once a letter from the block is used, that block cannot be used again
# the input string is case insensitive
# return true if the word can be spelled using the blocks, false if otherwise
# data structure: hash
# algorithm:
# initialize a variable and assign it to the characters of the input string
# initialize a variable and assign it to a hash with the keys as the two letter blocks and the values as a string saying whether the block has been used or not
# iterate through the character array first and then iterate through the letter block hash for each element of the character array to check whether the block has been used or not
# if the block contains the character and it has not been used then change the block to used and move on to the next character in the character array
# if the block has been used, return false



def block_word?(word)
  letter_block_hash = {'BO' => 'not used', 'XK' => 'not used', 'DQ' => 'not used', 'CP' => 'not used', 'NA' => 'not used', 'GT' => 'not used', 'RE' => 'not used', 'FS' => 'not used', 'JW' => 'not used', 'HU' => 'not used', 'VI' => 'not used', 'LY' => 'not used', 'ZM' => 'not used'}
  
  result = nil
  letter_block_hash.each do |blocks, state|
    if word.count(blocks) >= 2
      result = false
      break
    end
    result = true
  end
  result
end

# or

BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(string)
  up_string = string.upcase
  BLOCKS.none? { |block| up_string.count(block) >= 2 }
end