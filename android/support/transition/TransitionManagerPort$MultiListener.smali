.class Landroid/support/transition/TransitionManagerPort$MultiListener;
.super Ljava/lang/Object;
.source "TransitionManagerPort.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field a:Landroid/support/transition/TransitionPort;

.field b:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/support/transition/TransitionPort;Landroid/view/ViewGroup;)V
    .registers 3

    .prologue
    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    iput-object p1, p0, Landroid/support/transition/TransitionManagerPort$MultiListener;->a:Landroid/support/transition/TransitionPort;

    .line 385
    iput-object p2, p0, Landroid/support/transition/TransitionManagerPort$MultiListener;->b:Landroid/view/ViewGroup;

    .line 386
    return-void
.end method

.method private a()V
    .registers 2

    .prologue
    .line 389
    iget-object v0, p0, Landroid/support/transition/TransitionManagerPort$MultiListener;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 390
    iget-object v0, p0, Landroid/support/transition/TransitionManagerPort$MultiListener;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 391
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 6

    .prologue
    .line 413
    invoke-direct {p0}, Landroid/support/transition/TransitionManagerPort$MultiListener;->a()V

    .line 414
    sget-object v0, Landroid/support/transition/TransitionManagerPort;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/transition/TransitionManagerPort$MultiListener;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 417
    invoke-static {}, Landroid/support/transition/TransitionManagerPort;->a()Landroid/support/v4/util/ArrayMap;

    move-result-object v2

    .line 418
    iget-object v0, p0, Landroid/support/transition/TransitionManagerPort$MultiListener;->b:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 419
    const/4 v1, 0x0

    .line 420
    if-nez v0, :cond_55

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 422
    iget-object v3, p0, Landroid/support/transition/TransitionManagerPort$MultiListener;->b:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 426
    :goto_26
    iget-object v3, p0, Landroid/support/transition/TransitionManagerPort$MultiListener;->a:Landroid/support/transition/TransitionPort;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    iget-object v1, p0, Landroid/support/transition/TransitionManagerPort$MultiListener;->a:Landroid/support/transition/TransitionPort;

    new-instance v3, Landroid/support/transition/TransitionManagerPort$MultiListener$1;

    invoke-direct {v3, p0, v2}, Landroid/support/transition/TransitionManagerPort$MultiListener$1;-><init>(Landroid/support/transition/TransitionManagerPort$MultiListener;Landroid/support/v4/util/ArrayMap;)V

    invoke-virtual {v1, v3}, Landroid/support/transition/TransitionPort;->a(Landroid/support/transition/TransitionPort$TransitionListener;)Landroid/support/transition/TransitionPort;

    .line 435
    iget-object v1, p0, Landroid/support/transition/TransitionManagerPort$MultiListener;->a:Landroid/support/transition/TransitionPort;

    iget-object v2, p0, Landroid/support/transition/TransitionManagerPort$MultiListener;->b:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/transition/TransitionPort;->a(Landroid/view/ViewGroup;Z)V

    .line 436
    if-eqz v0, :cond_64

    .line 437
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_43
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionPort;

    .line 438
    iget-object v2, p0, Landroid/support/transition/TransitionManagerPort$MultiListener;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/support/transition/TransitionPort;->d(Landroid/view/View;)V

    goto :goto_43

    .line 423
    :cond_55
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6d

    .line 424
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_26

    .line 441
    :cond_64
    iget-object v0, p0, Landroid/support/transition/TransitionManagerPort$MultiListener;->a:Landroid/support/transition/TransitionPort;

    iget-object v1, p0, Landroid/support/transition/TransitionManagerPort$MultiListener;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/support/transition/TransitionPort;->a(Landroid/view/ViewGroup;)V

    .line 443
    const/4 v0, 0x1

    return v0

    :cond_6d
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_26
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 395
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 399
    invoke-direct {p0}, Landroid/support/transition/TransitionManagerPort$MultiListener;->a()V

    .line 401
    sget-object v0, Landroid/support/transition/TransitionManagerPort;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/transition/TransitionManagerPort$MultiListener;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 402
    invoke-static {}, Landroid/support/transition/TransitionManagerPort;->a()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Landroid/support/transition/TransitionManagerPort$MultiListener;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 403
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_34

    .line 404
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionPort;

    .line 405
    iget-object v2, p0, Landroid/support/transition/TransitionManagerPort$MultiListener;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/support/transition/TransitionPort;->d(Landroid/view/View;)V

    goto :goto_22

    .line 408
    :cond_34
    iget-object v0, p0, Landroid/support/transition/TransitionManagerPort$MultiListener;->a:Landroid/support/transition/TransitionPort;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/transition/TransitionPort;->a(Z)V

    .line 409
    return-void
.end method
