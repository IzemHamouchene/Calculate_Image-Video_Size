# Master 1 SII : Multimédia

## TP 3 : Calculate size
Le but de ce TP est de mettre en pratique les notions apprises durant le [cours](https://canvas.instructure.com/courses/4077355/files/164844328?module_item_id=59396783) pour le calcul des images niveau de gris, couleurs et vidéo.


`Pour rappel`
Chaque pixel d’une image niveau de gris est codé sur 8 bits.
Pour la conversion 

⋅⋅* 1 octet = 8 bits
⋅⋅* 1 ko = 1024 octet
⋅⋅* 1 mo = 1024 ko
⋅⋅* 1 go = 1024 mo

### Exercice 1 : Image size (CalculateImageSize.c)

Il vous est demandé d’écrire un programme en langage C qui calcule la taille d’une image niveau de gris et couleur.

##### Paramètre d’entrées
Le programme reçoit deux paramètres en entrées (langeure et largeur) de l’image sous format string.

##### Paramètre de sortie
Le programme doit afficher la taille de l’image niveau de gris et la taille de l’image couleur (à afficher deux chiffres après la virgule).
