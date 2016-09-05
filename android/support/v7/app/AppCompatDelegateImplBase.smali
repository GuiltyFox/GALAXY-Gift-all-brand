.class abstract Landroid/support/v7/app/AppCompatDelegateImplBase;
.super Landroid/support/v7/app/AppCompatDelegate;
.source "AppCompatDelegateImplBase.java"


# instance fields
.field final a:Landroid/content/Context;

.field final b:Landroid/view/Window;

.field final c:Landroid/view/Window$Callback;

.field final d:Landroid/view/Window$Callback;

.field final e:Landroid/support/v7/app/AppCompatCallback;

.field f:Landroid/support/v7/app/ActionBar;

.field g:Landroid/view/MenuInflater;

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field l:Z

.field private m:Ljava/lang/CharSequence;

.field private n:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V
    .registers 6

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegate;-><init>()V

    .line 64
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->a:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->b:Landroid/view/Window;

    .line 66
    iput-object p3, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->e:Landroid/support/v7/app/AppCompatCallback;

    .line 68
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->c:Landroid/view/Window$Callback;

    .line 69
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;

    if-eqz v0, :cond_20

    .line 70
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "AppCompat has already installed itself into the Window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_20
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->c:Landroid/view/Window$Callback;

    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplBase;->a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->d:Landroid/view/Window$Callback;

    .line 75
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->b:Landroid/view/Window;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->d:Landroid/view/Window$Callback;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 76
    return-void
.end method


# virtual methods
.method public a()Landroid/support/v7/app/ActionBar;
    .registers 2

    .prologue
    .line 88
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplBase;->k()V

    .line 89
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->f:Landroid/support/v7/app/ActionBar;

    return-object v0
.end method

.method abstract a(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
.end method

.method a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .registers 3

    .prologue
    .line 81
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;-><init>(Landroid/support/v7/app/AppCompatDelegateImplBase;Landroid/view/Window$Callback;)V

    return-object v0
.end method

.method abstract a(ILandroid/view/Menu;)V
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .registers 2

    .prologue
    .line 214
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->m:Ljava/lang/CharSequence;

    .line 215
    invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplBase;->b(Ljava/lang/CharSequence;)V

    .line 216
    return-void
.end method

.method abstract a(ILandroid/view/KeyEvent;)Z
.end method

.method abstract a(Landroid/view/KeyEvent;)Z
.end method

.method public b()Landroid/view/MenuInflater;
    .registers 3

    .prologue
    .line 99
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->g:Landroid/view/MenuInflater;

    if-nez v0, :cond_18

    .line 100
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplBase;->k()V

    .line 101
    new-instance v1, Landroid/support/v7/view/SupportMenuInflater;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->f:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->f:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->d()Landroid/content/Context;

    move-result-object v0

    :goto_13
    invoke-direct {v1, v0}, Landroid/support/v7/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->g:Landroid/view/MenuInflater;

    .line 104
    :cond_18
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->g:Landroid/view/MenuInflater;

    return-object v0

    .line 101
    :cond_1b
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->a:Landroid/content/Context;

    goto :goto_13
.end method

.method abstract b(Ljava/lang/CharSequence;)V
.end method

.method abstract b(ILandroid/view/Menu;)Z
.end method

.method public c(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 221
    return-void
.end method

.method public f()V
    .registers 2

    .prologue
    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->n:Z

    .line 185
    return-void
.end method

.method public h()Z
    .registers 2

    .prologue
    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method abstract k()V
.end method

.method final l()Landroid/support/v7/app/ActionBar;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->f:Landroid/support/v7/app/ActionBar;

    return-object v0
.end method

.method final m()Landroid/content/Context;
    .registers 3

    .prologue
    .line 127
    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplBase;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 131
    if-eqz v1, :cond_b

    .line 132
    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->d()Landroid/content/Context;

    move-result-object v0

    .line 135
    :cond_b
    if-nez v0, :cond_f

    .line 136
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->a:Landroid/content/Context;

    .line 138
    :cond_f
    return-object v0
.end method

.method public n()Z
    .registers 2

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method final o()Z
    .registers 2

    .prologue
    .line 205
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->n:Z

    return v0
.end method

.method final p()Landroid/view/Window$Callback;
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    return-object v0
.end method

.method final q()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_f

    .line 228
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 231
    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->m:Ljava/lang/CharSequence;

    goto :goto_e
.end method
