puts "Limpando banco de dados..."
Question.destroy_all
CourseModule.destroy_all

puts "Criando novos módulos..."
modulo_fracoes = CourseModule.create!(title: "Módulo 1: Frações", description: "Entenda o conceito básico de frações, numeradores e denominadores.", order: 1)
modulo_geometria = CourseModule.create!(title: "Módulo 2: Geometria Plana", description: "Aprenda sobre triângulos, quadrados e cálculo de áreas.", order: 2)
modulo_equacoes = CourseModule.create!(title: "Módulo 3: Equações do 1º Grau", description: "Descubra o valor de X resolvendo problemas práticos.", order: 3)

puts "Criando questões com vídeos em Libras..."

Question.create!([
                   {
                     course_module: modulo_fracoes,
                     question_text: "Se você comer 2 pedaços de uma pizza que foi dividida em 8 partes iguais, qual fração da pizza você comeu?",
                     option_a: "1/2",
                     option_b: "1/4",
                     option_c: "2/8",
                     option_d: "Ambas B e C estão corretas",
                     correct_answer: "d",
                     video_libras_url: "https://www.youtube.com/embed/ScMzIvxBSi4" # URL de exemplo (YouTube)
                   },
                   {
                     course_module: modulo_fracoes,
                     question_text: "Qual é o resultado da soma: 1/2 + 1/2?",
                     option_a: "1/4",
                     option_b: "1",
                     option_c: "2/4",
                     option_d: "2",
                     correct_answer: "b",
                     video_libras_url: "https://www.youtube.com/embed/ScMzIvxBSi4"
                   }
                 ])

Question.create!(
  course_module: modulo_geometria,
  question_text: "Como calculamos a área de um quadrado?",
  option_a: "Base vezes a Altura (Lado x Lado)",
  option_b: "Soma de todos os lados",
  option_c: "Base vezes a Altura dividido por 2",
  option_d: "Pi vezes o Raio ao quadrado",
  correct_answer: "a",
  video_libras_url: "https://www.youtube.com/embed/ScMzIvxBSi4"
)

puts "Tudo pronto! #{CourseModule.count} módulos e #{Question.count} questões criados."