.class Landroid/support/transition/TransitionSetKitKat;
.super Landroid/support/transition/TransitionKitKat;
.source "TransitionSetKitKat.java"

# interfaces
.implements Landroid/support/transition/TransitionSetImpl;


# instance fields
.field private c:Landroid/transition/TransitionSet;


# direct methods
.method public constructor <init>(Landroid/support/transition/TransitionInterface;)V
    .registers 3

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/transition/TransitionKitKat;-><init>()V

    .line 24
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionSetKitKat;->c:Landroid/transition/TransitionSet;

    .line 25
    iget-object v0, p0, Landroid/support/transition/TransitionSetKitKat;->c:Landroid/transition/TransitionSet;

    invoke-virtual {p0, p1, v0}, Landroid/support/transition/TransitionSetKitKat;->a(Landroid/support/transition/TransitionInterface;Ljava/lang/Object;)V

    .line 26
    return-void
.end method


# virtual methods
.method public a(Landroid/support/transition/TransitionImpl;)Landroid/support/transition/TransitionSetKitKat;
    .registers 4

    .prologue
    .line 41
    iget-object v0, p0, Landroid/support/transition/TransitionSetKitKat;->c:Landroid/transition/TransitionSet;

    check-cast p1, Landroid/support/transition/TransitionKitKat;

    iget-object v1, p1, Landroid/support/transition/TransitionKitKat;->a:Landroid/transition/Transition;

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 42
    return-object p0
.end method

.method public synthetic b(Landroid/support/transition/TransitionImpl;)Landroid/support/transition/TransitionSetImpl;
    .registers 3

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSetKitKat;->a(Landroid/support/transition/TransitionImpl;)Landroid/support/transition/TransitionSetKitKat;

    move-result-object v0

    return-object v0
.end method

.method public c(I)Landroid/support/transition/TransitionSetKitKat;
    .registers 3

    .prologue
    .line 35
    iget-object v0, p0, Landroid/support/transition/TransitionSetKitKat;->c:Landroid/transition/TransitionSet;

    invoke-virtual {v0, p1}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 36
    return-object p0
.end method

.method public synthetic d(I)Landroid/support/transition/TransitionSetImpl;
    .registers 3

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSetKitKat;->c(I)Landroid/support/transition/TransitionSetKitKat;

    move-result-object v0

    return-object v0
.end method
