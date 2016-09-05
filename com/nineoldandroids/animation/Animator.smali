.class public abstract Lcom/nineoldandroids/animation/Animator;
.super Ljava/lang/Object;
.source "Animator.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nineoldandroids/animation/Animator;->a:Ljava/util/ArrayList;

    .line 247
    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 49
    return-void
.end method

.method public abstract a(Landroid/view/animation/Interpolator;)V
.end method

.method public a(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V
    .registers 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/nineoldandroids/animation/Animator;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/animation/Animator;->a:Ljava/util/ArrayList;

    .line 148
    :cond_b
    iget-object v0, p0, Lcom/nineoldandroids/animation/Animator;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 240
    return-void
.end method

.method public b()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/nineoldandroids/animation/Animator;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public b(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V
    .registers 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/nineoldandroids/animation/Animator;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 165
    :cond_4
    :goto_4
    return-void

    .line 161
    :cond_5
    iget-object v0, p0, Lcom/nineoldandroids/animation/Animator;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 162
    iget-object v0, p0, Lcom/nineoldandroids/animation/Animator;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nineoldandroids/animation/Animator;->a:Ljava/util/ArrayList;

    goto :goto_4
.end method

.method public c()Lcom/nineoldandroids/animation/Animator;
    .registers 7

    .prologue
    .line 192
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/Animator;

    .line 193
    iget-object v1, p0, Lcom/nineoldandroids/animation/Animator;->a:Ljava/util/ArrayList;

    if-eqz v1, :cond_2d

    .line 194
    iget-object v2, p0, Lcom/nineoldandroids/animation/Animator;->a:Ljava/util/ArrayList;

    .line 195
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/nineoldandroids/animation/Animator;->a:Ljava/util/ArrayList;

    .line 196
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 197
    const/4 v1, 0x0

    :goto_18
    if-ge v1, v3, :cond_2d

    .line 198
    iget-object v4, v0, Lcom/nineoldandroids/animation/Animator;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_23} :catch_26

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 202
    :catch_26
    move-exception v0

    .line 203
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 201
    :cond_2d
    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/Animator;->c()Lcom/nineoldandroids/animation/Animator;

    move-result-object v0

    return-object v0
.end method
