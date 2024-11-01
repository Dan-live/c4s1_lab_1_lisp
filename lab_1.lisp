(defvar my-list nil)
(setq my-list
    (list 'x
          8                          
          'y
          (list 'a 'b 'c)           
          (list 'w 'z (list 2 5) nil))) 

(format t "~%1. Printing my-list")
(print my-list)
(format t "~%2. Printing head of my-list")
(print (car my-list))
(format t "~%3. Printing tail of my-list")
(print (cdr my-list))
(format t "~%4. Printing third element of my-list")
(print (nth 2 my-list))
(format t "~%5. Printing last element of my-list")
(print (car (last my-list)))

(format t "~%6.1.1 Printing check ATOMarity of first element of my-list => 'X' ")
(print (atom (car my-list)))
(format t "~%6.1.2 Printing check ATOMarity of fourth element of my-list => '(A B C)' ")
(print (atom (nth 3 my-list)))
(format t "~%6.1.3 Printing check ATOMarity of last element of my-list 'NIL' ")
(print (atom (car (last my-list))))

(format t "~%6.2.1 Printing check LISTParity of first element of my-list => 'X' ")
(print (listp (car my-list)))
(format t "~%6.2.2 Printing check LISTParity of fourth element of my-list => '(A B C)' ")
(print (listp (nth 3 my-list)))
(format t "~%6.2.3 Printing check LISTParity of last element of my-list 'NIL' ")
(print (listp (car (last my-list))))

(format t "~%7.1.1 Printing check EQLarity of first element of my-list => 'X' and 'x' ")
(print (eql (car my-list) 'x))
(format t "~%7.1.2 Printing check EQLarity of second element of my-list => '8' and 8.0 ")
(print (eql (second my-list) 8.0))
(format t "~%7.1.3 Printing check EQLarity of fourth element of my-list => '(A B C)' and (A B C) ")
(print (eql (nth 3 my-list) '('a 'b)))

(format t "~%7.2.1 Printing check NULLarity of first element of my-list => 'X' ")
(print (eql (car my-list) 'x))
(format t "~%7.2.2 Printing check NULLarity of fourth element of my-list => '(A B C)' ")
(print (eql (nth 3 my-list) 8.0))
(format t "~%7.2.3 Printing check NULLarity of last element of my-list 'NIL' ")
(print (eql (car (last my-list)) '('a 'b)))

(format t "~%7.3.1 Printing check EQUALParity of first element of my-list => 'X' and x ")
(print (equalp (car my-list) 'x))
(format t "~%7.3.2 Printing check EQUALParity of second element of my-list => '8' and 8.0 ")
(print (equalp (second my-list) 8.0))
(format t "~%7.3.3 Printing check EQLUALParity of fourth element of my-list => '(A B C)' and (A B C) ")
(print (equalp (nth 3 my-list) (list 'a 'b 'c)))


(format t "~%8. Printing appended my-list with fourth element of my list => '(A B C)' ")
(print (append my-list (nth 3 my-list)))
(format t "~%9. Resolving task")



(defvar cellA (cons 'a nil))  

(setq my-list
  (list
   (cons 1 cellA)  
   (cons 2 cellA)  
   (cons 3 cellA)  
   'c             
   )) 

(print my-list)