.class final Landroid/support/design/widget/StateListAnimator;
.super Ljava/lang/Object;
.source "StateListAnimator.java"


# instance fields
.field private final mAnimationListener:Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;

.field private mLastMatch:Landroid/support/design/widget/StateListAnimator$Tuple;

.field mRunningAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

.field private final mTuples:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/widget/StateListAnimator$Tuple;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    .line 27
    iput-object v1, p0, Landroid/support/design/widget/StateListAnimator;->mLastMatch:Landroid/support/design/widget/StateListAnimator$Tuple;

    .line 28
    iput-object v1, p0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    .line 30
    new-instance v0, Landroid/support/design/widget/StateListAnimator$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/StateListAnimator$1;-><init>(Landroid/support/design/widget/StateListAnimator;)V

    iput-object v0, p0, Landroid/support/design/widget/StateListAnimator;->mAnimationListener:Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;

    .line 104
    return-void
.end method

.method private cancel()V
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-eqz v0, :cond_c

    .line 87
    iget-object v0, p0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/design/widget/ValueAnimatorCompat;->cancel()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    .line 90
    :cond_c
    return-void
.end method

.method private start(Landroid/support/design/widget/StateListAnimator$Tuple;)V
    .registers 3

    .prologue
    .line 81
    iget-object v0, p1, Landroid/support/design/widget/StateListAnimator$Tuple;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    iput-object v0, p0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    .line 82
    iget-object v0, p0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/design/widget/ValueAnimatorCompat;->start()V

    .line 83
    return-void
.end method


# virtual methods
.method public addState([ILandroid/support/design/widget/ValueAnimatorCompat;)V
    .registers 5

    .prologue
    .line 48
    new-instance v0, Landroid/support/design/widget/StateListAnimator$Tuple;

    invoke-direct {v0, p1, p2}, Landroid/support/design/widget/StateListAnimator$Tuple;-><init>([ILandroid/support/design/widget/ValueAnimatorCompat;)V

    .line 49
    iget-object v1, p0, Landroid/support/design/widget/StateListAnimator;->mAnimationListener:Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;

    invoke-virtual {p2, v1}, Landroid/support/design/widget/ValueAnimatorCompat;->addListener(Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;)V

    .line 50
    iget-object v1, p0, Landroid/support/design/widget/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method public jumpToCurrentState()V
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-eqz v0, :cond_c

    .line 99
    iget-object v0, p0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/design/widget/ValueAnimatorCompat;->end()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    .line 102
    :cond_c
    return-void
.end method

.method setState([I)V
    .registers 7

    .prologue
    .line 57
    const/4 v1, 0x0

    .line 58
    iget-object v0, p0, Landroid/support/design/widget/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 59
    const/4 v0, 0x0

    move v2, v0

    :goto_9
    if-ge v2, v3, :cond_33

    .line 60
    iget-object v0, p0, Landroid/support/design/widget/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/StateListAnimator$Tuple;

    .line 61
    iget-object v4, v0, Landroid/support/design/widget/StateListAnimator$Tuple;->mSpecs:[I

    invoke-static {v4, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 66
    :goto_1b
    iget-object v1, p0, Landroid/support/design/widget/StateListAnimator;->mLastMatch:Landroid/support/design/widget/StateListAnimator$Tuple;

    if-ne v0, v1, :cond_24

    .line 78
    :cond_1f
    :goto_1f
    return-void

    .line 59
    :cond_20
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_9

    .line 69
    :cond_24
    iget-object v1, p0, Landroid/support/design/widget/StateListAnimator;->mLastMatch:Landroid/support/design/widget/StateListAnimator$Tuple;

    if-eqz v1, :cond_2b

    .line 70
    invoke-direct {p0}, Landroid/support/design/widget/StateListAnimator;->cancel()V

    .line 73
    :cond_2b
    iput-object v0, p0, Landroid/support/design/widget/StateListAnimator;->mLastMatch:Landroid/support/design/widget/StateListAnimator$Tuple;

    .line 75
    if-eqz v0, :cond_1f

    .line 76
    invoke-direct {p0, v0}, Landroid/support/design/widget/StateListAnimator;->start(Landroid/support/design/widget/StateListAnimator$Tuple;)V

    goto :goto_1f

    :cond_33
    move-object v0, v1

    goto :goto_1b
.end method
