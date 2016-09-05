.class Lcom/nineoldandroids/animation/AnimatorSet$1;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "AnimatorSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nineoldandroids/animation/AnimatorSet;->a()V
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lcom/nineoldandroids/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lcom/nineoldandroids/animation/AnimatorSet;Ljava/util/ArrayList;)V
    .registers 4

    .prologue
    .line 508
    iput-object p1, p0, Lcom/nineoldandroids/animation/AnimatorSet$1;->c:Lcom/nineoldandroids/animation/AnimatorSet;

    iput-object p2, p0, Lcom/nineoldandroids/animation/AnimatorSet$1;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    .line 509
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$1;->a:Z

    return-void
.end method


# virtual methods
.method public b(Lcom/nineoldandroids/animation/Animator;)V
    .registers 6

    .prologue
    .line 514
    iget-boolean v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$1;->a:Z

    if-nez v0, :cond_2a

    .line 515
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$1;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 516
    const/4 v0, 0x0

    move v1, v0

    :goto_c
    if-ge v1, v2, :cond_2a

    .line 517
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$1;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;

    .line 518
    iget-object v3, v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->a:Lcom/nineoldandroids/animation/Animator;

    invoke-virtual {v3}, Lcom/nineoldandroids/animation/Animator;->a()V

    .line 519
    iget-object v3, p0, Lcom/nineoldandroids/animation/AnimatorSet$1;->c:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-static {v3}, Lcom/nineoldandroids/animation/AnimatorSet;->a(Lcom/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v0, v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->a:Lcom/nineoldandroids/animation/Animator;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    .line 522
    :cond_2a
    return-void
.end method
