module Jekyll
    class PagesTagPageGenerator < Generator
      safe true
  
      def generate(site)
        site.pages.each do |page|
          next unless page.data['tags']
  
          page.data['tags'].each do |tag|
            tag_dir = File.join('tags', tag)
            site.pages << TagPage.new(site, site.source, tag_dir, tag)
          end
        end
      end
    end
  
    class TagPage < Page
      def initialize(site, base, dir, tag)
        @site = site
        @base = base
        @dir = dir
        @name = 'index.html'
  
        self.process(@name)
        self.read_yaml(File.join(base, '_layouts'), 'tag.html')
        self.data['tag'] = tag
        self.data['title'] = "Pages tagged with \"#{tag}\""
      end
    end
  end
  