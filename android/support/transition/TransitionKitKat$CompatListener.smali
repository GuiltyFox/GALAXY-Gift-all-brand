.class Landroid/support/transition/TransitionKitKat$CompatListener;
.super Ljava/lang/Object;
.source "TransitionKitKat.java"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# instance fields
.field final synthetic a:Landroid/support/transition/TransitionKitKat;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/transition/TransitionInterfaceListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/transition/TransitionKitKat;)V
    .registers 3

    .prologue
    .line 328
    iput-object p1, p0, Landroid/support/transition/TransitionKitKat$CompatListener;->a:Landroid/support/transition/TransitionKitKat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionKitKat$CompatListener;->b:Ljava/util/ArrayList;

    .line 329
    return-void
.end method


# virtual methods
.method a(Landroid/support/transition/TransitionInterfaceListener;)V
    .registers 3

    .prologue
    .line 332
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat$CompatListener;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    return-void
.end method

.method a()Z
    .registers 2

    .prologue
    .line 340
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat$CompatListener;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method b(Landroid/support/transition/TransitionInterfaceListener;)V
    .registers 3

    .prologue
    .line 336
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat$CompatListener;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 337
    return-void
.end method

.method public onTransitionCancel(Landroid/transition/Transition;)V
    .registers 5

    .prologue
    .line 359
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat$CompatListener;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionInterfaceListener;

    .line 360
    iget-object v2, p0, Landroid/support/transition/TransitionKitKat$CompatListener;->a:Landroid/support/transition/TransitionKitKat;

    iget-object v2, v2, Landroid/support/transition/TransitionKitKat;->b:Landroid/support/transition/TransitionInterface;

    invoke-interface {v0, v2}, Landroid/support/transition/TransitionInterfaceListener;->c(Landroid/support/transition/TransitionInterface;)V

    goto :goto_6

    .line 362
    :cond_1a
    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .registers 5

    .prologue
    .line 352
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat$CompatListener;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionInterfaceListener;

    .line 353
    iget-object v2, p0, Landroid/support/transition/TransitionKitKat$CompatListener;->a:Landroid/support/transition/TransitionKitKat;

    iget-object v2, v2, Landroid/support/transition/TransitionKitKat;->b:Landroid/support/transition/TransitionInterface;

    invoke-interface {v0, v2}, Landroid/support/transition/TransitionInterfaceListener;->b(Landroid/support/transition/TransitionInterface;)V

    goto :goto_6

    .line 355
    :cond_1a
    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .registers 5

    .prologue
    .line 366
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat$CompatListener;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionInterfaceListener;

    .line 367
    iget-object v2, p0, Landroid/support/transition/TransitionKitKat$CompatListener;->a:Landroid/support/transition/TransitionKitKat;

    iget-object v2, v2, Landroid/support/transition/TransitionKitKat;->b:Landroid/support/transition/TransitionInterface;

    invoke-interface {v0, v2}, Landroid/support/transition/TransitionInterfaceListener;->d(Landroid/support/transition/TransitionInterface;)V

    goto :goto_6

    .line 369
    :cond_1a
    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .registers 5

    .prologue
    .line 373
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat$CompatListener;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionInterfaceListener;

    .line 374
    iget-object v2, p0, Landroid/support/transition/TransitionKitKat$CompatListener;->a:Landroid/support/transition/TransitionKitKat;

    iget-object v2, v2, Landroid/support/transition/TransitionKitKat;->b:Landroid/support/transition/TransitionInterface;

    invoke-interface {v0, v2}, Landroid/support/transition/TransitionInterfaceListener;->e(Landroid/support/transition/TransitionInterface;)V

    goto :goto_6

    .line 376
    :cond_1a
    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .registers 5

    .prologue
    .line 345
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat$CompatListener;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionInterfaceListener;

    .line 346
    iget-object v2, p0, Landroid/support/transition/TransitionKitKat$CompatListener;->a:Landroid/support/transition/TransitionKitKat;

    iget-object v2, v2, Landroid/support/transition/TransitionKitKat;->b:Landroid/support/transition/TransitionInterface;

    invoke-interface {v0, v2}, Landroid/support/transition/TransitionInterfaceListener;->a(Landroid/support/transition/TransitionInterface;)V

    goto :goto_6

    .line 348
    :cond_1a
    return-void
.end method
