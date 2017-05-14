.class Landroid/support/v7/widget/ForwardingListener$TriggerLongPress;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ForwardingListener;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/ForwardingListener;)V
    .registers 2

    .prologue
    .line 302
    iput-object p1, p0, Landroid/support/v7/widget/ForwardingListener$TriggerLongPress;->a:Landroid/support/v7/widget/ForwardingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/ForwardingListener;Landroid/support/v7/widget/ForwardingListener$1;)V
    .registers 3

    .prologue
    .line 302
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ForwardingListener$TriggerLongPress;-><init>(Landroid/support/v7/widget/ForwardingListener;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 305
    iget-object v0, p0, Landroid/support/v7/widget/ForwardingListener$TriggerLongPress;->a:Landroid/support/v7/widget/ForwardingListener;

    # invokes: Landroid/support/v7/widget/ForwardingListener;->onLongPress()V
    invoke-static {v0}, Landroid/support/v7/widget/ForwardingListener;->access$300(Landroid/support/v7/widget/ForwardingListener;)V

    .line 306
    return-void
.end method
