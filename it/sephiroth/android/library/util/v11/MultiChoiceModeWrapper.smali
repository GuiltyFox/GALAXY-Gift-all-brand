.class public Lit/sephiroth/android/library/util/v11/MultiChoiceModeWrapper;
.super Ljava/lang/Object;
.source "MultiChoiceModeWrapper.java"

# interfaces
.implements Lit/sephiroth/android/library/util/v11/MultiChoiceModeListener;


# instance fields
.field private a:Lit/sephiroth/android/library/util/v11/MultiChoiceModeListener;

.field private b:Lit/sephiroth/android/library/widget/AbsHListView;


# virtual methods
.method public a(Landroid/view/ActionMode;IJZ)V
    .registers 13
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 66
    iget-object v1, p0, Lit/sephiroth/android/library/util/v11/MultiChoiceModeWrapper;->a:Lit/sephiroth/android/library/util/v11/MultiChoiceModeListener;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lit/sephiroth/android/library/util/v11/MultiChoiceModeListener;->a(Landroid/view/ActionMode;IJZ)V

    .line 69
    iget-object v0, p0, Lit/sephiroth/android/library/util/v11/MultiChoiceModeWrapper;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getCheckedItemCount()I

    move-result v0

    if-nez v0, :cond_14

    .line 70
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 72
    :cond_14
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lit/sephiroth/android/library/util/v11/MultiChoiceModeWrapper;->a:Lit/sephiroth/android/library/util/v11/MultiChoiceModeListener;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lit/sephiroth/android/library/util/v11/MultiChoiceModeWrapper;->a:Lit/sephiroth/android/library/util/v11/MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Lit/sephiroth/android/library/util/v11/MultiChoiceModeListener;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 30
    iget-object v1, p0, Lit/sephiroth/android/library/util/v11/MultiChoiceModeWrapper;->a:Lit/sephiroth/android/library/util/v11/MultiChoiceModeListener;

    invoke-interface {v1, p1, p2}, Lit/sephiroth/android/library/util/v11/MultiChoiceModeListener;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 31
    iget-object v1, p0, Lit/sephiroth/android/library/util/v11/MultiChoiceModeWrapper;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v1, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setLongClickable(Z)V

    .line 32
    const/4 v0, 0x1

    .line 34
    :cond_f
    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 52
    iget-object v0, p0, Lit/sephiroth/android/library/util/v11/MultiChoiceModeWrapper;->a:Lit/sephiroth/android/library/util/v11/MultiChoiceModeListener;

    invoke-interface {v0, p1}, Lit/sephiroth/android/library/util/v11/MultiChoiceModeListener;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 53
    iget-object v0, p0, Lit/sephiroth/android/library/util/v11/MultiChoiceModeWrapper;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    const/4 v1, 0x0

    iput-object v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lit/sephiroth/android/library/util/v11/MultiChoiceModeWrapper;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->a()V

    .line 57
    iget-object v0, p0, Lit/sephiroth/android/library/util/v11/MultiChoiceModeWrapper;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    iput-boolean v2, v0, Lit/sephiroth/android/library/widget/AbsHListView;->aj:Z

    .line 58
    iget-object v0, p0, Lit/sephiroth/android/library/util/v11/MultiChoiceModeWrapper;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->y()V

    .line 59
    iget-object v0, p0, Lit/sephiroth/android/library/util/v11/MultiChoiceModeWrapper;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->requestLayout()V

    .line 60
    iget-object v0, p0, Lit/sephiroth/android/library/util/v11/MultiChoiceModeWrapper;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->setLongClickable(Z)V

    .line 61
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lit/sephiroth/android/library/util/v11/MultiChoiceModeWrapper;->a:Lit/sephiroth/android/library/util/v11/MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Lit/sephiroth/android/library/util/v11/MultiChoiceModeListener;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
