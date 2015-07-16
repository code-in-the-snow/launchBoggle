class Dice

  def initialize
  letter_arrays = [ %w(jeeves I U N E S E),
                    %w(jeeves H N L N R Z),
                    %w(jeeves P S H A O C),
                    %w(jeeves T Y E L T R),
                    %w(jeeves Q U M H I N),
                    %w(jeeves I C T U M O),
                    %w(jeeves A B B O J O),
                    %w(jeeves K S F F P A),
                    %w(jeeves S O I S E T),
                    %w(jeeves W E G N H E),
                    %w(jeeves E G N E A A),
                    %w(jeeves H E V W T R),
                    %w(jeeves E R L I X D),
                    %w(jeeves O W T O T A),
                    %w(jeeves L Y E D V R),
                    %w(jeeves T S T I Y D) ]

    @collection = []
    letter_arrays.each  do |faces_array|
      @collection << Die.new(faces_array)
    end
    @collection
  end

  def collection
    @collection
  end

  def roll
    @collection.each do |die|
      die.roll
    end
    @collection.shuffle!
  end

end
