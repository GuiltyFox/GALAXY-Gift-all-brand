.class public final Lcom/nineoldandroids/animation/AnimatorSet;
.super Lcom/nineoldandroids/animation/Animator;
.source "AnimatorSet.java"


# instance fields
.field b:Z

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/nineoldandroids/animation/Animator;",
            "Lcom/nineoldandroids/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

.field private i:Z

.field private j:J

.field private k:Lcom/nineoldandroids/animation/ValueAnimator;

.field private l:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Lcom/nineoldandroids/animation/Animator;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->c:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->d:Ljava/util/HashMap;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->e:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->f:Ljava/util/ArrayList;

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->g:Z

    .line 89
    iput-object v2, p0, Lcom/nineoldandroids/animation/AnimatorSet;->h:Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

    .line 98
    iput-boolean v1, p0, Lcom/nineoldandroids/animation/AnimatorSet;->b:Z

    .line 104
    iput-boolean v1, p0, Lcom/nineoldandroids/animation/AnimatorSet;->i:Z

    .line 107
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->j:J

    .line 110
    iput-object v2, p0, Lcom/nineoldandroids/animation/AnimatorSet;->k:Lcom/nineoldandroids/animation/ValueAnimator;

    .line 116
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->l:J

    .line 1012
    return-void
.end method

