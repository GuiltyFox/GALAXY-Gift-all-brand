.class Landroid/support/v4/app/ActivityCompat$SharedElementCallback23Impl$1;
.super Ljava/lang/Object;
.source "ActivityCompat.java"

# interfaces
.implements Landroid/support/v4/app/SharedElementCallback$OnSharedElementsReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/ActivityCompat$SharedElementCallback23Impl;->a(Ljava/util/List;Ljava/util/List;Landroid/support/v4/app/ActivityCompatApi23$OnSharedElementsReadyListenerBridge;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/ActivityCompatApi23$OnSharedElementsReadyListenerBridge;

.field final synthetic b:Landroid/support/v4/app/ActivityCompat$SharedElementCallback23Impl;


# direct methods
.method constructor <init>(Landroid/support/v4/app/ActivityCompat$SharedElementCallback23Impl;Landroid/support/v4/app/ActivityCompatApi23$OnSharedElementsReadyListenerBridge;)V
    .registers 3

    .prologue
    .line 541
    iput-object p1, p0, Landroid/support/v4/app/ActivityCompat$SharedElementCallback23Impl$1;->b:Landroid/support/v4/app/ActivityCompat$SharedElementCallback23Impl;

    iput-object p2, p0, Landroid/support/v4/app/ActivityCompat$SharedElementCallback23Impl$1;->a:Landroid/support/v4/app/ActivityCompatApi23$OnSharedElementsReadyListenerBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 544
    iget-object v0, p0, Landroid/support/v4/app/ActivityCompat$SharedElementCallback23Impl$1;->a:Landroid/support/v4/app/ActivityCompatApi23$OnSharedElementsReadyListenerBridge;

    invoke-interface {v0}, Landroid/support/v4/app/ActivityCompatApi23$OnSharedElementsReadyListenerBridge;->a()V

    .line 545
    return-void
.end method
