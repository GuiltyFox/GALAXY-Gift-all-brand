.class Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Landroid/support/v4/animation/AnimatorListenerCompat;


# instance fields
.field private final a:Landroid/support/v4/animation/ValueAnimatorCompat;

.field private final b:I

.field private c:Z

.field final d:F

.field final e:F

.field final f:F

.field final g:F

.field final h:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field final i:I

.field public j:Z

.field k:F

.field l:F

.field m:Z

.field final synthetic n:Landroid/support/v7/widget/helper/ItemTouchHelper;

.field private o:F


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIFFFF)V
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 2330
    iput-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->n:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2323
    iput-boolean v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->m:Z

    .line 2325
    iput-boolean v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->c:Z

    .line 2331
    iput p4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->i:I

    .line 2332
    iput p3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->b:I

    .line 2333
    iput-object p2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->h:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 2334
    iput p5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->d:F

    .line 2335
    iput p6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->e:F

    .line 2336
    iput p7, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->f:F

    .line 2337
    iput p8, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->g:F

    .line 2338
    invoke-static {}, Landroid/support/v4/animation/AnimatorCompatHelper;->a()Landroid/support/v4/animation/ValueAnimatorCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->a:Landroid/support/v4/animation/ValueAnimatorCompat;

    .line 2339
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->a:Landroid/support/v4/animation/ValueAnimatorCompat;

    new-instance v1, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation$1;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation$1;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;Landroid/support/v7/widget/helper/ItemTouchHelper;)V

    invoke-interface {v0, v1}, Landroid/support/v4/animation/ValueAnimatorCompat;->a(Landroid/support/v4/animation/AnimatorUpdateListenerCompat;)V

    .line 2346
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->a:Landroid/support/v4/animation/ValueAnimatorCompat;

    iget-object v1, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/animation/ValueAnimatorCompat;->a(Landroid/view/View;)V

    .line 2347
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->a:Landroid/support/v4/animation/ValueAnimatorCompat;

    invoke-interface {v0, p0}, Landroid/support/v4/animation/ValueAnimatorCompat;->a(Landroid/support/v4/animation/AnimatorListenerCompat;)V

    .line 2348
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->a(F)V

    .line 2349
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;)Z
    .registers 2

    .prologue
    .line 2297
    iget-boolean v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->c:Z

    return v0
.end method

.method static synthetic b(Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;)I
    .registers 2

    .prologue
    .line 2297
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->b:I

    return v0
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 2356
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->h:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 2357
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->a:Landroid/support/v4/animation/ValueAnimatorCompat;

    invoke-interface {v0}, Landroid/support/v4/animation/ValueAnimatorCompat;->a()V

    .line 2358
    return-void
.end method

.method public a(F)V
    .registers 2

    .prologue
    .line 2365
    iput p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->o:F

    .line 2366
    return-void
.end method

.method public a(J)V
    .registers 4

    .prologue
    .line 2352
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->a:Landroid/support/v4/animation/ValueAnimatorCompat;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/animation/ValueAnimatorCompat;->a(J)V

    .line 2353
    return-void
.end method

.method public a(Landroid/support/v4/animation/ValueAnimatorCompat;)V
    .registers 2

    .prologue
    .line 2388
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 2361
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->a:Landroid/support/v4/animation/ValueAnimatorCompat;

    invoke-interface {v0}, Landroid/support/v4/animation/ValueAnimatorCompat;->b()V

    .line 2362
    return-void
.end method

.method public b(Landroid/support/v4/animation/ValueAnimatorCompat;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 2392
    iget-boolean v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->c:Z

    if-nez v0, :cond_a

    .line 2393
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->h:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 2395
    :cond_a
    iput-boolean v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->c:Z

    .line 2396
    return-void
.end method

.method public c()V
    .registers 5

    .prologue
    .line 2373
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->d:F

    iget v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->f:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_25

    .line 2374
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->h:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->n(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->k:F

    .line 2378
    :goto_12
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->e:F

    iget v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->g:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_33

    .line 2379
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->h:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->o(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->l:F

    .line 2383
    :goto_24
    return-void

    .line 2376
    :cond_25
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->d:F

    iget v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->o:F

    iget v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->f:F

    iget v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->d:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->k:F

    goto :goto_12

    .line 2381
    :cond_33
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->e:F

    iget v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->o:F

    iget v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->g:F

    iget v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->e:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->l:F

    goto :goto_24
.end method

.method public c(Landroid/support/v4/animation/ValueAnimatorCompat;)V
    .registers 3

    .prologue
    .line 2400
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->a(F)V

    .line 2401
    return-void
.end method

.method public d(Landroid/support/v4/animation/ValueAnimatorCompat;)V
    .registers 2

    .prologue
    .line 2406
    return-void
.end method