.method static synthetic a(Lcom/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/nineoldandroids/animation/AnimatorSet;Z)Z
    .registers 2

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/nineoldandroids/animation/AnimatorSet;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic c(Lcom/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method private e()V
    .registers 11

    .prologue
    const/4 v3, 0x0

    .line 785
    iget-boolean v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->g:Z

    if-eqz v0, :cond_a0

    .line 786
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 787
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 788
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v3

    .line 789
    :goto_16
    if-ge v1, v2, :cond_33

    .line 790
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;

    .line 791
    iget-object v4, v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->b:Ljava/util/ArrayList;

    if-eqz v4, :cond_2c

    iget-object v4, v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2f

    .line 792
    :cond_2c
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    :cond_2f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_16

    .line 795
    :cond_33
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 796
    :goto_38
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_87

    .line 797
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v4, v3

    .line 798
    :goto_43
    if-ge v4, v7, :cond_7d

    .line 799
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;

    .line 800
    iget-object v1, p0, Lcom/nineoldandroids/animation/AnimatorSet;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    iget-object v1, v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->e:Ljava/util/ArrayList;

    if-eqz v1, :cond_79

    .line 802
    iget-object v1, v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v2, v3

    .line 803
    :goto_5b
    if-ge v2, v8, :cond_79

    .line 804
    iget-object v1, v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nineoldandroids/animation/AnimatorSet$Node;

    .line 805
    iget-object v9, v1, Lcom/nineoldandroids/animation/AnimatorSet$Node;->d:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 806
    iget-object v9, v1, Lcom/nineoldandroids/animation/AnimatorSet$Node;->d:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_75

    .line 807
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 803
    :cond_75
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5b

    .line 798
    :cond_79
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_43

    .line 812
    :cond_7d
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 813
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 814
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto :goto_38

    .line 816
    :cond_87
    iput-boolean v3, p0, Lcom/nineoldandroids/animation/AnimatorSet;->g:Z

    .line 817
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/nineoldandroids/animation/AnimatorSet;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_f4

    .line 818
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Circular dependencies cannot exist in AnimatorSet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 825
    :cond_a0
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v4, v3

    .line 826
    :goto_a7
    if-ge v4, v5, :cond_f4

    .line 827
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;

    .line 828
    iget-object v1, v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_ee

    iget-object v1, v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_ee

    .line 829
    iget-object v1, v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v2, v3

    .line 830
    :goto_c4
    if-ge v2, v6, :cond_ee

    .line 831
    iget-object v1, v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nineoldandroids/animation/AnimatorSet$Dependency;

    .line 832
    iget-object v7, v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->d:Ljava/util/ArrayList;

    if-nez v7, :cond_d9

    .line 833
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->d:Ljava/util/ArrayList;

    .line 835
    :cond_d9
    iget-object v7, v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->d:Ljava/util/ArrayList;

    iget-object v8, v1, Lcom/nineoldandroids/animation/AnimatorSet$Dependency;->a:Lcom/nineoldandroids/animation/AnimatorSet$Node;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_ea

    .line 836
    iget-object v7, v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->d:Ljava/util/ArrayList;

    iget-object v1, v1, Lcom/nineoldandroids/animation/AnimatorSet$Dependency;->a:Lcom/nineoldandroids/animation/AnimatorSet$Node;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 830
    :cond_ea
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_c4

    .line 842
    :cond_ee
    iput-boolean v3, v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->f:Z

    .line 826
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_a7

    .line 845
    :cond_f4
    return-void
.end method


# virtual methods
.method public a(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;
    .registers 3

    .prologue
    .line 268
    if-eqz p1, :cond_b

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->g:Z

    .line 270
    new-instance v0, Lcom/nineoldandroids/animation/AnimatorSet$Builder;

    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/animation/AnimatorSet$Builder;-><init>(Lcom/nineoldandroids/animation/AnimatorSet;Lcom/nineoldandroids/animation/Animator;)V

    .line 272
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a()V
    .registers 13

    .prologue
    const-wide/16 v10, 0x0

    const/4 v2, 0x0

    .line 451
    iput-boolean v2, p0, Lcom/nineoldandroids/animation/AnimatorSet;->b:Z

    .line 452
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->i:Z

    .line 456
    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorSet;->e()V

    .line 458
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v2

    .line 459
    :goto_12
    if-ge v3, v5, :cond_51

    .line 460
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;

    .line 462
    iget-object v1, v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->a:Lcom/nineoldandroids/animation/Animator;

    invoke-virtual {v1}, Lcom/nineoldandroids/animation/Animator;->b()Ljava/util/ArrayList;

    move-result-object v1

    .line 463
    if-eqz v1, :cond_4d

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4d

    .line 464
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 467
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_33
    :goto_33
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    .line 468
    instance-of v6, v1, Lcom/nineoldandroids/animation/AnimatorSet$DependencyListener;

    if-nez v6, :cond_47

    instance-of v6, v1, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

    if-eqz v6, :cond_33

    .line 470
    :cond_47
    iget-object v6, v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->a:Lcom/nineoldandroids/animation/Animator;

    invoke-virtual {v6, v1}, Lcom/nineoldandroids/animation/Animator;->b(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    goto :goto_33

    .line 459
    :cond_4d
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_12

    .line 480
    :cond_51
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v4, v2

    .line 481
    :goto_57
    if-ge v4, v5, :cond_b4

    .line 482
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;

    .line 483
    iget-object v1, p0, Lcom/nineoldandroids/animation/AnimatorSet;->h:Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

    if-nez v1, :cond_6c

    .line 484
    new-instance v1, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

    invoke-direct {v1, p0, p0}, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;-><init>(Lcom/nineoldandroids/animation/AnimatorSet;Lcom/nineoldandroids/animation/AnimatorSet;)V

    iput-object v1, p0, Lcom/nineoldandroids/animation/AnimatorSet;->h:Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

    .line 486
    :cond_6c
    iget-object v1, v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_78

    iget-object v1, v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_86

    .line 487
    :cond_78
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    :goto_7b
    iget-object v0, v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->a:Lcom/nineoldandroids/animation/Animator;

    iget-object v1, p0, Lcom/nineoldandroids/animation/AnimatorSet;->h:Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/Animator;->a(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 481
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_57

    .line 489
    :cond_86
    iget-object v1, v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v3, v2

    .line 490
    :goto_8d
    if-ge v3, v7, :cond_a9

    .line 491
    iget-object v1, v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nineoldandroids/animation/AnimatorSet$Dependency;

    .line 492
    iget-object v8, v1, Lcom/nineoldandroids/animation/AnimatorSet$Dependency;->a:Lcom/nineoldandroids/animation/AnimatorSet$Node;

    iget-object v8, v8, Lcom/nineoldandroids/animation/AnimatorSet$Node;->a:Lcom/nineoldandroids/animation/Animator;

    new-instance v9, Lcom/nineoldandroids/animation/AnimatorSet$DependencyListener;

    iget v1, v1, Lcom/nineoldandroids/animation/AnimatorSet$Dependency;->b:I

    invoke-direct {v9, p0, v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet$DependencyListener;-><init>(Lcom/nineoldandroids/animation/AnimatorSet;Lcom/nineoldandroids/animation/AnimatorSet$Node;I)V

    invoke-virtual {v8, v9}, Lcom/nineoldandroids/animation/Animator;->a(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 490
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_8d

    .line 495
    :cond_a9
    iget-object v1, v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->c:Ljava/util/ArrayList;

    goto :goto_7b

    .line 500
    :cond_b4
    iget-wide v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->j:J

    cmp-long v0, v0, v10

    if-gtz v0, :cond_d7

    .line 501
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_be
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;

    .line 502
    iget-object v3, v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->a:Lcom/nineoldandroids/animation/Animator;

    invoke-virtual {v3}, Lcom/nineoldandroids/animation/Animator;->a()V

    .line 503
    iget-object v3, p0, Lcom/nineoldandroids/animation/AnimatorSet;->c:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->a:Lcom/nineoldandroids/animation/Animator;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_be

    .line 506
    :cond_d7
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_14a

    invoke-static {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->b([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->k:Lcom/nineoldandroids/animation/ValueAnimator;

    .line 507
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->k:Lcom/nineoldandroids/animation/ValueAnimator;

    iget-wide v4, p0, Lcom/nineoldandroids/animation/AnimatorSet;->j:J

    invoke-virtual {v0, v4, v5}, Lcom/nineoldandroids/animation/ValueAnimator;->b(J)Lcom/nineoldandroids/animation/ValueAnimator;

    .line 508
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->k:Lcom/nineoldandroids/animation/ValueAnimator;

    new-instance v1, Lcom/nineoldandroids/animation/AnimatorSet$1;

    invoke-direct {v1, p0, v6}, Lcom/nineoldandroids/animation/AnimatorSet$1;-><init>(Lcom/nineoldandroids/animation/AnimatorSet;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->a(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 524
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->k:Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->a()V

    .line 526
    :cond_f9
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_119

    .line 527
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 529
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    .line 530
    :goto_10a
    if-ge v3, v4, :cond_119

    .line 531
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-interface {v1, p0}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->a(Lcom/nineoldandroids/animation/Animator;)V

    .line 530
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_10a

    .line 534
    :cond_119
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_148

    iget-wide v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->j:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_148

    .line 537
    iput-boolean v2, p0, Lcom/nineoldandroids/animation/AnimatorSet;->i:Z

    .line 538
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_148

    .line 539
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 541
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 542
    :goto_139
    if-ge v2, v3, :cond_148

    .line 543
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-interface {v1, p0}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->b(Lcom/nineoldandroids/animation/Animator;)V

    .line 542
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_139

    .line 547
    :cond_148
    return-void

    .line 506
    nop

    :array_14a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public a(Landroid/view/animation/Interpolator;)V
    .registers 4

    .prologue
    .line 234
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;

    .line 235
    iget-object v0, v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->a:Lcom/nineoldandroids/animation/Animator;

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/Animator;->a(Landroid/view/animation/Interpolator;)V

    goto :goto_6

    .line 237
    :cond_18
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 216
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;

    .line 217
    iget-object v0, v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->a:Lcom/nineoldandroids/animation/Animator;

    .line 218
    instance-of v2, v0, Lcom/nineoldandroids/animation/AnimatorSet;

    if-eqz v2, :cond_1e

    .line 219
    check-cast v0, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/AnimatorSet;->a(Ljava/lang/Object;)V

    goto :goto_6

    .line 220
    :cond_1e
    instance-of v2, v0, Lcom/nineoldandroids/animation/ObjectAnimator;

    if-eqz v2, :cond_6

    .line 221
    check-cast v0, Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/ObjectAnimator;->a(Ljava/lang/Object;)V

    goto :goto_6

    .line 224
    :cond_28
    return-void
.end method

.method public varargs a([Lcom/nineoldandroids/animation/Animator;)V
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 125
    if-eqz p1, :cond_17

    .line 126
    iput-boolean v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->g:Z

    .line 127
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->a(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 128
    :goto_c
    array-length v2, p1

    if-ge v0, v2, :cond_17

    .line 129
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/nineoldandroids/animation/AnimatorSet$Builder;->a(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 132
    :cond_17
    return-void
.end method

.method public varargs b([Lcom/nineoldandroids/animation/Animator;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 160
    if-eqz p1, :cond_e

    .line 161
    iput-boolean v2, p0, Lcom/nineoldandroids/animation/AnimatorSet;->g:Z

    .line 162
    array-length v1, p1

    if-ne v1, v2, :cond_f

    .line 163
    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/nineoldandroids/animation/AnimatorSet;->a(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;

    .line 170
    :cond_e
    return-void

    .line 165
    :cond_f
    :goto_f
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_e

    .line 166
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->a(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/nineoldandroids/animation/AnimatorSet$Builder;->b(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method

.method public synthetic c()Lcom/nineoldandroids/animation/Animator;
    .registers 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/AnimatorSet;->d()Lcom/nineoldandroids/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/AnimatorSet;->d()Lcom/nineoldandroids/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/nineoldandroids/animation/AnimatorSet;
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 551
    invoke-super {p0}, Lcom/nineoldandroids/animation/Animator;->c()Lcom/nineoldandroids/animation/Animator;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/AnimatorSet;

    .line 560
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nineoldandroids/animation/AnimatorSet;->g:Z

    .line 561
    iput-boolean v2, v0, Lcom/nineoldandroids/animation/AnimatorSet;->b:Z

    .line 562
    iput-boolean v2, v0, Lcom/nineoldandroids/animation/AnimatorSet;->i:Z

    .line 563
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/nineoldandroids/animation/AnimatorSet;->c:Ljava/util/ArrayList;

    .line 564
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/nineoldandroids/animation/AnimatorSet;->d:Ljava/util/HashMap;

    .line 565
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/nineoldandroids/animation/AnimatorSet;->e:Ljava/util/ArrayList;

    .line 566
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/nineoldandroids/animation/AnimatorSet;->f:Ljava/util/ArrayList;

    .line 571
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 572
    iget-object v1, p0, Lcom/nineoldandroids/animation/AnimatorSet;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_36
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nineoldandroids/animation/AnimatorSet$Node;

    .line 573
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/AnimatorSet$Node;->a()Lcom/nineoldandroids/animation/AnimatorSet$Node;

    move-result-object v2

    .line 574
    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    iget-object v1, v0, Lcom/nineoldandroids/animation/AnimatorSet;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    iget-object v1, v0, Lcom/nineoldandroids/animation/AnimatorSet;->d:Ljava/util/HashMap;

    iget-object v6, v2, Lcom/nineoldandroids/animation/AnimatorSet$Node;->a:Lcom/nineoldandroids/animation/Animator;

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    iput-object v3, v2, Lcom/nineoldandroids/animation/AnimatorSet$Node;->b:Ljava/util/ArrayList;

    .line 579
    iput-object v3, v2, Lcom/nineoldandroids/animation/AnimatorSet$Node;->c:Ljava/util/ArrayList;

    .line 580
    iput-object v3, v2, Lcom/nineoldandroids/animation/AnimatorSet$Node;->e:Ljava/util/ArrayList;

    .line 581
    iput-object v3, v2, Lcom/nineoldandroids/animation/AnimatorSet$Node;->d:Ljava/util/ArrayList;

    .line 584
    iget-object v1, v2, Lcom/nineoldandroids/animation/AnimatorSet$Node;->a:Lcom/nineoldandroids/animation/Animator;

    invoke-virtual {v1}, Lcom/nineoldandroids/animation/Animator;->b()Ljava/util/ArrayList;

    move-result-object v6

    .line 585
    if-eqz v6, :cond_36

    .line 587
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v2, v3

    :cond_6a
    :goto_6a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_85

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    .line 588
    instance-of v8, v1, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

    if-eqz v8, :cond_6a

    .line 589
    if-nez v2, :cond_81

    .line 590
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 592
    :cond_81
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6a

    .line 595
    :cond_85
    if-eqz v2, :cond_36

    .line 596
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    .line 597
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_8b

    .line 604
    :cond_9b
    iget-object v1, p0, Lcom/nineoldandroids/animation/AnimatorSet;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_dc

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nineoldandroids/animation/AnimatorSet$Node;

    .line 605
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nineoldandroids/animation/AnimatorSet$Node;

    .line 606
    iget-object v3, v1, Lcom/nineoldandroids/animation/AnimatorSet$Node;->b:Ljava/util/ArrayList;

    if-eqz v3, :cond_a1

    .line 607
    iget-object v1, v1, Lcom/nineoldandroids/animation/AnimatorSet$Node;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_bd
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nineoldandroids/animation/AnimatorSet$Dependency;

    .line 608
    iget-object v3, v1, Lcom/nineoldandroids/animation/AnimatorSet$Dependency;->a:Lcom/nineoldandroids/animation/AnimatorSet$Node;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nineoldandroids/animation/AnimatorSet$Node;

    .line 609
    new-instance v7, Lcom/nineoldandroids/animation/AnimatorSet$Dependency;

    iget v1, v1, Lcom/nineoldandroids/animation/AnimatorSet$Dependency;->b:I

    invoke-direct {v7, v3, v1}, Lcom/nineoldandroids/animation/AnimatorSet$Dependency;-><init>(Lcom/nineoldandroids/animation/AnimatorSet$Node;I)V

    .line 611
    invoke-virtual {v2, v7}, Lcom/nineoldandroids/animation/AnimatorSet$Node;->a(Lcom/nineoldandroids/animation/AnimatorSet$Dependency;)V

    goto :goto_bd

    .line 616
    :cond_dc
    return-object v0
.end method
