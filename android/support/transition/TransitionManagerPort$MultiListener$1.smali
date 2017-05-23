.class Landroid/support/transition/TransitionManagerPort$MultiListener$1;
.super Landroid/support/transition/TransitionPort$TransitionListenerAdapter;
.source "TransitionManagerPort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/TransitionManagerPort$MultiListener;->onPreDraw()Z
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/util/ArrayMap;

.field final synthetic b:Landroid/support/transition/TransitionManagerPort$MultiListener;


# direct methods
.method constructor <init>(Landroid/support/transition/TransitionManagerPort$MultiListener;Landroid/support/v4/util/ArrayMap;)V
    .registers 3

    .prologue
    .line 427
    iput-object p1, p0, Landroid/support/transition/TransitionManagerPort$MultiListener$1;->b:Landroid/support/transition/TransitionManagerPort$MultiListener;

    iput-object p2, p0, Landroid/support/transition/TransitionManagerPort$MultiListener$1;->a:Landroid/support/v4/util/ArrayMap;

    invoke-direct {p0}, Landroid/support/transition/TransitionPort$TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/transition/TransitionPort;)V
    .registers 4

    .prologue
    .line 430
    iget-object v0, p0, Landroid/support/transition/TransitionManagerPort$MultiListener$1;->a:Landroid/support/v4/util/ArrayMap;

    iget-object v1, p0, Landroid/support/transition/TransitionManagerPort$MultiListener$1;->b:Landroid/support/transition/TransitionManagerPort$MultiListener;

    iget-object v1, v1, Landroid/support/transition/TransitionManagerPort$MultiListener;->b:Landroid/view/ViewGroup;

    .line 431
    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 432
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 433
    return-void
.end method
