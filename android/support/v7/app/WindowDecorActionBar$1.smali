.class Landroid/support/v7/app/WindowDecorActionBar$1;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "WindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/WindowDecorActionBar;
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/WindowDecorActionBar;


# direct methods
.method constructor <init>(Landroid/support/v7/app/WindowDecorActionBar;)V
    .registers 2

    .prologue
    .line 134
    iput-object p1, p0, Landroid/support/v7/app/WindowDecorActionBar$1;->a:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 137
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$1;->a:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v0}, Landroid/support/v7/app/WindowDecorActionBar;->a(Landroid/support/v7/app/WindowDecorActionBar;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$1;->a:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v0}, Landroid/support/v7/app/WindowDecorActionBar;->b(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 138
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$1;->a:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v0}, Landroid/support/v7/app/WindowDecorActionBar;->b(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;F)V

    .line 139
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$1;->a:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v0}, Landroid/support/v7/app/WindowDecorActionBar;->c(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/support/v7/widget/ActionBarContainer;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;F)V

    .line 141
    :cond_23
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$1;->a:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v0}, Landroid/support/v7/app/WindowDecorActionBar;->c(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/support/v7/widget/ActionBarContainer;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContainer;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$1;->a:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v0}, Landroid/support/v7/app/WindowDecorActionBar;->c(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/support/v7/widget/ActionBarContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 143
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$1;->a:Landroid/support/v7/app/WindowDecorActionBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/app/WindowDecorActionBar;->a(Landroid/support/v7/app/WindowDecorActionBar;Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    .line 144
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$1;->a:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/WindowDecorActionBar;->j()V

    .line 145
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$1;->a:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v0}, Landroid/support/v7/app/WindowDecorActionBar;->d(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/support/v7/widget/ActionBarOverlayLayout;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 146
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$1;->a:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v0}, Landroid/support/v7/app/WindowDecorActionBar;->d(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/support/v7/widget/ActionBarOverlayLayout;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->v(Landroid/view/View;)V

    .line 148
    :cond_54
    return-void
.end method
