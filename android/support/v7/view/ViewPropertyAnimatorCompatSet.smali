.class public Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompatSet.java"


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/view/ViewPropertyAnimatorCompat;",
            ">;"
        }
    .end annotation
.end field

.field private b:J

.field private c:Landroid/view/animation/Interpolator;

.field private d:Landroid/support/v4/view/ViewPropertyAnimatorListener;

.field private e:Z

.field private final f:Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->b:J

    .line 115
    new-instance v0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;

    invoke-direct {v0, p0}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;-><init>(Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;)V

    iput-object v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->f:Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->a:Ljava/util/ArrayList;

    .line 45
    return-void
.end method

.method static synthetic a(Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;)Landroid/support/v4/view/ViewPropertyAnimatorListener;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->d:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    return-object v0
.end method

.method static synthetic b(Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;)V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->c()V

    return-void
.end method

.method static synthetic c(Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method private c()V
    .registers 2

    .prologue
    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->e:Z

    .line 82
    return-void
.end method


# virtual methods
.method public a(J)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;
    .registers 4

    .prologue
    .line 95
    iget-boolean v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->e:Z

    if-nez v0, :cond_6

    .line 96
    iput-wide p1, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->b:J

    .line 98
    :cond_6
    return-object p0
.end method

.method public a(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;
    .registers 3

    .prologue
    .line 48
    iget-boolean v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->e:Z

    if-nez v0, :cond_9

    .line 49
    iget-object v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_9
    return-object p0
.end method

.method public a(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;
    .registers 5

    .prologue
    .line 56
    iget-object v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->a()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->b(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 58
    iget-object v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    return-object p0
.end method

.method public a(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;
    .registers 3

    .prologue
    .line 109
    iget-boolean v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->e:Z

    if-nez v0, :cond_6

    .line 110
    iput-object p1, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->d:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 112
    :cond_6
    return-object p0
.end method

.method public a(Landroid/view/animation/Interpolator;)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;
    .registers 3

    .prologue
    .line 102
    iget-boolean v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->e:Z

    if-nez v0, :cond_6

    .line 103
    iput-object p1, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->c:Landroid/view/animation/Interpolator;

    .line 105
    :cond_6
    return-object p0
.end method

.method public a()V
    .registers 7

    .prologue
    .line 63
    iget-boolean v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->e:Z

    if-eqz v0, :cond_5

    .line 78
    :goto_4
    return-void

    .line 64
    :cond_5
    iget-object v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 65
    iget-wide v2, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_24

    .line 66
    iget-wide v2, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->b:J

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->a(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 68
    :cond_24
    iget-object v2, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->c:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_2d

    .line 69
    iget-object v2, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->a(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 71
    :cond_2d
    iget-object v2, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->d:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    if-eqz v2, :cond_36

    .line 72
    iget-object v2, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->f:Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->a(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 74
    :cond_36
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->c()V

    goto :goto_b

    .line 77
    :cond_3a
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->e:Z

    goto :goto_4
.end method

.method public b()V
    .registers 3

    .prologue
    .line 85
    iget-boolean v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->e:Z

    if-nez v0, :cond_5

    .line 92
    :goto_4
    return-void

    .line 88
    :cond_5
    iget-object v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 89
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->b()V

    goto :goto_b

    .line 91
    :cond_1b
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->e:Z

    goto :goto_4
.end method
