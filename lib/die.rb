class Die

  attr :name, :faces
  def initialize(faces)
    @faces = faces
  end

  def visible_face
    faces.last
  end

  def blankout
    faces.first
  end

  def roll
    faces[1..6].shuffle!
  end

end
