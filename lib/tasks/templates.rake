namespace :templates do
  task :compile do
    Rake::Templates.compile_all
  end

  task :clean do
    Rake::Templates.clean
  end
end
