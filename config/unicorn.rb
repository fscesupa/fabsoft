working_directory "/home/fabsoft/site/fabsoft" # Local do projeto
pid "/home/fabsoft/site/fabsoft/tmp/pids/server.pid" #Local do arquivo pid
stderr_path "/home/fabsoft/site/fabsoft/log/unicorn.stderr.log" # Arquivo de log de Erro
stdout_path "/home/fabsoft/site/fabsoft/log/unicorn.stdout.log" # Arquivo do log de saida
listen "/home/fabsoft/site/fabsoft/tmp/unicorn.todo.sock" # Guarde Esse Nome* 
worker_processes 2
timeout 30 # Tempo de espera até entrar em timeout(pagina demorou muito para responder)