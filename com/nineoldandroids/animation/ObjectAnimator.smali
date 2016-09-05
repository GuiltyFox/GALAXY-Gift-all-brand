.class public final Lcom/nineoldandroids/animation/ObjectAnimator;
.super Lcom/nineoldandroids/animation/ValueAnimator;
.source "ObjectAnimator.java"


# static fields
.field private static final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nineoldandroids/util/Property;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private i:Ljava/lang/Object;

.field private j:Ljava/lang/String;

.field private k:Lcom/nineoldandroids/util/Property;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nineoldandroids/animation/ObjectAnimator;->h:Ljava/util/Map;

    .line 44
    sget-object v0, Lcom/nineoldandroids/animation/ObjectAnimator;->h:Ljava/util/Map;

    const-string/jumbo v1, "alpha"

    sget-object v2, Lcom/nineoldandroids/animation/PreHoneycombCompat;->a:Lcom/nineoldandroids/util/Property;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/nineoldandroids/animation/ObjectAnimator;->h:Ljava/util/Map;

    const-string/jumbo v1, "pivotX"

    sget-object v2, Lcom/nineoldandroids/animation/PreHoneycombCompat;->b:Lcom/nineoldandroids/util/Property;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/nineoldandroids/animation/ObjectAnimator;->h:Ljava/util/Map;

    const-string/jumbo v1, "pivotY"

    sget-object v2, Lcom/nineoldandroids/animation/PreHoneycombCompat;->c:Lcom/nineoldandroids/util/Property;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/nineoldandroids/animation/ObjectAnimator;->h:Ljava/util/Map;

    const-string/jumbo v1, "translationX"

    sget-object v2, Lcom/nineoldandroids/animation/PreHoneycombCompat;->d:Lcom/nineoldandroids/util/Property;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/nineoldandroids/animation/ObjectAnimator;->h:Ljava/util/Map;

    const-string/jumbo v1, "translationY"

    sget-object v2, Lcom/nineoldandroids/animation/PreHoneycombCompat;->e:Lcom/nineoldandroids/util/Property;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/nineoldandroids/animation/ObjectAnimator;->h:Ljava/util/Map;

    const-string/jumbo v1, "rotation"

    sget-object v2, Lcom/nineoldandroids/animation/PreHoneycombCompat;->f:Lcom/nineoldandroids/util/Property;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/nineoldandroids/animation/ObjectAnimator;->h:Ljava/util/Map;

    const-string/jumbo v1, "rotationX"

    sget-object v2, Lcom/nineoldandroids/animation/PreHoneycombCompat;->g:Lcom/nineoldandroids/util/Property;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/nineoldandroids/animation/ObjectAnimator;->h:Ljava/util/Map;

    const-string/jumbo v1, "rotationY"

    sget-object v2, Lcom/nineoldandroids/animation/PreHoneycombCompat;->h:Lcom/nineoldandroids/util/Property;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/nineoldandroids/animation/ObjectAnimator;->h:Ljava/util/Map;

    const-string/jumbo v1, "scaleX"

    sget-object v2, Lcom/nineoldandroids/animation/PreHoneycombCompat;->i:Lcom/nineoldandroids/util/Property;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/nineoldandroids/animation/ObjectAnimator;->h:Ljava/util/Map;

    const-string/jumbo v1, "scaleY"

    sget-object v2, Lcom/nineoldandroids/animation/PreHoneycombCompat;->j:Lcom/nineoldandroids/util/Property;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/nineoldandroids/animation/ObjectAnimator;->h:Ljava/util/Map;

    const-string/jumbo v1, "scrollX"

    sget-object v2, Lcom/nineoldandroids/animation/PreHoneycombCompat;->k:Lcom/nineoldandroids/util/Property;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/nineoldandroids/animation/ObjectAnimator;->h:Ljava/util/Map;

    const-string/jumbo v1, "scrollY"

    sget-object v2, Lcom/nineoldandroids/animation/PreHoneycombCompat;->l:Lcom/nineoldandroids/util/Property;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/nineoldandroids/animation/ObjectAnimator;->h:Ljava/util/Map;

    const-string/jumbo v1, "x"

    sget-object v2, Lcom/nineoldandroids/animation/PreHoneycombCompat;->m:Lcom/nineoldandroids/util/Property;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/nineoldandroids/animation/ObjectAnimator;->h:Ljava/util/Map;

    const-string/jumbo v1, "y"

    sget-object v2, Lcom/nineoldandroids/animation/PreHoneycombCompat;->n:Lcom/nineoldandroids/util/Property;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/nineoldandroids/animation/ValueAnimator;-><init>()V

    .line 151
    return-void
