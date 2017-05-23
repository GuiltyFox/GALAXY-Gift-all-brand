.class Landroid/support/v7/widget/ForwardingListener$1;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/ForwardingListener;->addDetachListenerApi12(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ForwardingListener;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ForwardingListener;)V
    .registers 2

    .prologue
    .line 89
    iput-object p1, p0, Landroid/support/v7/widget/ForwardingListener$1;->a:Landroid/support/v7/widget/ForwardingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 91
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 95
    iget-object v0, p0, Landroid/support/v7/widget/ForwardingListener$1;->a:Landroid/support/v7/widget/ForwardingListener;

    # invokes: Landroid/support/v7/widget/ForwardingListener;->onDetachedFromWindow()V
    invoke-static {v0}, Landroid/support/v7/widget/ForwardingListener;->access$000(Landroid/support/v7/widget/ForwardingListener;)V

    .line 96
    return-void
.end method
