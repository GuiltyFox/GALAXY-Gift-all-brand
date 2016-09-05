.class Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;


# instance fields
.field a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->a:Ljava/util/WeakHashMap;

    .line 318
    return-void
.end method

.method static synthetic a(Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->d(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 337
    .line 338
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->a:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_11

    .line 339
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 340
    if-eqz v0, :cond_11

    .line 341
    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 344
    :cond_11
    return-void
.end method

.method private d(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 294
    const/high16 v0, 0x7e000000

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 296
    instance-of v2, v0, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    if-eqz v2, :cond_37

    .line 297
    check-cast v0, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 299
    :goto_d
    invoke-static {p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->a(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Ljava/lang/Runnable;

    move-result-object v2

    .line 300
    invoke-static {p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->b(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Ljava/lang/Runnable;

    move-result-object v3

    .line 301
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->b(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 302
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->a(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 303
    if-eqz v2, :cond_20

    .line 304
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 306
    :cond_20
    if-eqz v0, :cond_28

    .line 307
    invoke-interface {v0, p2}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationStart(Landroid/view/View;)V

    .line 308
    invoke-interface {v0, p2}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    .line 310
    :cond_28
    if-eqz v3, :cond_2d

    .line 311
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 313
    :cond_2d
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->a:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_36

    .line 314
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    :cond_36
    return-void

    :cond_37
    move-object v0, v1

    goto :goto_d
.end method

.method private e(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 347
    .line 348
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->a:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_2b

    .line 349
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 351
    :goto_d
    if-nez v0, :cond_24

    .line 352
    new-instance v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl$Starter;

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl$Starter;-><init>(Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Landroid/support/v4/view/ViewPropertyAnimatorCompat$1;)V

    .line 353
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->a:Ljava/util/WeakHashMap;

    if-nez v1, :cond_1f

    .line 354
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->a:Ljava/util/WeakHashMap;

    .line 356
    :cond_1f
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    :cond_24
    invoke-virtual {p2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 359
    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 360
    return-void

    :cond_2b
    move-object v0, v1

    goto :goto_d
.end method


# virtual methods
.method public a(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)J
    .registers 5

    .prologue
    .line 115
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public a(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->e(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    .line 93
    return-void
.end method

.method public a(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;J)V
    .registers 5

    .prologue
    .line 87
    return-void
.end method

.method public a(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Landroid/support/v4/view/ViewPropertyAnimatorListener;)V
    .registers 5

    .prologue
    .line 285
    const/high16 v0, 0x7e000000

    invoke-virtual {p2, v0, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 286
    return-void
.end method

.method public a(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;)V
    .registers 4

    .prologue
    .line 291
    return-void
.end method

.method public a(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Landroid/view/animation/Interpolator;)V
    .registers 4

    .prologue
    .line 121
    return-void
.end method

.method public b(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 207
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->e(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    .line 208
    return-void
.end method

.method public b(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->e(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    .line 99
    return-void
.end method

.method public b(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;J)V
    .registers 5

    .prologue
    .line 131
    return-void
.end method

.method public c(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 268
    invoke-direct {p0, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->a(Landroid/view/View;)V

    .line 269
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->d(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    .line 270
    return-void
.end method

.method public c(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->e(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    .line 105
    return-void
.end method
