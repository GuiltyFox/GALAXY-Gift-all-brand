.class Landroid/support/v7/app/AppCompatDelegateImplV23$AppCompatWindowCallbackV23;
.super Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;
.source "AppCompatDelegateImplV23.java"


# instance fields
.field final synthetic d:Landroid/support/v7/app/AppCompatDelegateImplV23;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV23;Landroid/view/Window$Callback;)V
    .registers 3

    .prologue
    .line 54
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV23$AppCompatWindowCallbackV23;->d:Landroid/support/v7/app/AppCompatDelegateImplV23;

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV14;Landroid/view/Window$Callback;)V

    .line 56
    return-void
.end method


# virtual methods
.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3

    .prologue
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 4

    .prologue
    .line 60
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV23$AppCompatWindowCallbackV23;->d:Landroid/support/v7/app/AppCompatDelegateImplV23;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImplV23;->o()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 61
    packed-switch p2, :pswitch_data_16

    .line 68
    :cond_b
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    :goto_f
    return-object v0

    .line 64
    :pswitch_10
    invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV23$AppCompatWindowCallbackV23;->a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    goto :goto_f

    .line 61
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_10
    .end packed-switch
.end method
