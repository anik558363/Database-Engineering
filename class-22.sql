SELECT array[1,2,3,4,5,6]



SELECT array['html', 'css', 'javascript', 'php']


SELECT (array['html', 'css', 'javascript', 'php'])[2]



SELECT array_length (array['html', 'css', 'javascript', 'php'], 1)  --- array_length(array, 1)



SELECT array_append(array['html', 'css', 'javascript', 'php'], 'database')



SELECT array_prepend('database', array['html', 'css', 'javascript', 'php'])



SELECT array_remove( array['html', 'css', 'javascript', 'php'],'css')



SELECT array_remove( array['html', 'css', 'javascript', 'php'],'css')



SELECT array_positions( array['html', 'css', 'javascript', 'php'],'css')



SELECT unnest(array['html', 'css', 'javascript', 'php'])