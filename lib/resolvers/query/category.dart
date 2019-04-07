String categoriesQuery = """
  query{
    categories{
      id
      name
      image
      bannerImage
      slug
    }
  }
"""
    .replaceAll('\n', ' ');
