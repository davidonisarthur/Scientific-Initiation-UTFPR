puts "Limpando módulos antigos..."
CourseModule.destroy_all

puts "Criando novos módulos..."
CourseModule.create!([
                       { title: "Módulo 1: Frações", description: "Entenda o conceito básico de frações, numeradores e denominadores.", order: 1 },
                       { title: "Módulo 2: Geometria Plana", description: "Aprenda sobre triângulos, quadrados e cálculo de áreas.", order: 2 },
                       { title: "Módulo 3: Equações do 1º Grau", description: "Descubra o valor de X resolvendo problemas práticos.", order: 3 }
                     ])

puts "Módulos criados com sucesso!"