.class Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV7.java"

# interfaces
.implements Landroid/support/v7/view/ActionMode$Callback;


# instance fields
.field final synthetic a:Landroid/support/v7/app/AppCompatDelegateImplV7;

.field private b:Landroid/support/v7/view/ActionMode$Callback;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV7;Landroid/support/v7/view/ActionMode$Callback;)V
    .registers 3

    .prologue
    .line 1737
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;->a:Landroid/support/v7/app/AppCompatDelegateImplV7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1738
    iput-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;->b:Landroid/support/v7/view/ActionMode$Callback;

    .line 1739
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/view/ActionMode;)V
    .registers 5

    .prologue
    .line 1754
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;->b:Landroid/support/v7/view/ActionMode$Callback;

    invoke-interface {v0, p1}, Landroid/support/v7/view/ActionMode$Callback;->a(Landroid/support/v7/view/ActionMode;)V

    .line 1755
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;->a:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->o:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1a

    .line 1756
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;->a:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;->a:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV7;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1759
    :cond_1a
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;->a:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v0, :cond_42

    .line 1760
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;->a:Landroid/support/v7/app/AppCompatDelegateImplV7;

    invoke-static {v0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->c(Landroid/support/v7/app/AppCompatDelegateImplV7;)V

    .line 1761
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;->a:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;->a:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->r(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->a(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->q:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 1762
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;->a:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->q:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    new-instance v1, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7$1;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7$1;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->a(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 1777
    :cond_42
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;->a:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->e:Landroid/support/v7/app/AppCompatCallback;

    if-eqz v0, :cond_53

    .line 1778
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;->a:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->e:Landroid/support/v7/app/AppCompatCallback;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;->a:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Landroid/support/v7/view/ActionMode;

    invoke-interface {v0, v1}, Landroid/support/v7/app/AppCompatCallback;->onSupportActionModeFinished(Landroid/support/v7/view/ActionMode;)V

    .line 1780
    :cond_53
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;->a:Landroid/support/v7/app/AppCompatDelegateImplV7;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Landroid/support/v7/view/ActionMode;

    .line 1781
    return-void
.end method

.method public a(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4

    .prologue
    .line 1742
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;->b:Landroid/support/v7/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/ActionMode$Callback;->a(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 4

    .prologue
    .line 1750
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;->b:Landroid/support/v7/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/ActionMode$Callback;->a(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4

    .prologue
    .line 1746
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;->b:Landroid/support/v7/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/ActionMode$Callback;->b(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
