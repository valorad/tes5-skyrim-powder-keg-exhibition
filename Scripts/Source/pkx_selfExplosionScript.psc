Scriptname pkx_selfExplosionScript extends Actor

Explosion Property explosionOnFinish Auto

Event OnDeath(Actor _)
  self.PlaceAtMe(explosionOnFinish)
endEvent
