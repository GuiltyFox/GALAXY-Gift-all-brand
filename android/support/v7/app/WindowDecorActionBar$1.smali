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
    .line 138
    iput-object p1, p0, Landroid/support/v7/app/WindowDecorActionBar$1;->a:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 141
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$1;->a:Landroid/support/v7/app/WindowDecorActionBar;

    iget-boolean v0, v0, Landroid/support/v7/app/WindowDecorActionBar;->k:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$1;->a:Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v0, v0, Landroid/support/v7/app/WindowDecorActionBar;->f:Landroid/view/View;

    if-eqz v0, :cond_1b

    .line 142
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$1;->a:Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v0, v0, Landroid/support/v7/app/WindowDecorActionBar;->f:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;F)V

    .line 143
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$1;->a:Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v0, v0, Landroid/support/v7/app/WindowDecorActionBar;->c:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;F)V

    .line 145
    :cond_1b
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$1;->a:Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v0, v0, Landroid/support/v7/app/WindowDecorActionBar;->c:Landroid/support/v7/widget/ActionBarContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContainer;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$1;->a:Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v0, v0, Landroid/support/v7/app/WindowDecorActionBar;->c:Landroid/support/v7/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 147
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$1;->a:Landroid/support/v7/app/WindowDecorActionBar;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/app/WindowDecorActionBar;->n:Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    .line 148
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$1;->a:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/WindowDecorActionBar;->j()V

    .line 149
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$1;->a:Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v0, v0, Landroid/support/v7/app/WindowDecorActionBar;->b:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_43

    .line 150
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$1;->a:Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v0, v0, Landroid/support/v7/app/WindowDecorActionBar;->b:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->v(Landroid/view/View;)V

    .line 152
    :cond_43
    return-void
.end method
