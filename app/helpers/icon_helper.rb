module IconHelper
  DEFAULT_ICON_HEIGHT_PX = 18

  def iconify_collection(ary, height = DEFAULT_ICON_HEIGHT_PX)
    return ary.map { |elt| iconify(elt, height) }.join("\n").html_safe
  end

  def iconify(s, height = DEFAULT_ICON_HEIGHT_PX)
    # Not memoizing this stuff is technically slow, but there's not enough
    # work to do that it matters. No need to add complexity (yet).
    rel_icon_paths = Dir.glob('app/assets/images/icons/*.png').
      map { |p| p.gsub('app/assets/images/', '') }
    path_by_icon_name = rel_icon_paths.
      index_by { |p| p.gsub('icons/', '').gsub('.png', '') }
    if path = path_by_icon_name[s.downcase]
      return image_tag(path, height: height, title: s).html_safe
    else
      return nil
    end
  end
end
