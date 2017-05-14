.class Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;
.super Landroid/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;
.source "AppCompatDelegateImplV14.java"


# instance fields
.field final synthetic c:Landroid/support/v7/app/AppCompatDelegateImplV14;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV14;Landroid/view/Window$Callback;)V
    .registers 3

    .prologue
    .line 256
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;->c:Landroid/support/v7/app/AppCompatDelegateImplV14;

    .line 257
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;-><init>(Landroid/support/v7/app/AppCompatDelegateImplBase;Landroid/view/Window$Callback;)V

    .line 258
    return-void
.end method


# virtual methods
.method final a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 4

    .prologue
    .line 276
    new-instance v0, Landroid/support/v7/view/SupportActionModeWrapper$CallbackWrapper;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;->c:Landroid/support/v7/app/AppCompatDelegateImplV14;

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV14;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/support/v7/view/SupportActionModeWrapper$CallbackWrapper;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 280
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;->c:Landroid/support/v7/app/AppCompatDelegateImplV14;

    .line 281
    invoke-virtual {v1, v0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->b(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v1

    .line 283
    if-eqz v1, :cond_16

    .line 285
    invoke-virtual {v0, v1}, Landroid/support/v7/view/SupportActionModeWrapper$CallbackWrapper;->b(Landroid/support/v7/view/ActionMode;)Landroid/view/ActionMode;

    move-result-object v0

    .line 287
    :goto_15
    return-object v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3

    .prologue
    .line 263
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;->c:Landroid/support/v7/app/AppCompatDelegateImplV14;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->o()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 264
    invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;->a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    .line 267
    :goto_c
    return-object v0

    :cond_d
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    goto :goto_c
.end method
