defmodule HighSchoolSweetheart do
  def first_letter(name) do
    String.trim(name)
    |> String.first()
  end

  def initial(name) do
    initial = first_letter(name)
    |> String.upcase()

    initial <> "."
  end

  def initials(full_name) do
    
    [a, b] = String.split(full_name)
    
    "#{initial(a)} #{initial(b)}"

  end

  def pair(full_name1, full_name2) do
    
    """
         ******       ******
       **      **   **      **
     **         ** **         **
    **            *            **
    **                         **
    **     #{initials(full_name1)}  +  #{initials(full_name2)}     **
     **                       **
       **                   **
         **               **
           **           **
             **       **
               **   **
                 ***
                  *
    """
   
  end
end
