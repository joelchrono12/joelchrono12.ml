Jekyll::Hooks.register :posts, :post_write do |post|
  all_existing_tags = Dir.entries("tags")
    .map { |t| t.match(/(.*).md/) }
    .compact.map { |m| m[1] }

  tags = post['tags'].reject { |t| t.empty? }
  tags.each do |tag|
    generate_tag_file(tag) if !all_existing_tags.include?(tag)
  end
end

def generate_tag_file(tag)
  # generate tag file
  File.open("tags/#{tag}.md", "wb") do |file|
    #file << "---\nlayout: tags\ntag-name: #{tag}\npermalink: /more/tags/#{tag}/\n---\n"
    file << "---\nlayout: tags\ntag-name: #{tag}\nredirect_from: /tags/#{tag}/\npermalink: /more/tags/#{tag}/\n---\n"
  end
end
# generate feed file
# File.open("feeds/#{tag}.xml", "wb") do |file|
# file << "---\nlayout: feed\ntag-name: #{tag}\n---\n"
# end
