.class Landroid/support/transition/TransitionIcs$CompatListener;
.super Ljava/lang/Object;
.source "TransitionIcs.java"

# interfaces
.implements Landroid/support/transition/TransitionPort$TransitionListener;


# instance fields
.field final synthetic a:Landroid/support/transition/TransitionIcs;

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
.method constructor <init>(Landroid/support/transition/TransitionIcs;)V
    .registers 3

    .prologue
    .line 237
    iput-object p1, p0, Landroid/support/transition/TransitionIcs$CompatListener;->a:Landroid/support/transition/TransitionIcs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionIcs$CompatListener;->b:Ljava/util/ArrayList;

    .line 238
    return-void
.end method


# virtual methods
.method public a(Landroid/support/transition/TransitionInterfaceListener;)V
    .registers 3

    .prologue
    .line 241
    iget-object v0, p0, Landroid/support/transition/TransitionIcs$CompatListener;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    return-void
.end method

.method public a(Landroid/support/transition/TransitionPort;)V
    .registers 5

    .prologue
    .line 261
    iget-object v0, p0, Landroid/support/transition/TransitionIcs$CompatListener;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionInterfaceListener;

    .line 262
    iget-object v2, p0, Landroid/support/transition/TransitionIcs$CompatListener;->a:Landroid/support/transition/TransitionIcs;

    iget-object v2, v2, Landroid/support/transition/TransitionIcs;->b:Landroid/support/transition/TransitionInterface;

    invoke-interface {v0, v2}, Landroid/support/transition/TransitionInterfaceListener;->b(Landroid/support/transition/TransitionInterface;)V

    goto :goto_6

    .line 264
    :cond_1a
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Landroid/support/transition/TransitionIcs$CompatListener;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public b(Landroid/support/transition/TransitionInterfaceListener;)V
    .registers 3

    .prologue
    .line 245
    iget-object v0, p0, Landroid/support/transition/TransitionIcs$CompatListener;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 246
    return-void
.end method

.method public b(Landroid/support/transition/TransitionPort;)V
    .registers 5

    .prologue
    .line 275
    iget-object v0, p0, Landroid/support/transition/TransitionIcs$CompatListener;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionInterfaceListener;

    .line 276
    iget-object v2, p0, Landroid/support/transition/TransitionIcs$CompatListener;->a:Landroid/support/transition/TransitionIcs;

    iget-object v2, v2, Landroid/support/transition/TransitionIcs;->b:Landroid/support/transition/TransitionInterface;

    invoke-interface {v0, v2}, Landroid/support/transition/TransitionInterfaceListener;->d(Landroid/support/transition/TransitionInterface;)V

    goto :goto_6

    .line 278
    :cond_1a
    return-void
.end method

.method public c(Landroid/support/transition/TransitionPort;)V
    .registers 5

    .prologue
    .line 282
    iget-object v0, p0, Landroid/support/transition/TransitionIcs$CompatListener;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionInterfaceListener;

    .line 283
    iget-object v2, p0, Landroid/support/transition/TransitionIcs$CompatListener;->a:Landroid/support/transition/TransitionIcs;

    iget-object v2, v2, Landroid/support/transition/TransitionIcs;->b:Landroid/support/transition/TransitionInterface;

    invoke-interface {v0, v2}, Landroid/support/transition/TransitionInterfaceListener;->e(Landroid/support/transition/TransitionInterface;)V

    goto :goto_6

    .line 285
    :cond_1a
    return-void
.end method

.method public d(Landroid/support/transition/TransitionPort;)V
    .registers 5

    .prologue
    .line 254
    iget-object v0, p0, Landroid/support/transition/TransitionIcs$CompatListener;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionInterfaceListener;

    .line 255
    iget-object v2, p0, Landroid/support/transition/TransitionIcs$CompatListener;->a:Landroid/support/transition/TransitionIcs;

    iget-object v2, v2, Landroid/support/transition/TransitionIcs;->b:Landroid/support/transition/TransitionInterface;

    invoke-interface {v0, v2}, Landroid/support/transition/TransitionInterfaceListener;->a(Landroid/support/transition/TransitionInterface;)V

    goto :goto_6

    .line 257
    :cond_1a
    return-void
.end method
