.class Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl$1;
.super Ljava/lang/Object;
.source "ActivityCompatApi23.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompatApi23$OnSharedElementsReadyListenerBridge;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl;->onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;

.field final synthetic b:Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl;


# direct methods
.method constructor <init>(Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
    .registers 3

    .prologue
    .line 124
    iput-object p1, p0, Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl$1;->b:Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl;

    iput-object p2, p0, Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl$1;->a:Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl$1;->a:Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;

    invoke-interface {v0}, Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;->onSharedElementsReady()V

    .line 128
    return-void
.end method
