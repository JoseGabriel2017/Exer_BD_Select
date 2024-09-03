//Todos os alunos de uma determinada disciplina
  
select a.nomealuno, d.nomedisciplina from 
aluno a, disciplina d, notas n where
n.iddisciplina = d.iddisciplina and
n.idaluno = a.idaluno and
d.iddisciplina = 1;

//Os alunos aprovados em um determinada disciplina
  
select d.nomedisciplina, a.nomealuno from 
aluno a, disciplina d, notas n where
n.idaluno = a.id_aluno and
n.iddisciplina = d.id_disciplina and
d.iddisciplina = 1 and n.nota >= 6;

//A quantidade de professores que um determinado aluno tenha
  
select a.nomealuno, count(d.idprofessor) from 
aluno a, disciplina d, notas n, professor p where
n.iddisciplina = d.iddisciplina and
n.idaluno = a.idaluno and
d.idprofessor = p.idprofessor
group by a.nomealuno;   

//Quantos alunos tem uma determinada disciplina
  
select count(a.nomealuno), d.nomedisciplina from 
aluno a, notas n, disciplina d, professor p where
n.iddisciplina = d.iddisciplina and
n.idaluno = a.idaluno and
d.idprofessor = p.idprofessor
group by d.nomedisciplina;
