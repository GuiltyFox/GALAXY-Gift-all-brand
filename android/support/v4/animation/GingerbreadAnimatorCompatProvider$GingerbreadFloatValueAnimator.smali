.class Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;
.super Ljava/lang/Object;
.source "GingerbreadAnimatorCompatProvider.java"

# interfaces
.implements Landroid/support/v4/animation/ValueAnimatorCompat;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/animation/AnimatorListenerCompat;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/animation/AnimatorUpdateListenerCompat;",
            ">;"
        }
    .end annotation
.end field

.field c:Landroid/view/View;

.field private d:J

.field private e:J

.field private f:F

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->a:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->b:Ljava/util/List;

    .line 45
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->e:J

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->f:F

    .line 48
    iput-boolean v2, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->g:Z

    .line 49
    iput-boolean v2, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->h:Z

    .line 54
    new-instance v0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator$1;

    invoke-direct {v0, p0}, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator$1;-><init>(Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;)V

    iput-object v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->i:Ljava/lang/Runnable;

    .line 52
    return-void
.end method

.method static synthetic a(Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;F)F
    .registers 2

    .prologue
    .line 38
    iput p1, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->f:F

    return p1
.end method

.method static synthetic a(Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;)J
    .registers 3

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic b(Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;)J
    .registers 3

    .prologue
    .line 38
    iget-wide v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->d:J

    return-wide v0
.end method

.method static synthetic c(Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;)J
    .registers 3

    .prologue
    .line 38
    iget-wide v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->e:J

    return-wide v0
.end method

.method private d()V
    .registers 3

    .prologue
    .line 73
    iget-object v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_1a

    .line 74
    iget-object v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/animation/AnimatorUpdateListenerCompat;

    invoke-interface {v0, p0}, Landroid/support/v4/animation/AnimatorUpdateListenerCompat;->a(Landroid/support/v4/animation/ValueAnimatorCompat;)V

    .line 73
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    .line 76
    :cond_1a
    return-void
.end method

.method static synthetic d(Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;)V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->d()V

    return-void
.end method

.method static synthetic e(Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;)F
    .registers 2

    .prologue
    .line 38
    iget v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->f:F

    return v0
.end method

.method private e()J
    .registers 3

    .prologue
    .line 108
    iget-object v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private f()V
    .registers 3

    .prologue
    .line 112
    iget-object v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_1a

    .line 113
    iget-object v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/animation/AnimatorListenerCompat;

    invoke-interface {v0, p0}, Landroid/support/v4/animation/AnimatorListenerCompat;->a(Landroid/support/v4/animation/ValueAnimatorCompat;)V

    .line 112
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    .line 115
    :cond_1a
    return-void
.end method

.method static synthetic f(Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;)V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->g()V

    return-void
.end method

.method static synthetic g(Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;)Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->i:Ljava/lang/Runnable;

    return-object v0
.end method

.method private g()V
    .registers 3

    .prologue
    .line 118
    iget-object v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_1a

    .line 119
    iget-object v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/animation/AnimatorListenerCompat;

    invoke-interface {v0, p0}, Landroid/support/v4/animation/AnimatorListenerCompat;->b(Landroid/support/v4/animation/ValueAnimatorCompat;)V

    .line 118
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    .line 121
    :cond_1a
    return-void
.end method

.method private h()V
    .registers 3

    .prologue
    .line 124
    iget-object v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_1a

    .line 125
    iget-object v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/animation/AnimatorListenerCompat;

    invoke-interface {v0, p0}, Landroid/support/v4/animation/AnimatorListenerCompat;->c(Landroid/support/v4/animation/ValueAnimatorCompat;)V

    .line 124
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    .line 127
    :cond_1a
    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    .line 97
    iget-boolean v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->g:Z

    if-eqz v0, :cond_5

    .line 105
    :goto_4
    return-void

    .line 100
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->g:Z

    .line 101
    invoke-direct {p0}, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->f()V

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->f:F

    .line 103
    invoke-direct {p0}, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->e()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->d:J

    .line 104
    iget-object v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->c:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->i:Ljava/lang/Runnable;

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4
.end method

.method public a(J)V
    .registers 4

    .prologue
    .line 90
    iget-boolean v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->g:Z

    if-nez v0, :cond_6

    .line 91
    iput-wide p1, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->e:J

    .line 93
    :cond_6
    return-void
.end method

.method public a(Landroid/support/v4/animation/AnimatorListenerCompat;)V
    .registers 3

    .prologue
    .line 85
    iget-object v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method public a(Landroid/support/v4/animation/AnimatorUpdateListenerCompat;)V
    .registers 3

    .prologue
    .line 143
    iget-object v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 80
    iput-object p1, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->c:Landroid/view/View;

    .line 81
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 131
    iget-boolean v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->h:Z

    if-eqz v0, :cond_5

    .line 139
    :goto_4
    return-void

    .line 134
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->h:Z

    .line 135
    iget-boolean v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->g:Z

    if-eqz v0, :cond_f

    .line 136
    invoke-direct {p0}, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->h()V

    .line 138
    :cond_f
    invoke-direct {p0}, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->g()V

    goto :goto_4
.end method

.method public c()F
    .registers 2

    .prologue
    .line 148
    iget v0, p0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;->f:F

    return v0
.end method
