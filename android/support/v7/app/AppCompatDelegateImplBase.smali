.class abstract Landroid/support/v7/app/AppCompatDelegateImplBase;
.super Landroid/support/v7/app/AppCompatDelegate;
.source "AppCompatDelegateImplBase.java"


# static fields
.field private static m:Z

.field private static final n:Z

.field private static final o:[I


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

.field private p:Ljava/lang/CharSequence;

.field private q:Z

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v0, v3, :cond_2b

    move v0, v1

    :goto_9
    sput-boolean v0, Landroid/support/v7/app/AppCompatDelegateImplBase;->n:Z

    .line 51
    sget-boolean v0, Landroid/support/v7/app/AppCompatDelegateImplBase;->n:Z

    if-eqz v0, :cond_21

    sget-boolean v0, Landroid/support/v7/app/AppCompatDelegateImplBase;->m:Z

    if-nez v0, :cond_21

    .line 53
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 55
    new-instance v3, Landroid/support/v7/app/AppCompatDelegateImplBase$1;

    invoke-direct {v3, v0}, Landroid/support/v7/app/AppCompatDelegateImplBase$1;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v3}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 80
    sput-boolean v1, Landroid/support/v7/app/AppCompatDelegateImplBase;->m:Z

    .line 84
    :cond_21
    new-array v0, v1, [I

    const v1, 0x1010054

    aput v1, v0, v2

    sput-object v0, Landroid/support/v7/app/AppCompatDelegateImplBase;->o:[I

    return-void

    :cond_2b
    move v0, v2

    .line 44
    goto :goto_9
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V
    .registers 7

    .prologue
    .line 111
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegate;-><init>()V

    .line 112
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->a:Landroid/content/Context;

    .line 113
    iput-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->b:Landroid/view/Window;

    .line 114
    iput-object p3, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->e:Landroid/support/v7/app/AppCompatCallback;

    .line 116
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->c:Landroid/view/Window$Callback;

    .line 117
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;

    if-eqz v0, :cond_20

    .line 118
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "AppCompat has already installed itself into the Window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_20
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->c:Landroid/view/Window$Callback;

    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplBase;->a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->d:Landroid/view/Window$Callback;

    .line 123
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->b:Landroid/view/Window;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->d:Landroid/view/Window$Callback;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 125
    const/4 v0, 0x0

    sget-object v1, Landroid/support/v7/app/AppCompatDelegateImplBase;->o:[I

    invoke-static {p1, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 127
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDrawableIfKnown(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 128
    if-eqz v1, :cond_42

    .line 129
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->b:Landroid/view/Window;

    invoke-virtual {v2, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    :cond_42
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 132
    return-void
.end method


# virtual methods
.method public a()Landroid/support/v7/app/ActionBar;
    .registers 2

    .prologue
    .line 144
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplBase;->l()V

    .line 145
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->f:Landroid/support/v7/app/ActionBar;

    return-object v0
.end method

.method abstract a(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
.end method

.method a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .registers 3

    .prologue
    .line 137
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;-><init>(Landroid/support/v7/app/AppCompatDelegateImplBase;Landroid/view/Window$Callback;)V

    return-object v0
.end method

.method abstract a(ILandroid/view/Menu;)V
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .registers 2

    .prologue
    .line 284
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->p:Ljava/lang/CharSequence;

    .line 285
    invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplBase;->b(Ljava/lang/CharSequence;)V

    .line 286
    return-void
.end method

.method abstract a(ILandroid/view/KeyEvent;)Z
.end method

.method abstract a(Landroid/view/KeyEvent;)Z
.end method

.method public b()Landroid/view/MenuInflater;
    .registers 3

    .prologue
    .line 155
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->g:Landroid/view/MenuInflater;

    if-nez v0, :cond_18

    .line 156
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplBase;->l()V

    .line 157
    new-instance v1, Landroid/support/v7/view/SupportMenuInflater;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->f:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->f:Landroid/support/v7/app/ActionBar;

    .line 158
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->d()Landroid/content/Context;

    move-result-object v0

    :goto_13
    invoke-direct {v1, v0}, Landroid/support/v7/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->g:Landroid/view/MenuInflater;

    .line 160
    :cond_18
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->g:Landroid/view/MenuInflater;

    return-object v0

    .line 158
    :cond_1b
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->a:Landroid/content/Context;

    goto :goto_13
.end method

.method abstract b(Ljava/lang/CharSequence;)V
.end method

.method abstract b(ILandroid/view/Menu;)Z
.end method

.method public c()V
    .registers 2

    .prologue
    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->q:Z

    .line 241
    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 291
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->q:Z

    .line 246
    return-void
.end method

.method public g()V
    .registers 2

    .prologue
    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->r:Z

    .line 251
    return-void
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method abstract l()V
.end method

.method final m()Landroid/support/v7/app/ActionBar;
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->f:Landroid/support/v7/app/ActionBar;

    return-object v0
.end method

.method final n()Landroid/content/Context;
    .registers 3

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 186
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplBase;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 187
    if-eqz v1, :cond_b

    .line 188
    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->d()Landroid/content/Context;

    move-result-object v0

    .line 191
    :cond_b
    if-nez v0, :cond_f

    .line 192
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->a:Landroid/content/Context;

    .line 194
    :cond_f
    return-object v0
.end method

.method public o()Z
    .registers 2

    .prologue
    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method final p()Z
    .registers 2

    .prologue
    .line 271
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->r:Z

    return v0
.end method

.method final q()Landroid/view/Window$Callback;
    .registers 2

    .prologue
    .line 279
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    return-object v0
.end method

.method final r()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 297
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_f

    .line 298
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 301
    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase;->p:Ljava/lang/CharSequence;

    goto :goto_e
.end method
