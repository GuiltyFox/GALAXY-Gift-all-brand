.class Landroid/support/transition/TransitionSetPort$TransitionSetListener;
.super Landroid/support/transition/TransitionPort$TransitionListenerAdapter;
.source "TransitionSetPort.java"


# instance fields
.field a:Landroid/support/transition/TransitionSetPort;


# direct methods
.method constructor <init>(Landroid/support/transition/TransitionSetPort;)V
    .registers 2

    .prologue
    .line 318
    invoke-direct {p0}, Landroid/support/transition/TransitionPort$TransitionListenerAdapter;-><init>()V

    .line 319
    iput-object p1, p0, Landroid/support/transition/TransitionSetPort$TransitionSetListener;->a:Landroid/support/transition/TransitionSetPort;

    .line 320
    return-void
.end method


# virtual methods
.method public a(Landroid/support/transition/TransitionPort;)V
    .registers 4

    .prologue
    .line 332
    iget-object v0, p0, Landroid/support/transition/TransitionSetPort$TransitionSetListener;->a:Landroid/support/transition/TransitionSetPort;

    iget v1, v0, Landroid/support/transition/TransitionSetPort;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/support/transition/TransitionSetPort;->b:I

    .line 333
    iget-object v0, p0, Landroid/support/transition/TransitionSetPort$TransitionSetListener;->a:Landroid/support/transition/TransitionSetPort;

    iget v0, v0, Landroid/support/transition/TransitionSetPort;->b:I

    if-nez v0, :cond_18

    .line 335
    iget-object v0, p0, Landroid/support/transition/TransitionSetPort$TransitionSetListener;->a:Landroid/support/transition/TransitionSetPort;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/transition/TransitionSetPort;->c:Z

    .line 336
    iget-object v0, p0, Landroid/support/transition/TransitionSetPort$TransitionSetListener;->a:Landroid/support/transition/TransitionSetPort;

    invoke-virtual {v0}, Landroid/support/transition/TransitionSetPort;->i()V

    .line 338
    :cond_18
    invoke-virtual {p1, p0}, Landroid/support/transition/TransitionPort;->b(Landroid/support/transition/TransitionPort$TransitionListener;)Landroid/support/transition/TransitionPort;

    .line 339
    return-void
.end method

.method public d(Landroid/support/transition/TransitionPort;)V
    .registers 4

    .prologue
    .line 324
    iget-object v0, p0, Landroid/support/transition/TransitionSetPort$TransitionSetListener;->a:Landroid/support/transition/TransitionSetPort;

    iget-boolean v0, v0, Landroid/support/transition/TransitionSetPort;->c:Z

    if-nez v0, :cond_10

    .line 325
    iget-object v0, p0, Landroid/support/transition/TransitionSetPort$TransitionSetListener;->a:Landroid/support/transition/TransitionSetPort;

    invoke-virtual {v0}, Landroid/support/transition/TransitionSetPort;->h()V

    .line 326
    iget-object v0, p0, Landroid/support/transition/TransitionSetPort$TransitionSetListener;->a:Landroid/support/transition/TransitionSetPort;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/transition/TransitionSetPort;->c:Z

    .line 328
    :cond_10
    return-void
.end method
