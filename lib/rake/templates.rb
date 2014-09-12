require "rake"
require "tilt"
require "rake/templates/version"
require "rake/templates/context"
load 'tasks/templates.rake'

module Rake
  module Templates
    module_function

    def public
      Pathname.new("public")
    end

    def all
      Dir["templates/**/*"].map do |file|
        path = Pathname.new(file)
        next if path.directory?
        next if path.to_s =~ /^_/
        path
      end.compact
    end

    def compile(file)
      public.mkpath unless public.exist?

      template = Tilt.new(file.to_s)
      context = Context.new
      rendered_content = template.render(context)
      path = result_path(template)
      path.open("w") do |f|
        f << rendered_content
      end
    end

    def result_path(template)
      extra_endings = template.file.split(".")[2..-1].join(".")
      dirname = File.dirname(template.file).gsub(/^templates/, "public")
      basename = template.basename(".#{extra_endings}")
      dir = Pathname.new(dirname)
      dir.mkpath
      dir.join(basename)
    end

    def compile_all
      all.each do |file|
        compile file
      end
    end

    def clean
      public.rmtree if public.exist?
      public.mkpath unless public.exist?
    end
  end
end
