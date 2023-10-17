defmodule GuessGame do

  @moduledoc """
      the machine has to guess the number in the users head
      so it is the user who is supposted to tell the machine if it is right or not

      if right yes ---
      if not
        is it higher or lower
  """

  def guess(low_number, high_number) when low_number > high_number , do: guess(high_number, low_number)

  def guess(low_number, high_number) do

    #the machine can only guess the number in the middle

    answer = mid(low_number,high_number)

    response = IO.gets("is the number this  #{answer} type yes, bigger or smaller")
  
    case String.trim( response) do
      "bigger" ->
        bigger(answer, high_number)
      "smaller" ->
        smaller(low_number, answer)
      "yes" ->
        "i knew this is you number"
      _-> IO.puts("enter the expected values next time")

    
    end

  
  end
  
  def bigger(low_number, high_number) do

    new_low = min(low_number, high_number)
    guess(new_low,high_number)
  
end
  def smaller(low_number,high_number) do

    new_high = min(low_number,high_number)

    guess(low_number, new_high)
  end
  def mid(low_number, high_number) do

    div((low_number + high_number), 2)
  end
end