.end method


# virtual methods
.method public a(J)Lcom/nineoldandroids/animation/ObjectAnimator;
    .registers 4

    .prologue
    .line 427
    invoke-super {p0, p1, p2}, Lcom/nineoldandroids/animation/ValueAnimator;->b(J)Lcom/nineoldandroids/animation/ValueAnimator;

    .line 428
    return-object p0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 385
    invoke-super {p0}, Lcom/nineoldandroids/animation/ValueAnimator;->a()V

    .line 386
    return-void
.end method

.method a(F)V
    .registers 6

    .prologue
    .line 491
    invoke-super {p0, p1}, Lcom/nineoldandroids/animation/ValueAnimator;->a(F)V

    .line 492
    iget-object v0, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->f:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    array-length v1, v0

    .line 493
    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_15

    .line 494
    iget-object v2, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->f:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->i:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->b(Ljava/lang/Object;)V

    .line 493
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 496
    :cond_15
    return-void
.end method

.method public a(Lcom/nineoldandroids/util/Property;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 118
    iget-object v0, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->f:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v0, :cond_1c

    .line 119
    iget-object v0, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->f:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v0, v0, v3

    .line 120
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->c()Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->a(Lcom/nineoldandroids/util/Property;)V

    .line 122
    iget-object v2, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v1, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->g:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_1c
    iget-object v0, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->k:Lcom/nineoldandroids/util/Property;

    if-eqz v0, :cond_26

    .line 126
    invoke-virtual {p1}, Lcom/nineoldandroids/util/Property;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->j:Ljava/lang/String;

    .line 128
    :cond_26
    iput-object p1, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->k:Lcom/nineoldandroids/util/Property;

    .line 130
    iput-boolean v3, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->e:Z

    .line 131
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 448
    iget-object v0, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->i:Ljava/lang/Object;

    if-eq v0, p1, :cond_16

    .line 449
    iget-object v0, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->i:Ljava/lang/Object;

    .line 450
    iput-object p1, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->i:Ljava/lang/Object;

    .line 451
    if-eqz v0, :cond_17

    if-eqz p1, :cond_17

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_17

    .line 457
    :cond_16
    :goto_16
    return-void

    .line 455
    :cond_17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->e:Z

    goto :goto_16
.end method

.method public a(Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 96
    iget-object v0, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->f:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v0, :cond_1a

    .line 97
    iget-object v0, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->f:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v0, v0, v3

    .line 98
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->c()Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->a(Ljava/lang/String;)V

    .line 100
    iget-object v2, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v1, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->g:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_1a
    iput-object p1, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->j:Ljava/lang/String;

    .line 105
    iput-boolean v3, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->e:Z

    .line 106
    return-void
.end method

.method public varargs a([F)V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 345
    iget-object v0, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->f:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->f:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    array-length v0, v0

    if-nez v0, :cond_2b

    .line 348
    :cond_b
    iget-object v0, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->k:Lcom/nineoldandroids/util/Property;

    if-eqz v0, :cond_1d

    .line 349
    new-array v0, v1, [Lcom/nineoldandroids/animation/PropertyValuesHolder;

    iget-object v1, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->k:Lcom/nineoldandroids/util/Property;

    invoke-static {v1, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->a(Lcom/nineoldandroids/util/Property;[F)Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->a([Lcom/nineoldandroids/animation/PropertyValuesHolder;)V

    .line 356
    :goto_1c
    return-void

    .line 351
    :cond_1d
    new-array v0, v1, [Lcom/nineoldandroids/animation/PropertyValuesHolder;

    iget-object v1, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->j:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->a(Ljava/lang/String;[F)Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->a([Lcom/nineoldandroids/animation/PropertyValuesHolder;)V

    goto :goto_1c

    .line 354
    :cond_2b
    invoke-super {p0, p1}, Lcom/nineoldandroids/animation/ValueAnimator;->a([F)V

    goto :goto_1c
.end method

.method public varargs a([I)V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 330
    iget-object v0, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->f:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->f:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    array-length v0, v0

    if-nez v0, :cond_2b

    .line 333
    :cond_b
    iget-object v0, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->k:Lcom/nineoldandroids/util/Property;

    if-eqz v0, :cond_1d

    .line 334
    new-array v0, v1, [Lcom/nineoldandroids/animation/PropertyValuesHolder;

    iget-object v1, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->k:Lcom/nineoldandroids/util/Property;

    invoke-static {v1, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->a(Lcom/nineoldandroids/util/Property;[I)Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->a([Lcom/nineoldandroids/animation/PropertyValuesHolder;)V

    .line 341
    :goto_1c
    return-void

    .line 336
    :cond_1d
    new-array v0, v1, [Lcom/nineoldandroids/animation/PropertyValuesHolder;

    iget-object v1, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->j:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->a(Ljava/lang/String;[I)Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->a([Lcom/nineoldandroids/animation/PropertyValuesHolder;)V

    goto :goto_1c

    .line 339
    :cond_2b
    invoke-super {p0, p1}, Lcom/nineoldandroids/animation/ValueAnimator;->a([I)V

    goto :goto_1c
.end method

.method public synthetic b(J)Lcom/nineoldandroids/animation/ValueAnimator;
    .registers 4

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/nineoldandroids/animation/ObjectAnimator;->a(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/nineoldandroids/animation/Animator;
    .registers 2

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/ObjectAnimator;->e()Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/ObjectAnimator;->e()Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method d()V
    .registers 5

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->e:Z

    if-nez v0, :cond_3e

    .line 405
    iget-object v0, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->k:Lcom/nineoldandroids/util/Property;

    if-nez v0, :cond_29

    sget-boolean v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->a:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->i:Ljava/lang/Object;

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_29

    sget-object v0, Lcom/nineoldandroids/animation/ObjectAnimator;->h:Ljava/util/Map;

    iget-object v1, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->j:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 406
    sget-object v0, Lcom/nineoldandroids/animation/ObjectAnimator;->h:Ljava/util/Map;

    iget-object v1, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->j:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/util/Property;

    invoke-virtual {p0, v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->a(Lcom/nineoldandroids/util/Property;)V

    .line 408
    :cond_29
    iget-object v0, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->f:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    array-length v1, v0

    .line 409
    const/4 v0, 0x0

    :goto_2d
    if-ge v0, v1, :cond_3b

    .line 410
    iget-object v2, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->f:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->i:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->a(Ljava/lang/Object;)V

    .line 409
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 412
    :cond_3b
    invoke-super {p0}, Lcom/nineoldandroids/animation/ValueAnimator;->d()V

    .line 414
    :cond_3e
    return-void
.end method

.method public e()Lcom/nineoldandroids/animation/ObjectAnimator;
    .registers 2

    .prologue
    .line 500
    invoke-super {p0}, Lcom/nineoldandroids/animation/ValueAnimator;->f()Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/ObjectAnimator;

    .line 501
    return-object v0
.end method

.method public synthetic f()Lcom/nineoldandroids/animation/ValueAnimator;
    .registers 2

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/ObjectAnimator;->e()Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ObjectAnimator@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", target "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->i:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 508
    iget-object v0, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->f:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v0, :cond_56

    .line 509
    const/4 v0, 0x0

    :goto_2e
    iget-object v2, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->f:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    array-length v2, v2

    if-ge v0, v2, :cond_56

    .line 510
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->f:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 509
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 513
    :cond_56
    return-object v1
.end method
