module IconHelper
  def iconify_collection(ary, height = 18)
    return ary.map { |elt| iconify(elt, height) }.join("\n").html_safe
  end

  def iconify(s, height = 18)
    puts "*"*100
    puts s
    rel_icon_paths = Dir.glob('app/assets/images/icons/*.png').
      map { |p| p.gsub('app/assets/images/', '') }
    path_by_icon_name = rel_icon_paths.
      index_by { |p| p.gsub('icons/', '').gsub('.png', '') }
    if path = path_by_icon_name[s.downcase]
      return image_tag(path, height: height).html_safe
    else
      return nil
    end
  end
end
