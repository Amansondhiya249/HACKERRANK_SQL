select h.hacker_id , h.name from hackers as h  join submissions as s using (hacker_id)  
join challenges as c  using (challenge_id)                                             
join difficulty as d using (difficulty_level) where s.score =  d.score                                                              --   
group by h.hacker_id , h.name 
having count(*) > 1
order by count(*) desc , h.hacker_id;
