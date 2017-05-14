.class public Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;
.super Landroid/support/v7/view/ActionMode;
.source "WindowDecorActionBar.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuBuilder$Callback;


# instance fields
.field final synthetic a:Landroid/support/v7/app/WindowDecorActionBar;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/support/v7/view/menu/MenuBuilder;

.field private d:Landroid/support/v7/view/ActionMode$Callback;

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/app/WindowDecorActionBar;Landroid/content/Context;Landroid/support/v7/view/ActionMode$Callback;)V
    .registers 6

    .prologue
    .line 966
    iput-object p1, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->a:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-direct {p0}, Landroid/support/v7/view/ActionMode;-><init>()V

    .line 967
    iput-object p2, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->b:Landroid/content/Context;

    .line 968
    iput-object p3, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->d:Landroid/support/v7/view/ActionMode$Callback;

    .line 969
    new-instance v0, Landroid/support/v7/view/menu/MenuBuilder;

    invoke-direct {v0, p2}, Landroid/support/v7/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 970
    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->setDefaultShowAsAction(I)Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->c:Landroid/support/v7/view/menu/MenuBuilder;

    .line 971
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->c:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/MenuBuilder;->setCallback(Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 972
    return-void
.end method


# virtual methods
.method public a()Landroid/view/MenuInflater;
    .registers 3

    .prologue
    .line 976
    new-instance v0, Landroid/support/v7/view/SupportMenuInflater;

    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public a(I)V
    .registers 3

    .prologue
    .line 1059
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->a:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v0}, Landroid/support/v7/app/WindowDecorActionBar;->i(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->b(Ljava/lang/CharSequence;)V

    .line 1060
    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1043
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->a:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v0}, Landroid/support/v7/app/WindowDecorActionBar;->g(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/support/v7/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    .line 1044
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->e:Ljava/lang/ref/WeakReference;

    .line 1045
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .registers 3

    .prologue
    .line 1049
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->a:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v0}, Landroid/support/v7/app/WindowDecorActionBar;->g(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/support/v7/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1050
    return-void
.end method

.method public a(Z)V
    .registers 3

    .prologue
    .line 1079
    invoke-super {p0, p1}, Landroid/support/v7/view/ActionMode;->a(Z)V

    .line 1080
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->a:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v0}, Landroid/support/v7/app/WindowDecorActionBar;->g(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/support/v7/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->setTitleOptional(Z)V

    .line 1081
    return-void
.end method

.method public b()Landroid/view/Menu;
    .registers 2

    .prologue
    .line 981
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->c:Landroid/support/v7/view/menu/MenuBuilder;

    return-object v0
.end method

.method public b(I)V
    .registers 3

    .prologue
    .line 1064
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->a:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v0}, Landroid/support/v7/app/WindowDecorActionBar;->i(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->a(Ljava/lang/CharSequence;)V

    .line 1065
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .registers 3

    .prologue
    .line 1054
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->a:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v0}, Landroid/support/v7/app/WindowDecorActionBar;->g(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/support/v7/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 1055
    return-void
.end method

.method public c()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 986
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->a:Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v0, v0, Landroid/support/v7/app/WindowDecorActionBar;->a:Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;

    if-eq v0, p0, :cond_9

    .line 1013
    :goto_8
    return-void

    .line 995
    :cond_9
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->a:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v0}, Landroid/support/v7/app/WindowDecorActionBar;->e(Landroid/support/v7/app/WindowDecorActionBar;)Z

    move-result v0

    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->a:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v1}, Landroid/support/v7/app/WindowDecorActionBar;->f(Landroid/support/v7/app/WindowDecorActionBar;)Z

    move-result v1

    invoke-static {v0, v1, v2}, Landroid/support/v7/app/WindowDecorActionBar;->a(ZZZ)Z

    move-result v0

    if-nez v0, :cond_56

    .line 998
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->a:Landroid/support/v7/app/WindowDecorActionBar;

    iput-object p0, v0, Landroid/support/v7/app/WindowDecorActionBar;->b:Landroid/support/v7/view/ActionMode;

    .line 999
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->a:Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->d:Landroid/support/v7/view/ActionMode$Callback;

    iput-object v1, v0, Landroid/support/v7/app/WindowDecorActionBar;->c:Landroid/support/v7/view/ActionMode$Callback;

    .line 1003
    :goto_25
    iput-object v3, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->d:Landroid/support/v7/view/ActionMode$Callback;

    .line 1004
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->a:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-virtual {v0, v2}, Landroid/support/v7/app/WindowDecorActionBar;->i(Z)V

    .line 1007
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->a:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v0}, Landroid/support/v7/app/WindowDecorActionBar;->g(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/support/v7/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->closeMode()V

    .line 1008
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->a:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v0}, Landroid/support/v7/app/WindowDecorActionBar;->h(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/support/v7/widget/DecorToolbar;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 1010
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->a:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v0}, Landroid/support/v7/app/WindowDecorActionBar;->d(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/support/v7/widget/ActionBarOverlayLayout;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->a:Landroid/support/v7/app/WindowDecorActionBar;

    iget-boolean v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->d:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 1012
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->a:Landroid/support/v7/app/WindowDecorActionBar;

    iput-object v3, v0, Landroid/support/v7/app/WindowDecorActionBar;->a:Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;

    goto :goto_8

    .line 1001
    :cond_56
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->d:Landroid/support/v7/view/ActionMode$Callback;

    invoke-interface {v0, p0}, Landroid/support/v7/view/ActionMode$Callback;->a(Landroid/support/v7/view/ActionMode;)V

    goto :goto_25
.end method

.method public d()V
    .registers 3

    .prologue
    .line 1017
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->a:Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v0, v0, Landroid/support/v7/app/WindowDecorActionBar;->a:Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;

    if-eq v0, p0, :cond_7

    .line 1030
    :goto_6
    return-void

    .line 1024
    :cond_7
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->c:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1026
    :try_start_c
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->d:Landroid/support/v7/view/ActionMode$Callback;

    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->c:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroid/support/v7/view/ActionMode$Callback;->b(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_19

    .line 1028
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->c:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto :goto_6

    :catchall_19
    move-exception v0

    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->c:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public e()Z
    .registers 3

    .prologue
    .line 1033
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->c:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1035
    :try_start_5
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->d:Landroid/support/v7/view/ActionMode$Callback;

    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->c:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroid/support/v7/view/ActionMode$Callback;->a(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_13

    move-result v0

    .line 1037
    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->c:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    return v0

    :catchall_13
    move-exception v0

    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->c:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public f()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1069
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->a:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v0}, Landroid/support/v7/app/WindowDecorActionBar;->g(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/support/v7/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1074
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->a:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v0}, Landroid/support/v7/app/WindowDecorActionBar;->g(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/support/v7/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .registers 2

    .prologue
    .line 1085
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->a:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v0}, Landroid/support/v7/app/WindowDecorActionBar;->g(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/support/v7/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->isTitleOptional()Z

    move-result v0

    return v0
.end method

.method public i()Landroid/view/View;
    .registers 2

    .prologue
    .line 1090
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public onMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 4

    .prologue
    .line 1094
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->d:Landroid/support/v7/view/ActionMode$Callback;

    if-eqz v0, :cond_b

    .line 1095
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->d:Landroid/support/v7/view/ActionMode$Callback;

    invoke-interface {v0, p0, p2}, Landroid/support/v7/view/ActionMode$Callback;->a(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    .line 1097
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onMenuModeChange(Landroid/support/v7/view/menu/MenuBuilder;)V
    .registers 3

    .prologue
    .line 1121
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->d:Landroid/support/v7/view/ActionMode$Callback;

    if-nez v0, :cond_5

    .line 1126
    :goto_4
    return-void

    .line 1124
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->d()V

    .line 1125
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->a:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v0}, Landroid/support/v7/app/WindowDecorActionBar;->g(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/support/v7/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->showOverflowMenu()Z

    goto :goto_4
.end method
