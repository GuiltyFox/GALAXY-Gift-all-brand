.class public Lcom/handmark/pulltorefresh/library/internal/LoadingLayoutProxy;
.super Ljava/lang/Object;
.source "LoadingLayoutProxy.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/internal/ILoadingLayout;


# instance fields
.field private final mLoadingLayouts:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayoutProxy;->mLoadingLayouts:Ljava/util/HashSet;

    .line 14
    return-void
.end method


# virtual methods
.method public addLayout(Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;)V
    .registers 3
    .param p1, "layout"    # Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    .prologue
    .line 26
    if-eqz p1, :cond_7

    .line 27
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayoutProxy;->mLoadingLayouts:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_7
    return-void
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 33
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayoutProxy;->mLoadingLayouts:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    .line 34
    .local v0, "layout":Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    invoke-virtual {v0, p1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setLastUpdatedLabel(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 36
    .end local v0    # "layout":Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    :cond_16
    return-void
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 40
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayoutProxy;->mLoadingLayouts:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    .line 41
    .local v0, "layout":Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    invoke-virtual {v0, p1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 43
    .end local v0    # "layout":Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    :cond_16
    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 54
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayoutProxy;->mLoadingLayouts:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    .line 55
    .local v0, "layout":Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    invoke-virtual {v0, p1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setPullLabel(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 57
    .end local v0    # "layout":Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    :cond_16
    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "refreshingLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 47
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayoutProxy;->mLoadingLayouts:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    .line 48
    .local v0, "layout":Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    invoke-virtual {v0, p1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setRefreshingLabel(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 50
    .end local v0    # "layout":Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    :cond_16
    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 61
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayoutProxy;->mLoadingLayouts:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    .line 62
    .local v0, "layout":Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    invoke-virtual {v0, p1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setReleaseLabel(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 64
    .end local v0    # "layout":Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    :cond_16
    return-void
.end method

.method public setTextTypeface(Landroid/graphics/Typeface;)V
    .registers 5
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 67
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayoutProxy;->mLoadingLayouts:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    .line 68
    .local v0, "layout":Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    invoke-virtual {v0, p1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setTextTypeface(Landroid/graphics/Typeface;)V

    goto :goto_6

    .line 70
    .end local v0    # "layout":Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    :cond_16
    return-void
.end method
