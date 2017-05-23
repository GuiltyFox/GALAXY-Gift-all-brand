.class Landroid/support/transition/ChangeBoundsPort$1;
.super Landroid/support/transition/TransitionPort$TransitionListenerAdapter;
.source "ChangeBoundsPort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/ChangeBoundsPort;->a(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Landroid/support/transition/ChangeBoundsPort;


# direct methods
.method constructor <init>(Landroid/support/transition/ChangeBoundsPort;)V
    .registers 3

    .prologue
    .line 194
    iput-object p1, p0, Landroid/support/transition/ChangeBoundsPort$1;->b:Landroid/support/transition/ChangeBoundsPort;

    invoke-direct {p0}, Landroid/support/transition/TransitionPort$TransitionListenerAdapter;-><init>()V

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/transition/ChangeBoundsPort$1;->a:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/support/transition/TransitionPort;)V
    .registers 3

    .prologue
    .line 205
    iget-boolean v0, p0, Landroid/support/transition/ChangeBoundsPort$1;->a:Z

    if-nez v0, :cond_4

    .line 208
    :cond_4
    return-void
.end method

.method public b(Landroid/support/transition/TransitionPort;)V
    .registers 2

    .prologue
    .line 213
    return-void
.end method

.method public c(Landroid/support/transition/TransitionPort;)V
    .registers 2

    .prologue
    .line 218
    return-void
.end method
