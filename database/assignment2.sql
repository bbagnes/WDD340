1. 
INSERT INTO public.account 
(account_firstname, account_lastname, account_email,account_password)
VALUES ('Tony', 'Stark', 'tony@starkent.com', 'Iam1ronM@n');

2.
UPDATE public.account SET account_type = 'Admin' WHERE account_lastname = 'Stark';

3.
DELETE FROM public.account WHERE account_firstname = 'Tony' AND account_lastname = 'Stark';

4.
-- Changed text in UPDATE from 'small interiors' to 'the small interiors' for grammar. 
UPDATE public.inventory 
SET inv_description = REPLACE(inv_description, 'the small interiors','a huge interior')
WHERE inv_model = 'Hummer';

5.
SELECT inv_make, inv_model FROM public.inventory
JOIN public.classification ON inventory.classification_id = classification.classification_id
WHERE classification.classification_id = 2; 

6.
UPDATE public.inventory 
SET inv_image = REPLACE(inv_image, '/images','/images/vehicles'),
inv_thumbnail = REPLACE(inv_thumbnail, '/images', '/images/vehicles');

