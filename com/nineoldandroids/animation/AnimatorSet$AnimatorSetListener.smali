.class Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;
.super Ljava/lang/Object;
.source "AnimatorSet.java"

# interfaces
.implements Lcom/nineoldandroids/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic a:Lcom/nineoldandroids/animation/AnimatorSet;

.field private b:Lcom/nineoldandroids/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lcom/nineoldandroids/animation/AnimatorSet;Lcom/nineoldandroids/animation/AnimatorSet;)V
    .registers 3

    .prologue
    .line 711
    iput-object p1, p0, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->a:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 712
    iput-object p2, p0, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->b:Lcom/nineoldandroids/animation/AnimatorSet;

    .line 713
    return-void
.end method


# virtual methods
.method public a(Lcom/nineoldandroids/animation/Animator;)V
    .registers 2

    .prologue
    .line 770
    return-void
.end method

.method public b(Lcom/nineoldandroids/animation/Animator;)V
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 732
    invoke-virtual {p1, p0}, Lcom/nineoldandroids/animation/Animator;->b(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 733
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->a:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-static {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->a(Lcom/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 734
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->b:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-static {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->b(Lcom/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;

    .line 735
    iput-boolean v1, v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->f:Z

    .line 736
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->a:Lcom/nineoldandroids/animation/AnimatorSet;

    iget-boolean v0, v0, Lcom/nineoldandroids/animation/AnimatorSet;->b:Z

    if-nez v0, :cond_6b

    .line 739
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->b:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-static {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->c(Lcom/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v4

    .line 741
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v3

    .line 742
    :goto_2d
    if-ge v2, v5, :cond_6c

    .line 743
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;

    iget-boolean v0, v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->f:Z

    if-nez v0, :cond_62

    move v0, v3

    .line 748
    :goto_3a
    if-eqz v0, :cond_6b

    .line 751
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->a:Lcom/nineoldandroids/animation/AnimatorSet;

    iget-object v0, v0, Lcom/nineoldandroids/animation/AnimatorSet;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_66

    .line 752
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->a:Lcom/nineoldandroids/animation/AnimatorSet;

    iget-object v0, v0, Lcom/nineoldandroids/animation/AnimatorSet;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 754
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v3

    .line 755
    :goto_51
    if-ge v2, v4, :cond_66

    .line 756
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    iget-object v5, p0, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->b:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-interface {v1, v5}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->b(Lcom/nineoldandroids/animation/Animator;)V

    .line 755
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_51

    .line 742
    :cond_62
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2d

    .line 759
    :cond_66
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->b:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-static {v0, v3}, Lcom/nineoldandroids/animation/AnimatorSet;->a(Lcom/nineoldandroids/animation/AnimatorSet;Z)Z

    .line 762
    :cond_6b
    return-void

    :cond_6c
    move v0, v1

    goto :goto_3a
.end method

.method public c(Lcom/nineoldandroids/animation/Animator;)V
    .registers 2

    .prologue
    .line 766
    return-void
.end method
