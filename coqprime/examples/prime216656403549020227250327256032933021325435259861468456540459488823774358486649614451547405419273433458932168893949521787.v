
(*************************************************************)
(*      This file is distributed under the terms of the      *)
(*      GNU Lesser General Public License Version 2.1        *)
(*************************************************************)
(*    Benjamin.Gregoire@inria.fr Laurent.Thery@inria.fr      *)
(*************************************************************)

Require Import PocklingtonRefl.

Set Virtual Machine.
Open Local Scope positive_scope.

Lemma prime216656403549020227250327256032933021325435259861468456540459488823774358486649614451547405419273433458932168893949521787 : prime 216656403549020227250327256032933021325435259861468456540459488823774358486649614451547405419273433458932168893949521787.
Proof.
 apply (Pocklington_refl
         (Pock_certif 216656403549020227250327256032933021325435259861468456540459488823774358486649614451547405419273433458932168893949521787 2 ((654898412672035770541549498678974366284701838721583240120874775390492750598525740460463, 1)::(2,1)::nil) 1)
        ((Pock_certif 654898412672035770541549498678974366284701838721583240120874775390492750598525740460463 5 ((933197156145546840982434002869386948167992766859866863595707, 1)::(2,1)::nil) 1) ::
         (Pock_certif 933197156145546840982434002869386948167992766859866863595707 2 ((663149843, 1)::(50782967, 1)::(547, 1)::(3, 1)::(2,1)::nil) 146915123513014632519) ::
         (Pock_certif 663149843 2 ((3659, 1)::(2,1)::nil) 2802) ::
         (Pock_certif 50782967 5 ((1093, 1)::(2,1)::nil) 1370) ::
         (Proof_certif 3659 prime3659) ::
         (Proof_certif 1093 prime1093) ::
         (Proof_certif 547 prime547) ::
         (Proof_certif 3 prime3) ::
         (Proof_certif 2 prime2) ::
          nil)).
 exact_no_check (refl_equal true).
Qed.

