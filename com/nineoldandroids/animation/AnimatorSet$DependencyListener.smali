.class Lcom/nineoldandroids/animation/AnimatorSet$DependencyListener;
.super Ljava/lang/Object;
.source "AnimatorSet.java"

# interfaces
.implements Lcom/nineoldandroids/animation/Animator$AnimatorListener;


# instance fields
.field private a:Lcom/nineoldandroids/animation/AnimatorSet;

.field private b:Lcom/nineoldandroids/animation/AnimatorSet$Node;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/nineoldandroids/animation/AnimatorSet;Lcom/nineoldandroids/animation/AnimatorSet$Node;I)V
    .registers 4

    .prologue
    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 636
    iput-object p1, p0, Lcom/nineoldandroids/animation/AnimatorSet$DependencyListener;->a:Lcom/nineoldandroids/animation/AnimatorSet;

    .line 637
    iput-object p2, p0, Lcom/nineoldandroids/animation/AnimatorSet$DependencyListener;->b:Lcom/nineoldandroids/animation/AnimatorSet$Node;

    .line 638
    iput p3, p0, Lcom/nineoldandroids/animation/AnimatorSet$DependencyListener;->c:I

    .line 639
    return-void
.end method

.method private d(Lcom/nineoldandroids/animation/Animator;)V
    .registers 8

    .prologue
    .line 680
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$DependencyListener;->a:Lcom/nineoldandroids/animation/AnimatorSet;

    iget-boolean v0, v0, Lcom/nineoldandroids/animation/AnimatorSet;->b:Z

    if-eqz v0, :cond_7

    .line 703
    :cond_6
    :goto_6
    return-void

    .line 684
    :cond_7
    const/4 v1, 0x0

    .line 685
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$DependencyListener;->b:Lcom/nineoldandroids/animation/AnimatorSet$Node;

    iget-object v0, v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 686
    const/4 v0, 0x0

    move v2, v0

    :goto_12
    if-ge v2, v3, :cond_57

    .line 687
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$DependencyListener;->b:Lcom/nineoldandroids/animation/AnimatorSet$Node;

    iget-object v0, v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/AnimatorSet$Dependency;

    .line 688
    iget v4, v0, Lcom/nineoldandroids/animation/AnimatorSet$Dependency;->b:I

    iget v5, p0, Lcom/nineoldandroids/animation/AnimatorSet$DependencyListener;->c:I

    if-ne v4, v5, :cond_53

    iget-object v4, v0, Lcom/nineoldandroids/animation/AnimatorSet$Dependency;->a:Lcom/nineoldandroids/animation/AnimatorSet$Node;

    iget-object v4, v4, Lcom/nineoldandroids/animation/AnimatorSet$Node;->a:Lcom/nineoldandroids/animation/Animator;

    if-ne v4, p1, :cond_53

    .line 693
    invoke-virtual {p1, p0}, Lcom/nineoldandroids/animation/Animator;->b(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 697
    :goto_2d
    iget-object v1, p0, Lcom/nineoldandroids/animation/AnimatorSet$DependencyListener;->b:Lcom/nineoldandroids/animation/AnimatorSet$Node;

    iget-object v1, v1, Lcom/nineoldandroids/animation/AnimatorSet$Node;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 698
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$DependencyListener;->b:Lcom/nineoldandroids/animation/AnimatorSet$Node;

    iget-object v0, v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 700
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$DependencyListener;->b:Lcom/nineoldandroids/animation/AnimatorSet$Node;

    iget-object v0, v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->a:Lcom/nineoldandroids/animation/Animator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Animator;->a()V

    .line 701
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$DependencyListener;->a:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-static {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->a(Lcom/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/nineoldandroids/animation/AnimatorSet$DependencyListener;->b:Lcom/nineoldandroids/animation/AnimatorSet$Node;

    iget-object v1, v1, Lcom/nineoldandroids/animation/AnimatorSet$Node;->a:Lcom/nineoldandroids/animation/Animator;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 686
    :cond_53
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_12

    :cond_57
    move-object v0, v1

    goto :goto_2d
.end method


# virtual methods
.method public a(Lcom/nineoldandroids/animation/Animator;)V
    .registers 3

    .prologue
    .line 668
    iget v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$DependencyListener;->c:I

    if-nez v0, :cond_7

    .line 669
    invoke-direct {p0, p1}, Lcom/nineoldandroids/animation/AnimatorSet$DependencyListener;->d(Lcom/nineoldandroids/animation/Animator;)V

    .line 671
    :cond_7
    return-void
.end method

.method public b(Lcom/nineoldandroids/animation/Animator;)V
    .registers 4

    .prologue
    .line 653
    iget v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$DependencyListener;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 654
    invoke-direct {p0, p1}, Lcom/nineoldandroids/animation/AnimatorSet$DependencyListener;->d(Lcom/nineoldandroids/animation/Animator;)V

    .line 656
    :cond_8
    return-void
.end method

.method public c(Lcom/nineoldandroids/animation/Animator;)V
    .registers 2

    .prologue
    .line 662
    return-void
.end method
