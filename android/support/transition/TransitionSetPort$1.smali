.class Landroid/support/transition/TransitionSetPort$1;
.super Landroid/support/transition/TransitionPort$TransitionListenerAdapter;
.source "TransitionSetPort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/TransitionSetPort;->e()V
.end annotation


# instance fields
.field final synthetic a:Landroid/support/transition/TransitionPort;

.field final synthetic b:Landroid/support/transition/TransitionSetPort;


# direct methods
.method constructor <init>(Landroid/support/transition/TransitionSetPort;Landroid/support/transition/TransitionPort;)V
    .registers 3

    .prologue
    .line 195
    iput-object p1, p0, Landroid/support/transition/TransitionSetPort$1;->b:Landroid/support/transition/TransitionSetPort;

    iput-object p2, p0, Landroid/support/transition/TransitionSetPort$1;->a:Landroid/support/transition/TransitionPort;

    invoke-direct {p0}, Landroid/support/transition/TransitionPort$TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/transition/TransitionPort;)V
    .registers 3

    .prologue
    .line 198
    iget-object v0, p0, Landroid/support/transition/TransitionSetPort$1;->a:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0}, Landroid/support/transition/TransitionPort;->e()V

    .line 199
    invoke-virtual {p1, p0}, Landroid/support/transition/TransitionPort;->b(Landroid/support/transition/TransitionPort$TransitionListener;)Landroid/support/transition/TransitionPort;

    .line 200
    return-void
.end method
