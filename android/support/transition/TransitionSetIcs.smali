.class Landroid/support/transition/TransitionSetIcs;
.super Landroid/support/transition/TransitionIcs;
.source "TransitionSetIcs.java"

# interfaces
.implements Landroid/support/transition/TransitionSetImpl;


# instance fields
.field private c:Landroid/support/transition/TransitionSetPort;


# direct methods
.method public constructor <init>(Landroid/support/transition/TransitionInterface;)V
    .registers 3

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/transition/TransitionIcs;-><init>()V

    .line 24
    new-instance v0, Landroid/support/transition/TransitionSetPort;

    invoke-direct {v0}, Landroid/support/transition/TransitionSetPort;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionSetIcs;->c:Landroid/support/transition/TransitionSetPort;

    .line 25
    iget-object v0, p0, Landroid/support/transition/TransitionSetIcs;->c:Landroid/support/transition/TransitionSetPort;

    invoke-virtual {p0, p1, v0}, Landroid/support/transition/TransitionSetIcs;->a(Landroid/support/transition/TransitionInterface;Ljava/lang/Object;)V

    .line 26
    return-void
.end method


# virtual methods
.method public a(Landroid/support/transition/TransitionImpl;)Landroid/support/transition/TransitionSetIcs;
    .registers 4

    .prologue
    .line 41
    iget-object v0, p0, Landroid/support/transition/TransitionSetIcs;->c:Landroid/support/transition/TransitionSetPort;

    check-cast p1, Landroid/support/transition/TransitionIcs;

    iget-object v1, p1, Landroid/support/transition/TransitionIcs;->a:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, v1}, Landroid/support/transition/TransitionSetPort;->a(Landroid/support/transition/TransitionPort;)Landroid/support/transition/TransitionSetPort;

    .line 42
    return-object p0
.end method

.method public synthetic b(Landroid/support/transition/TransitionImpl;)Landroid/support/transition/TransitionSetImpl;
    .registers 3

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSetIcs;->a(Landroid/support/transition/TransitionImpl;)Landroid/support/transition/TransitionSetIcs;

    move-result-object v0

    return-object v0
.end method

.method public c(I)Landroid/support/transition/TransitionSetIcs;
    .registers 3

    .prologue
    .line 35
    iget-object v0, p0, Landroid/support/transition/TransitionSetIcs;->c:Landroid/support/transition/TransitionSetPort;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionSetPort;->c(I)Landroid/support/transition/TransitionSetPort;

    .line 36
    return-object p0
.end method

.method public synthetic d(I)Landroid/support/transition/TransitionSetImpl;
    .registers 3

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSetIcs;->c(I)Landroid/support/transition/TransitionSetIcs;

    move-result-object v0

    return-object v0
.end method
