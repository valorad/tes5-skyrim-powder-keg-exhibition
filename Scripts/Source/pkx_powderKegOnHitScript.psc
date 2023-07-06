Scriptname pkx_powderKegOnHitScript extends ObjectReference  

Spell[] Property effectSpells Auto

Bool wasHit = false

Event OnHit(ObjectReference aggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, bool abBashAttack, bool abHitBlocked)
  if (!wasHit)
    wasHit = true
    int index = 0
    while (index < effectSpells.Length)
      Spell currentSpell = effectSpells[index]
      currentSpell.Cast(self, self)
      index = index + 1
    endWhile
    
  endIf
EndEvent
